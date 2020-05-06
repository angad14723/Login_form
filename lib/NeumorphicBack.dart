import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class NeumorphicBack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      boxShape: NeumorphicBoxShape.circle(),
      padding: EdgeInsets.all(18),
      style: NeumorphicStyle(shape: NeumorphicShape.flat),
      child: Icon(
        Icons.arrow_back,
        color: NeumorphicTheme.isUsingDark(context)
            ? Colors.white70
            : Colors.black87,
      ),
    );
  }
}
