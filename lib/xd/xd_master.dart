import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'xd_footer.dart';

class XDMaster extends StatelessWidget {
  const XDMaster({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 83.0, end: 0.0),
            child:
                // Adobe XD layer: 'footer' (component)
            const XDFooter(),
          ),
        ],
      ),
    );
  }
}
