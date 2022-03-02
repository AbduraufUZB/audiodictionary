import 'package:audiodictionary/core/constants/color_const.dart';
import 'package:flutter/material.dart';

class MyAppBar {
  static myAppBar(String title) {
    return AppBar(
      iconTheme: IconThemeData(color: ColorConst.kBlack),
      title: Text(
        title,
        style: TextStyle(color: ColorConst.kBlack),
      ),
      centerTitle: true,
      elevation: 0,
      backgroundColor: ColorConst.kNull,
    );
  }
}
