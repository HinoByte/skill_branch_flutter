import 'package:FlutterGalleryApp/res/res.dart';
import 'package:FlutterGalleryApp/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FullScreenImage extends StatelessWidget {
  FullScreenImage(
      {this.altDescription, this.userName, this.name, this.photo, Key key})
      : super(key: key);

  final String altDescription, userName, name, photo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.white,
          title: Text('Photo', style: TextStyle(color: AppColors.black)),
          centerTitle: true,
          leading: IconButton(
              icon: Icon(CupertinoIcons.back, color: AppColors.grayChateau),
              onPressed: () {}),
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Photo(photoLink: photo),
              Text(
                altDescription,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: AppStyles.h3.copyWith(color: AppColors.manatee),
              ),
            ]));
  }
}
