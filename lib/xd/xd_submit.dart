import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class XDSubmit extends StatelessWidget {
  XDSubmit({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromPins(
          Pin(start: 0.0, end: 0.0),
          Pin(start: 0.0, end: 0.0),
          child: Transform.rotate(
            angle: 0.0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: const Color(0xff20b2aa),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
