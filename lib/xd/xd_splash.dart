import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './xd_home.dart';
import 'package:adobe_xd/page_link.dart';

class XDSplash extends StatelessWidget {
  const XDSplash({
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
            Pin(start: 0.0, end: 0.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XDHome(),
                ),
              ],
              child: Stack(
                children: <Widget>[
                  Pinned.fromPins(
                    Pin(start: 0.0, end: 0.0),
                    Pin(start: 0.0, end: 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: const AssetImage(''),
                          fit: BoxFit.cover,
                        ),
                        border: Border.all(
                            width: 1.0, color: const Color(0xff707070)),
                      ),
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 211.0, middle: 0.4134),
                    Pin(size: 98.0, middle: 0.5657),
                    child: Text(
                      'BET',
                      style: TextStyle(
                        fontFamily: 'Hiragino Kaku Gothic ProN',
                        fontSize: 98,
                        color: const Color(0xffffffff),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(start: 51.0, end: 51.0),
                    Pin(size: 100.0, middle: 0.4167),
                    child: Text(
                      'LAST',
                      style: TextStyle(
                        fontFamily: 'Hiragino Kaku Gothic ProN',
                        fontSize: 100,
                        color: const Color(0xffffffff),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
