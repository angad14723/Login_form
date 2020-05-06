

import 'package:flutter/material.dart';

@immutable
class ColorSelector extends StatelessWidget {
  final Color color;
  final ValueChanged<Color> onColorChanged;
  final double height;
  final double width;

  const ColorSelector({this.height = 40, this.width = 40, this.color, this.onColorChanged});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        _changeColor(context);
      },
      child: Container(
        height: this.height,
        width: this.width,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: this.color,
            border: Border.all(
              color: Colors.grey,
              width: 1,
            )
        ),
      ),
    );
  }

  void _changeColor(BuildContext context) {
    showDialog(
      context: context,
      child: AlertDialog(
        title: const Text('Pick a color!'),
        content: SingleChildScrollView(
        ),
        actions: <Widget>[
          FlatButton(
            child: const Text('Close'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}