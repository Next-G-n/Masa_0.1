import 'package:flutter/material.dart';
import './iPhone6782.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class iPhone6781 extends StatelessWidget {
  final VoidCallback icon2;
  iPhone6781({
    Key key,
    this.icon2,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(66.0, 31.0),
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
          Transform.translate(
            offset: Offset(210.0, 31.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => iPhone6782(),
                ),
              ],
              child: Text(
                'Sign up ',
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
            offset: Offset(59.0, 121.0),
            child: Text(
              'Please sign in to \ncontinue',
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
            offset: Offset(39.0, 344.0),
            child: Container(
              width: 277.0,
              height: 125.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(29.0),
                color: const Color(0x3dffffff),
                border: Border.all(width: 1.0, color: const Color(0x3d707070)),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x0a000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(48.5, 403.5),
            child: SvgPicture.string(
              _svg_hzevbb,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(49.0, 529.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                ),
              ],
              child: Container(
                width: 277.0,
                height: 43.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(31.0),
                  color: const Color(0xffffa100),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x29000000),
                      offset: Offset(0, 3),
                      blurRadius: 6,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(154.0, 537.0),
            child: Text(
              'Submit',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 20,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(50.0, 72.0),
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
            offset: Offset(262.0, 423.0),
            child: GestureDetector(
              onTap: () => icon2?.call(),
              child: SizedBox(
                width: 26.0,
                height: 18.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 26.0, 18.0),
                      size: Size(26.0, 18.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child: SvgPicture.string(
                        _svg_woee1r,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(8.0, 4.0, 10.0, 10.0),
                      size: Size(26.0, 18.0),
                      pinTop: true,
                      pinBottom: true,
                      fixedWidth: true,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.elliptical(9999.0, 9999.0)),
                          color: const Color(0x69434b56),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(122.0, 210.0),
            child: Container(
              width: 90.0,
              height: 90.0,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(126.0, 220.0),
            child:
                // Adobe XD layer: 'Icon_user' (shape)
                Container(
              width: 80.0,
              height: 80.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/icon.png'),
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.62), BlendMode.dstIn),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(73.0, 602.0),
            child: Container(
              width: 45.0,
              height: 45.0,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(272.0, 602.0),
            child: Container(
              width: 45.0,
              height: 45.0,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(89.0, 617.0),
            child: SvgPicture.string(
              _svg_jtbiau,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(170.0, 602.0),
            child: SizedBox(
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
                      _svg_7e7ebz,
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
                      _svg_i0hf1o,
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
                      _svg_kuphzc,
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
                      _svg_xarrmy,
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
                      _svg_1brksj,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
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

const String _svg_hzevbb =
    '<svg viewBox="48.5 403.5 256.0 1.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(48.5, 403.5)" d="M 0 0 L 256 0" fill="none" fill-opacity="0.41" stroke="#707070" stroke-width="1" stroke-opacity="0.41" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_woee1r =
    '<svg viewBox="332.0 218.0 26.0 18.0" ><path transform="translate(329.0, 211.0)" d="M 16 25 C 10.31193733215332 25.07332992553711 5.166853904724121 21.63399887084961 3.060000419616699 16.35000228881836 C 2.975666046142578 16.12428855895996 2.975666046142578 15.87571430206299 3.060000419616699 15.65000057220459 C 5.16685676574707 10.36600112915039 10.31193923950195 6.926669120788574 16.00000381469727 7.000000953674316 C 21.68806648254395 6.926671981811523 26.83314895629883 10.36600494384766 28.94000053405762 15.64999961853027 C 29.02433204650879 15.87571334838867 29.02433204650879 16.12428665161133 28.93999671936035 16.35000038146973 C 26.8331413269043 21.63399505615234 21.68806076049805 25.07332801818848 16 25 Z M 5.079999923706055 16 C 6.989895820617676 20.30948638916016 11.28669548034668 23.06384468078613 16.00000381469727 23.00000190734863 C 20.71331214904785 23.06384086608887 25.01010894775391 20.30948257446289 26.92000007629395 15.99999904632568 C 25.01010513305664 11.69051837921143 20.71330833435059 8.936161994934082 16.00000190734863 9.000000953674316 C 11.28669452667236 8.936159133911133 6.989895820617676 11.69051742553711 5.080000877380371 16 Z" fill="#434b56" fill-opacity="0.41" stroke="none" stroke-width="1" stroke-opacity="0.41" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_7e7ebz =
    '<svg viewBox="170.0 602.0 45.0 45.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(170.0, 602.0)" d="M 0 22.5 C 0 10.07362461090088 10.07362461090088 0 22.5 0 C 34.92636871337891 0 45 10.07362461090088 45 22.5 C 45 34.92637252807617 34.92636871337891 45 22.5 45 C 10.07362461090088 45 0 34.92637252807617 0 22.5 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_i0hf1o =
    '<svg viewBox="183.3 614.6 16.2 8.3" ><path transform="translate(168.61, 600.97)" d="M 23.99970054626465 17.62129974365234 C 25.95249938964844 17.62129974365234 27.26989936828613 18.46489906311035 28.02099990844727 19.1697998046875 L 30.95610046386719 16.30400085449219 C 29.15340042114258 14.62839984893799 26.80769920349121 13.60000038146973 23.99970054626465 13.60000038146973 C 19.93210029602051 13.60000038146973 16.4192008972168 15.93420028686523 14.70899963378906 19.33149909973145 L 18.07169914245605 21.94309997558594 C 18.91519927978516 19.43549919128418 21.24939918518066 17.62129974365234 23.99970054626465 17.62129974365234 L 23.99970054626465 17.62129974365234 Z" fill="#ea4335" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_kuphzc =
    '<svg viewBox="192.1 622.4 10.0 9.8" ><path transform="translate(168.11, 600.27)" d="M 33.98400115966797 24.23110008239746 C 33.98400115966797 23.37599945068359 33.91469955444336 22.75200080871582 33.76440048217773 22.10490036010742 L 24 22.10490036010742 L 24 25.96439933776855 L 29.73159980773926 25.96439933776855 C 29.61599922180176 26.92350006103516 28.99200057983398 28.36800003051758 27.60530090332031 29.33860015869141 L 30.88710021972656 31.88089942932129 C 32.85160064697266 30.06660079956055 33.98400115966797 27.39730072021484 33.98400115966797 24.23110008239746 L 33.98400115966797 24.23110008239746 Z" fill="#4285f4" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_xarrmy =
    '<svg viewBox="182.7 619.8 4.5 9.3" ><path transform="translate(169.06, 600.5)" d="M 18.08320045471191 26.05690002441406 C 17.86359977722168 25.40979957580566 17.73649978637695 24.71640014648438 17.73649978637695 24 C 17.73649978637695 23.28350067138672 17.86359977722168 22.59020042419434 18.07159996032715 21.94309997558594 L 14.70890045166016 19.33149909973145 C 14.00409984588623 20.74130058288574 13.59959983825684 22.32439994812012 13.59959983825684 24 C 13.59959983825684 25.67550086975098 14.00409984588623 27.25869941711426 14.70890045166016 28.66839981079102 L 18.08320045471191 26.05690002441406 L 18.08320045471191 26.05690002441406 Z" fill="#fbbc05" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_1brksj =
    '<svg viewBox="183.3 626.1 16.2 8.3" ><path transform="translate(168.61, 600.03)" d="M 23.99979972839355 34.40000152587891 C 26.80780029296875 34.40000152587891 29.16510009765625 33.47560119628906 30.88689994812012 31.88089942932129 L 27.60510063171387 29.33869934082031 C 26.72690010070801 29.95109939575195 25.54829978942871 30.37870025634766 23.99979972839355 30.37870025634766 C 21.24959945678711 30.37870025634766 18.9153995513916 28.56439971923828 18.08340072631836 26.05690002441406 L 14.72070026397705 28.66839981079102 C 16.43090057373047 32.06579971313477 19.93230056762695 34.40000152587891 23.99979972839355 34.40000152587891 L 23.99979972839355 34.40000152587891 Z" fill="#34a853" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_jtbiau =
    '<svg viewBox="89.0 617.0 10.8 20.5" ><path transform="translate(0.57, 604.17)" d="M 95.45305633544922 33.32157516479492 L 95.45305633544922 23.97387886047363 L 98.64404296875 23.97387886047363 L 99.12178039550781 20.3309268951416 L 95.45305633544922 20.3309268951416 L 95.45305633544922 18.00501251220703 C 95.45305633544922 16.95031547546387 95.75095367431641 16.23148155212402 97.28923034667969 16.23148155212402 L 99.2510986328125 16.23059272766113 L 99.2510986328125 12.97239017486572 C 98.91164398193359 12.92815685272217 97.74713897705078 12.82899951934814 96.39232635498047 12.82899951934814 C 93.56374359130859 12.82899951934814 91.62723541259766 14.52662944793701 91.62723541259766 17.6444091796875 L 91.62723541259766 20.33102607727051 L 88.42799377441406 20.33102607727051 L 88.42799377441406 23.97397613525391 L 91.62713623046875 23.97397613525391 L 91.62713623046875 33.32167434692383 L 95.45305633544922 33.32157516479492 Z" fill="#2676e1" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
