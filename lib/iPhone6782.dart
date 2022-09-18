import 'package:flutter/material.dart';
import './iPhone6781.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class iPhone6782 extends StatelessWidget {
  iPhone6782({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(66.0, 31.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => iPhone6781(),
                ),
              ],
              child: Text(
                'Sign in ',
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 20,
                  color: const Color(0xff707070),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(210.0, 31.0),
            child: Text(
              'Sign up',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 20,
                color: const Color(0xff707070),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(196.0, 70.0),
            child: Container(
              width: 110.0,
              height: 5.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26.0),
                color: const Color(0xabffa100),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(84.0, 233.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                ),
              ],
              child: Container(
                width: 208.0,
                height: 51.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(26.0),
                  color: const Color(0xffffffff),
                  border:
                      Border.all(width: 1.0, color: const Color(0xff707070)),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(84.0, 328.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                ),
              ],
              child: Container(
                width: 208.0,
                height: 51.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(26.0),
                  color: const Color(0xffffffff),
                  border:
                      Border.all(width: 1.0, color: const Color(0xff2676e1)),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(134.0, 245.0),
            child: Text(
              'Create Account',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 17,
                color: const Color(0xff707070),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(110.0, 343.0),
            child: SvgPicture.string(
              _svg_xujwri,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(154.0, 341.0),
            child: Text(
              'Facebook',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 17,
                color: const Color(0xff2676e1),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(177.0, 299.0),
            child: SizedBox(
              width: 22.0,
              height: 117.0,
              child: SingleChildScrollView(
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 20,
                  runSpacing: 73,
                  children: [{}, {}].map((map) {
                    return SizedBox(
                      width: 21.0,
                      height: 20.0,
                      child: Stack(
                        children: <Widget>[
                          Text(
                            'OR',
                            style: TextStyle(
                              fontFamily: 'Segoe UI',
                              fontSize: 15,
                              color: const Color(0xff707070),
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(52.0, 121.0),
            child: Text(
              'Choose what use\ncontinue',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 30,
                color: const Color(0xff707070),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(84.0, 428.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                ),
              ],
              child: Container(
                width: 208.0,
                height: 51.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(26.0),
                  color: const Color(0xffffffff),
                  border:
                      Border.all(width: 1.0, color: const Color(0xff707070)),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(98.0, 431.0),
            child:
                // Adobe XD layer: 'Google' (group)
                SizedBox(
              width: 45.0,
              height: 45.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 45.0, 45.0),
                    size: Size(45.0, 45.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: SvgPicture.string(
                      _svg_rmkk4b,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(13.3, 12.6, 16.2, 8.3),
                    size: Size(45.0, 45.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_ev3sud,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(22.1, 20.4, 10.0, 9.8),
                    size: Size(45.0, 45.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_r4722z,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(12.7, 17.8, 4.5, 9.3),
                    size: Size(45.0, 45.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_iolk3o,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(13.3, 24.1, 16.2, 8.3),
                    size: Size(45.0, 45.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_6zcxny,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(159.0, 443.0),
            child: Text(
              'Google',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 17,
                color: const Color(0xfffa1f1f),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_xujwri =
    '<svg viewBox="110.0 343.0 10.8 20.5" ><path transform="translate(21.57, 330.17)" d="M 95.45305633544922 33.32157516479492 L 95.45305633544922 23.97387886047363 L 98.64404296875 23.97387886047363 L 99.12178039550781 20.3309268951416 L 95.45305633544922 20.3309268951416 L 95.45305633544922 18.00501251220703 C 95.45305633544922 16.95031547546387 95.75095367431641 16.23148155212402 97.28923034667969 16.23148155212402 L 99.2510986328125 16.23059272766113 L 99.2510986328125 12.97239017486572 C 98.91164398193359 12.92815685272217 97.74713897705078 12.82899951934814 96.39232635498047 12.82899951934814 C 93.56374359130859 12.82899951934814 91.62723541259766 14.52662944793701 91.62723541259766 17.6444091796875 L 91.62723541259766 20.33102607727051 L 88.42799377441406 20.33102607727051 L 88.42799377441406 23.97397613525391 L 91.62713623046875 23.97397613525391 L 91.62713623046875 33.32167434692383 L 95.45305633544922 33.32157516479492 Z" fill="#2676e1" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_rmkk4b =
    '<svg viewBox="0.0 0.0 45.0 45.0" ><path  d="M 0 22.5 C 0 10.07362461090088 10.07362461090088 0 22.5 0 C 34.92636871337891 0 45 10.07362461090088 45 22.5 C 45 34.92637252807617 34.92636871337891 45 22.5 45 C 10.07362461090088 45 0 34.92637252807617 0 22.5 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ev3sud =
    '<svg viewBox="13.3 12.6 16.2 8.3" ><path transform="translate(-1.39, -1.03)" d="M 23.99970054626465 17.62129974365234 C 25.95249938964844 17.62129974365234 27.26989936828613 18.46489906311035 28.02099990844727 19.1697998046875 L 30.95610046386719 16.30400085449219 C 29.15340042114258 14.62839984893799 26.80769920349121 13.60000038146973 23.99970054626465 13.60000038146973 C 19.93210029602051 13.60000038146973 16.4192008972168 15.93420028686523 14.70899963378906 19.33149909973145 L 18.07169914245605 21.94309997558594 C 18.91519927978516 19.43549919128418 21.24939918518066 17.62129974365234 23.99970054626465 17.62129974365234 L 23.99970054626465 17.62129974365234 Z" fill="#ea4335" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_r4722z =
    '<svg viewBox="22.1 20.4 10.0 9.8" ><path transform="translate(-1.89, -1.73)" d="M 33.98400115966797 24.23110008239746 C 33.98400115966797 23.37599945068359 33.91469955444336 22.75200080871582 33.76440048217773 22.10490036010742 L 24 22.10490036010742 L 24 25.96439933776855 L 29.73159980773926 25.96439933776855 C 29.61599922180176 26.92350006103516 28.99200057983398 28.36800003051758 27.60530090332031 29.33860015869141 L 30.88710021972656 31.88089942932129 C 32.85160064697266 30.06660079956055 33.98400115966797 27.39730072021484 33.98400115966797 24.23110008239746 L 33.98400115966797 24.23110008239746 Z" fill="#4285f4" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_iolk3o =
    '<svg viewBox="12.7 17.8 4.5 9.3" ><path transform="translate(-0.94, -1.5)" d="M 18.08320045471191 26.05690002441406 C 17.86359977722168 25.40979957580566 17.73649978637695 24.71640014648438 17.73649978637695 24 C 17.73649978637695 23.28350067138672 17.86359977722168 22.59020042419434 18.07159996032715 21.94309997558594 L 14.70890045166016 19.33149909973145 C 14.00409984588623 20.74130058288574 13.59959983825684 22.32439994812012 13.59959983825684 24 C 13.59959983825684 25.67550086975098 14.00409984588623 27.25869941711426 14.70890045166016 28.66839981079102 L 18.08320045471191 26.05690002441406 L 18.08320045471191 26.05690002441406 Z" fill="#fbbc05" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_6zcxny =
    '<svg viewBox="13.3 24.1 16.2 8.3" ><path transform="translate(-1.39, -1.97)" d="M 23.99979972839355 34.40000152587891 C 26.80780029296875 34.40000152587891 29.16510009765625 33.47560119628906 30.88689994812012 31.88089942932129 L 27.60510063171387 29.33869934082031 C 26.72690010070801 29.95109939575195 25.54829978942871 30.37870025634766 23.99979972839355 30.37870025634766 C 21.24959945678711 30.37870025634766 18.9153995513916 28.56439971923828 18.08340072631836 26.05690002441406 L 14.72070026397705 28.66839981079102 C 16.43090057373047 32.06579971313477 19.93230056762695 34.40000152587891 23.99979972839355 34.40000152587891 L 23.99979972839355 34.40000152587891 Z" fill="#34a853" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
