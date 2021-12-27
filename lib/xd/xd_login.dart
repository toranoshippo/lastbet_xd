import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'xd_footer.dart';
import 'xd.dart';
import './xd_resist.dart';
import 'package:adobe_xd/page_link.dart';

class XDLogin extends StatelessWidget {
  const XDLogin({
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
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(start: 0.0, end: 83.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'box' (shape)
                      Container(
                    decoration: const BoxDecoration(
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 40.0, end: 40.0),
            Pin(size: 43.0, middle: 0.2834),
            child: const XD(),
          ),
          Pinned.fromPins(
            Pin(size: 175.0, start: 40.0),
            Pin(size: 25.0, start: 104.0),
            child:
                // Adobe XD layer: 'login' (text)
            const Text(
              'ログイン',
              style: TextStyle(
                fontFamily: 'SF Pro',
                fontSize: 25,
                color: Color(0xffffffff),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 144.0, middle: 0.4878),
            Pin(size: 46.0, middle: 0.4348),
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xff000000),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 40.0, end: 40.0),
            Pin(size: 15.0, middle: 0.4415),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XDResist(),
                ),
              ],
              child: const Text(
                '会員登録がまだの方',
                style: TextStyle(
                  fontFamily: 'SF Pro',
                  fontSize: 13,
                  color: Color(0xff20b2aa),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 40.0, end: 40.0),
            Pin(size: 13.0, middle: 0.4826),
            child: const Text(
              'または',
              style: TextStyle(
                fontFamily: 'SF Pro',
                fontSize: 11,
                color: Color(0xffffffff),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
