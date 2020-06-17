import 'package:flutter/material.dart';

class SquareButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  final Color color;
  final double size;

  SquareButton({
    Key key,
    @required this.text,
    this.size = 100,
    this.color,
    this.onPressed,
  })  : assert(text != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child: RaisedButton(
        color: color ?? Colors.blue[900],
        child: Text(text, style: TextStyle(color: Colors.white)),
        onPressed: onPressed ?? () {},
      ),
    );
  }
}
