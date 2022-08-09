import '../add_to_cart_parkings/add_to_cart_parkings_widget.dart';
import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../buy_now_page/buy_now_page_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ParkingDetailsWidget extends StatefulWidget {
  const ParkingDetailsWidget({
    Key key,
    this.img,
    this.direction,
    this.weelertype,
    this.mobileno,
    this.price,
    this.regtime,
    this.regby,
    this.whichfloor,
    this.regbyEmail,
    this.uploadUid,
  }) : super(key: key);

  final String img;
  final String direction;
  final String weelertype;
  final String mobileno;
  final double price;
  final DateTime regtime;
  final String regby;
  final String whichfloor;
  final String regbyEmail;
  final String uploadUid;

  @override
  _ParkingDetailsWidgetState createState() => _ParkingDetailsWidgetState();
}

class _ParkingDetailsWidgetState extends State<ParkingDetailsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).lightColor,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Parking Details',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                    child: Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.425,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4,
                            color: Color(0x33000000),
                            offset: Offset(0, 0),
                            spreadRadius: 4,
                          )
                        ],
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Hero(
                        tag: widget.img,
                        transitionOnUserGestures: true,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: CachedNetworkImage(
                            imageUrl: widget.img,
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 0.425,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Parking Details',
                        style: FlutterFlowTheme.of(context).title3,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-1, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Price',
                                    style:
                                        FlutterFlowTheme.of(context).subtitle2,
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 10, 0),
                                        child: FaIcon(
                                          FontAwesomeIcons.rupeeSign,
                                          color: Colors.black,
                                          size: 20,
                                        ),
                                      ),
                                      Text(
                                        widget.price.toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle1,
                                      ),
                                      Text(
                                        '/ Day',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-1, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Location Direction',
                                    style:
                                        FlutterFlowTheme.of(context).subtitle2,
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 10, 0),
                                        child: Icon(
                                          Icons.directions,
                                          color: Colors.black,
                                          size: 24,
                                        ),
                                      ),
                                      Text(
                                        widget.direction,
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle1,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-1, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Vehicle Type',
                                    style:
                                        FlutterFlowTheme.of(context).subtitle2,
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        widget.weelertype,
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle1,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-1, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Floor Count            ',
                                    style:
                                        FlutterFlowTheme.of(context).subtitle2,
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 10, 0),
                                        child: FaIcon(
                                          FontAwesomeIcons.parking,
                                          color: Colors.black,
                                          size: 24,
                                        ),
                                      ),
                                      Text(
                                        widget.whichfloor,
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle1,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-1, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Owner Name',
                                    style:
                                        FlutterFlowTheme.of(context).subtitle2,
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        widget.regby,
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle1,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-1, 0),
                              child: InkWell(
                                onTap: () async {
                                  await launchURL(
                                      functions.makeACall(widget.mobileno));
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Mobile Number',
                                      style: FlutterFlowTheme.of(context)
                                          .subtitle2,
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 10, 0),
                                          child: Icon(
                                            Icons.call,
                                            color: Color(0xFF6BDB6B),
                                            size: 24,
                                          ),
                                        ),
                                        Text(
                                          widget.mobileno,
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle1,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(-1, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Upload Time',
                                      style: FlutterFlowTheme.of(context)
                                          .subtitle2,
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 10, 0),
                                          child: Icon(
                                            Icons.access_time_outlined,
                                            color: Colors.black,
                                            size: 24,
                                          ),
                                        ),
                                        Text(
                                          dateTimeFormat('yMd', widget.regtime),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5, 0, 0, 0),
                                          child: Text(
                                            dateTimeFormat(
                                                'jm', widget.regtime),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FFButtonWidget(
                          onPressed: () async {
                            final addtocartCreateData =
                                createAddtocartRecordData(
                              img: widget.img,
                              price: widget.price,
                              cartbyEmail: currentUserEmail,
                              vehicleType: widget.weelertype,
                              floorCount:
                                  functions.toIntConv(widget.whichfloor),
                              cartby: currentUserDisplayName,
                              cartMobile: currentPhoneNumber,
                              cartCurTime: getCurrentTimestamp,
                              uid: functions
                                  .toIntConv(functions.autoIncrementUid(
                                      FFAppState().autoUid.toString()))
                                  .toString(),
                              directiontype: widget.direction,
                              uploadParkingUid: widget.uploadUid,
                            );
                            await AddtocartRecord.collection
                                .doc()
                                .set(addtocartCreateData);
                            await Future.delayed(
                                const Duration(milliseconds: 1000));
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Parking Spot Added Success...!',
                                  style: GoogleFonts.getFont(
                                    'Open Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                  ),
                                ),
                                duration: Duration(milliseconds: 4000),
                                backgroundColor: Color(0xFF757272),
                                action: SnackBarAction(
                                  label: 'Goto',
                                  textColor: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  onPressed: () async {
                                    await Navigator.push(
                                      context,
                                      PageTransition(
                                        type: PageTransitionType.rightToLeft,
                                        duration: Duration(milliseconds: 600),
                                        reverseDuration:
                                            Duration(milliseconds: 600),
                                        child: AddToCartParkingsWidget(),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            );
                          },
                          text: 'Add To Cart',
                          icon: Icon(
                            Icons.shopping_cart,
                            size: 30,
                          ),
                          options: FFButtonOptions(
                            width: 172.5,
                            height: 40,
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                    ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(0),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.rightToLeft,
                                duration: Duration(milliseconds: 600),
                                reverseDuration: Duration(milliseconds: 600),
                                child: BuyNowPageWidget(
                                  direction: widget.direction,
                                  price: widget.price,
                                  img: widget.img,
                                  floor: functions.toIntConv(widget.whichfloor),
                                  vehicleType: widget.weelertype,
                                  uid: widget.uploadUid,
                                ),
                              ),
                            );
                          },
                          text: 'BOOK NOW',
                          options: FFButtonOptions(
                            width: 172.5,
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
                            borderRadius: BorderRadius.circular(0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
