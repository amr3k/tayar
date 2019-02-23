import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class App {
  static Router router;
}

transitionDirection() {
  /*
  Determine what direction should transitions follow based on application's language
   */
  return TransitionType.inFromRight;
}

// Theme
ThemeData customTheme() {
  TextTheme _buildTextTheme(TextTheme base) {
    return base.copyWith(
      headline: base.headline.copyWith(
        fontFamily: 'Frutiger',
      ),
      title: base.title.copyWith(
        fontFamily: 'Frutiger',
      ),
      button: base.title.copyWith(
        fontFamily: 'Frutiger',
      ),
      subhead: base.title.copyWith(
        fontFamily: 'Frutiger',
        fontSize: 16.0,
      ),
    );
  }

  final ThemeData base = ThemeData.light();
  return base.copyWith(
    textTheme: _buildTextTheme(base.textTheme),
    primaryColor: Colors.deepOrange,
    accentColor: Colors.orangeAccent,
  );
}

cardShadow(context) {
  return BoxDecoration(
    color: Colors.white,
    boxShadow: [
      BoxShadow(
        color: Colors.orangeAccent,
        blurRadius: 1.0,
        spreadRadius: 0.0,
      ),
    ],
  );
}

class TriangleTag extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: adjust rotation based on application's language
    var path = Path();
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}