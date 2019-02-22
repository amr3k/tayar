import 'package:flutter/material.dart';
import 'package:tayar/widgets/search.dart';

Widget topBar() {
  return AppBar(
    leading: Builder(
        builder: (context) => IconButton(
              icon: Icon(Icons.dehaze),
              onPressed: () => Scaffold.of(context).openDrawer(),
            )),
    title: SearchFieldWidget(),
  );
}