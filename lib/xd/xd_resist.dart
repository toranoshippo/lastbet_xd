import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './xd_footer.dart';
import './xd_submit.dart';
import './xd_login.dart';
import 'package:adobe_xd/page_link.dart';

class XDResist extends StatelessWidget {
  XDResist({
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
                XDFooter(),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(start: 0.0, end: 83.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff000000),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 228.0, start: 40.0),
            Pin(size: 31.0, middle: 0.2177),
            child: Text(
              'メールアドレスの入力',
              style: TextStyle(
                fontFamily: 'SF Pro',
                fontSize: 20,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 145.0, start: 40.0),
            Pin(size: 31.0, start: 126.0),
            child: Text(
              '会員登録',
              style: TextStyle(
                fontFamily: 'SF Pro',
                fontSize: 22,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 120.0, end: 41.0),
            Pin(size: 46.0, middle: 0.3647),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'submit' (component)
                      XDSubmit(),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 11.0, end: 10.0),
                  child: Text(
                    '次へ',
                    style: TextStyle(
                      fontFamily: 'SF Pro',
                      fontSize: 18,
                      color: const Color(0xffffffff),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 41.0, end: 40.0),
            Pin(size: 43.0, middle: 0.5268),
            child:
                // Adobe XD layer: 'Google' (group)
                Stack(
              children: <Widget>[
                Container(),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 133.0, middle: 0.5019),
            Pin(size: 46.0, middle: 0.4298),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff000000),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 40.0, end: 40.0),
            Pin(size: 15.0, middle: 0.4331),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XDLogin(),
                ),
              ],
              child: Text(
                'パスワードを忘れた方',
                style: TextStyle(
                  fontFamily: 'SF Pro',
                  fontSize: 13,
                  color: const Color(0xff20b2aa),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 40.0, end: 40.0),
            Pin(size: 13.0, middle: 0.4801),
            child: Text(
              'または',
              style: TextStyle(
                fontFamily: 'SF Pro',
                fontSize: 11,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
