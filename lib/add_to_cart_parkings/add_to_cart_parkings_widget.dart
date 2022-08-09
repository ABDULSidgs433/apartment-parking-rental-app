import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../buy_now_page/buy_now_page_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class AddToCartParkingsWidget extends StatefulWidget {
  const AddToCartParkingsWidget({
    Key? key,
    this.direction,
    this.floor,
    this.price,
    this.img,
    this.uid,
    this.vehicleType,
  }) : super(key: key);

  final String? direction;
  final int? floor;
  final double? price;
  final String? img;
  final String? uid;
  final String? vehicleType;

  @override
  _AddToCartParkingsWidgetState createState() =>
      _AddToCartParkingsWidgetState();
}

class _AddToCartParkingsWidgetState extends State<AddToCartParkingsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<AddtocartRecord>>(
      stream: queryAddtocartRecord(
        queryBuilder: (addtocartRecord) =>
            addtocartRecord.where('cartby_email', isEqualTo: currentUserEmail),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        List<AddtocartRecord> addToCartParkingsAddtocartRecordList =
            snapshot.data!;
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
              'Add To Cart List',
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
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: Builder(
                  builder: (context) {
                    final addToCartParkingList =
                        addToCartParkingsAddtocartRecordList
                            .map((e) => e)
                            .toList();
                    return SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(addToCartParkingList.length,
                            (addToCartParkingListIndex) {
                          final addToCartParkingListItem =
                              addToCartParkingList[addToCartParkingListIndex];
                          return Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 8, 2, 8),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 0),
                                    spreadRadius: 4,
                                  )
                                ],
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8, 8, 18, 8),
                                        child: Material(
                                          color: Colors.transparent,
                                          elevation: 1,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(6),
                                          ),
                                          child: Container(
                                            width: 100,
                                            height: 100,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                              border: Border.all(
                                                color: Color(0xFF4A4343),
                                                width: 1,
                                              ),
                                            ),
                                            child: Image.network(
                                              addToCartParkingListItem.img!,
                                              width: 100,
                                              height: 100,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text(
                                                  addToCartParkingListItem
                                                      .directiontype!,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1,
                                                ),
                                                Text(
                                                  ' Location',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1, 0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 4, 0, 4),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1, 0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10, 0, 10, 0),
                                                      child: Icon(
                                                        Icons.bike_scooter,
                                                        color: Colors.black,
                                                        size: 25,
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    addToCartParkingListItem
                                                        .vehicleType!,
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 8, 0),
                                                child: FaIcon(
                                                  FontAwesomeIcons.rupeeSign,
                                                  color: Colors.black,
                                                  size: 20,
                                                ),
                                              ),
                                              Text(
                                                addToCartParkingListItem.price!
                                                    .toString(),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .title3,
                                              ),
                                              Text(
                                                ' / Day.',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 8, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        FFButtonWidget(
                                          onPressed: () async {
                                            await addToCartParkingListItem
                                                .reference
                                                .delete();
                                          },
                                          text: 'Remove ',
                                          icon: Icon(
                                            Icons.cancel_sharp,
                                            size: 24,
                                          ),
                                          options: FFButtonOptions(
                                            width: 176,
                                            height: 40,
                                            color: Color(0xFFF01C1C),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .subtitle2
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBtnText,
                                                    ),
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(12),
                                              bottomRight: Radius.circular(0),
                                              topLeft: Radius.circular(0),
                                              topRight: Radius.circular(0),
                                            ),
                                          ),
                                        ),
                                        FFButtonWidget(
                                          onPressed: () async {
                                            await Navigator.push(
                                              context,
                                              PageTransition(
                                                type: PageTransitionType
                                                    .rightToLeft,
                                                duration:
                                                    Duration(milliseconds: 600),
                                                reverseDuration:
                                                    Duration(milliseconds: 600),
                                                child: BuyNowPageWidget(
                                                  direction:
                                                      addToCartParkingListItem
                                                          .directiontype,
                                                  floor:
                                                      addToCartParkingListItem
                                                          .floorCount,
                                                  price:
                                                      addToCartParkingListItem
                                                          .price,
                                                  img: addToCartParkingListItem
                                                      .img,
                                                  vehicleType:
                                                      addToCartParkingListItem
                                                          .vehicleType,
                                                  uid: addToCartParkingListItem
                                                      .uploadParkingUid,
                                                  addToCartDocRef:
                                                      addToCartParkingListItem,
                                                ),
                                              ),
                                            );
                                          },
                                          text: 'BUY  NOW',
                                          options: FFButtonOptions(
                                            width: 176,
                                            height: 40,
                                            color: FlutterFlowTheme.of(context)
                                                .buttonColor,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .subtitle2
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      color: Colors.white,
                                                    ),
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(0),
                                              bottomRight: Radius.circular(12),
                                              topLeft: Radius.circular(0),
                                              topRight: Radius.circular(0),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
