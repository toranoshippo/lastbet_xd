import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './xd_home.dart';
import 'package:adobe_xd/page_link.dart';
import './xd_login.dart';

class XDFooter extends StatelessWidget {
  const XDFooter({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromPins(
          Pin(start: 0.0, end: 0.0),
          Pin(start: 0.0, end: 0.0),
          child:
              // Adobe XD layer: 'footer-box' (group)
              Stack(
            children: <Widget>[
              Pinned.fromPins(
                Pin(start: 0.0, end: 0.0),
                Pin(start: 0.0, end: 0.0),
                child:
                    // Adobe XD layer: 'box28' (shape)
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
          Pin(start: 18.0, end: 22.5),
          Pin(size: 21.0, middle: 0.3468),
          child:
              // Adobe XD layer: 'footer-menu' (group)
              Stack(
            children: <Widget>[
              Pinned.fromPins(
                Pin(size: 88.0, middle: 0.3403),
                Pin(start: 0.0, end: 0.0),
                child:
                    // Adobe XD layer: 'Detail' (text)
                const Text(
                  'Detail',
                  style: TextStyle(
                    fontFamily: 'SF Pro',
                    fontSize: 18,
                    color: Color(0xff20b2aa),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Pinned.fromPins(
                Pin(size: 89.0, start: 0.0),
                Pin(start: 0.0, end: 0.0),
                child:
                    // Adobe XD layer: 'Chart' (text)
                    PageLink(
                  links: [
                    PageLinkInfo(
                      transition: LinkTransition.Fade,
                      ease: Curves.easeOut,
                      duration: 0.3,
                      pageBuilder: () => XDHome(),
                    ),
                  ],
                  child: const Text(
                    'Chart',
                    style: TextStyle(
                      fontFamily: 'SF Pro',
                      fontSize: 18,
                      color: Color(0xff20b2aa),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Pinned.fromPins(
                Pin(size: 88.0, middle: 0.6769),
                Pin(start: 0.0, end: 0.0),
                child:
                    // Adobe XD layer: 'Note' (text)
                const Text(
                  'Note',
                  style: TextStyle(
                    fontFamily: 'SF Pro',
                    fontSize: 18,
                    color: Color(0xff20b2aa),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Pinned.fromPins(
                Pin(size: 84.5, end: 0.0),
                Pin(start: 0.0, end: 0.0),
                child:
                    // Adobe XD layer: 'Home' (text)
                    PageLink(
                  links: [
                    PageLinkInfo(
                      transition: LinkTransition.Fade,
                      ease: Curves.easeOut,
                      duration: 0.3,
                      pageBuilder: () => XDLogin(),
                    ),
                  ],
                  child: const Text(
                    'Home',
                    style: TextStyle(
                      fontFamily: 'SF Pro',
                      fontSize: 18,
                      color: Color(0xff20b2aa),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
