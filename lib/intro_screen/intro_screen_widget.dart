import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../login_page/login_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreenWidget extends StatefulWidget {
  const IntroScreenWidget({Key? key}) : super(key: key);

  @override
  _IntroScreenWidgetState createState() => _IntroScreenWidgetState();
}

class _IntroScreenWidgetState extends State<IntroScreenWidget> {
  PageController? pageViewController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Align(
            alignment: AlignmentDirectional(0.75, -0.4),
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                        child: PageView(
                          controller: pageViewController ??= PageController(
                              initialPage: min(
                                  valueOrDefault<int>(
                                    FFAppState().pageViewCount,
                                    0,
                                  ),
                                  2)),
                          scrollDirection: Axis.horizontal,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Lottie.asset(
                                  'assets/lottie_animations/57463-parking-concept.json',
                                  width: MediaQuery.of(context).size.width,
                                  height: 450,
                                  fit: BoxFit.cover,
                                  animate: true,
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15, 10, 15, 0),
                                    child: Text(
                                      'Apartment Parking Rental App Intro',
                                      style: FlutterFlowTheme.of(context)
                                          .subtitle1,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 15, 15, 15),
                                  child: Text(
                                    'Apartment Parking Retal app can be help to providing parking area vertually visit and booking facility it\'s can be reduce Time and Money.',
                                    style:
                                        FlutterFlowTheme.of(context).subtitle2,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Lottie.asset(
                                  'assets/lottie_animations/13606-contribute-to-empty-slot.json',
                                  width: MediaQuery.of(context).size.width,
                                  height: 450,
                                  fit: BoxFit.cover,
                                  animate: true,
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15, 10, 15, 0),
                                    child: Text(
                                      'Parking Spot Booking visually',
                                      style: FlutterFlowTheme.of(context)
                                          .subtitle1,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 15, 15, 15),
                                  child: Text(
                                    'Apartment Parking Rentel (APR) app can be help to Parking Spot Booking easy  and Secure way with your Mobile. ',
                                    style:
                                        FlutterFlowTheme.of(context).subtitle2,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Lottie.asset(
                                  'assets/lottie_animations/13511-parking-spots.json',
                                  width: MediaQuery.of(context).size.width,
                                  height: 450,
                                  fit: BoxFit.cover,
                                  animate: true,
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15, 10, 15, 0),
                                    child: Text(
                                      'Manage Parking Spot',
                                      style: FlutterFlowTheme.of(context)
                                          .subtitle1,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 15, 15, 15),
                                  child: Text(
                                    'Apartment Parking Retal  (APR) throught this app  user can be Post Parking Spot area and Booking Others Parking Sport also with your mobile  .',
                                    style:
                                        FlutterFlowTheme.of(context).subtitle2,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.05, 0.35),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                          child: SmoothPageIndicator(
                            controller: pageViewController ??= PageController(
                                initialPage: min(
                                    valueOrDefault<int>(
                                      FFAppState().pageViewCount,
                                      0,
                                    ),
                                    2)),
                            count: 3,
                            axisDirection: Axis.horizontal,
                            onDotClicked: (i) {
                              pageViewController!.animateToPage(
                                i,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            effect: ExpandingDotsEffect(
                              expansionFactor: 3,
                              spacing: 8,
                              radius: 25,
                              dotWidth: 15,
                              dotHeight: 8.5,
                              dotColor: Color(0xFF9E9E9E),
                              activeDotColor: Color(0xFF3F51B5),
                              paintStyle: PaintingStyle.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (FFAppState().pageViewCount < 2)
                      Align(
                        alignment: AlignmentDirectional(0, 1),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: FFButtonWidget(
                            onPressed: () async {
                              await Navigator.pushAndRemoveUntil(
                                context,
                                PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  duration: Duration(milliseconds: 600),
                                  reverseDuration: Duration(milliseconds: 600),
                                  child: LoginPageWidget(),
                                ),
                                (r) => false,
                              );
                            },
                            text: 'Skip ',
                            options: FFButtonOptions(
                              width: 115,
                              height: 40,
                              color: Color(0xFFE0ABEA),
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                    Align(
                      alignment: AlignmentDirectional(0, 1),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                        child: FFButtonWidget(
                          onPressed: () async {
                            if (FFAppState().pageViewCount == 2) {
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  duration: Duration(milliseconds: 600),
                                  reverseDuration: Duration(milliseconds: 600),
                                  child: LoginPageWidget(),
                                ),
                              );
                            } else {
                              setState(() => FFAppState().pageViewCount =
                                  FFAppState().pageViewCount + 1);
                              await pageViewController?.nextPage(
                                duration: Duration(milliseconds: 300),
                                curve: Curves.ease,
                              );
                            }
                          },
                          text: 'Next',
                          options: FFButtonOptions(
                            width: 115,
                            height: 40,
                            color: FlutterFlowTheme.of(context).buttonColor,
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
