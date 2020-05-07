import 'package:FlutterGalleryApp/res/res.dart';
import 'package:FlutterGalleryApp/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FullScreenImage extends StatelessWidget {
  FullScreenImage(
      {this.altDescription = '',
      this.userName = '',
      this.name = '',
      this.photo = '',
      Key key})
      : super(key: key);

  final String altDescription, userName, name, photo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildAppBar(context),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Photo(photoLink: photo),
              Padding(
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 11, bottom: 9),
                child: Text(
                  altDescription,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: AppStyles.h3,
                ),
              ),
              _buildPhotoMeta(),
            ]));
  }

  Widget _buildPhotoMeta() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          UserAvatar('https://skill-branch.ru/img/speakers/Adechenko.jpg'),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(name, style: AppStyles.h1Black),
              Text(userName,
                  style: AppStyles.h5Black.copyWith(color: AppColors.manatee)),
            ],
          ),
        ],
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.white,
      title: Text('Photo', style: TextStyle(color: AppColors.black)),
      centerTitle: true,
      leading: IconButton(
          icon: Icon(CupertinoIcons.back, color: AppColors.grayChateau),
          onPressed: () => Navigator.pop(context)),
    );
  }
}
