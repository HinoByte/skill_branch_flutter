import 'package:FlutterGalleryApp/res/res.dart';
import 'package:FlutterGalleryApp/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FullScreenImage extends StatelessWidget {
  FullScreenImage(
      {this.altDescription =
          'Beautiful girl in a yellow dress with a flower on her head in the summer in the forest',
      this.userName = 'Dianne Miles',
      this.name = 'Dianne Miles',
      this.photo = 'https://flutter.dev/assets/404/dash_nest-c64796b59b65042a2b40fae5764c13b7477a592db79eaf04c86298dcb75b78ea.png',
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
            padding: EdgeInsets.only(left: 10, right: 10, top: 11, bottom: 9),
            child: Text(
              altDescription,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: AppStyles.h3,
            ),
          ),
          _buildPhotoMeta(),
          _buildRowButtons(),
        ],
      ),
    );
  }

  Widget _buildPhotoMeta() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        children: <Widget>[
          UserAvatar('https://skill-branch.ru/img/speakers/Adechenko.jpg'),
          SizedBox(width: 6),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(name, style: AppStyles.h1Black),
              Text('@' + userName,
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

  Widget _buildRowButtons() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Center(
              child: LikeButton(likeCount: 10, isLiked: true),
            ),
          ),
          Expanded(
            child: _buildButton('Save'),
          ),
          Expanded(
            child: _buildButton('Visit'),
          ),
        ],

    );
  }

  Widget _buildButton(String text) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.dodgerBlue,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: AppColors.white,
                fontWeight: FontWeight.w500,
                fontSize: 14,
                fontFamily: 'Roboto',
              ),
            ),
          ),
        ),
        margin: EdgeInsets.all(10.0),
      ),
    );
  }
}
