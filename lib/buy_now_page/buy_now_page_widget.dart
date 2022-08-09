import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../success_payment_page/success_payment_page_widget.dart';
import '../custom_code/widgets/index.dart' as custom_widgets;
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class BuyNowPageWidget extends StatefulWidget {
  const BuyNowPageWidget({
    Key? key,
    this.direction,
    this.floor,
    this.price,
    this.img,
    this.uid,
    this.vehicleType,
    this.addToCartDocRef,
  }) : super(key: key);

  final String? direction;
  final int? floor;
  final double? price;
  final String? img;
  final String? uid;
  final String? vehicleType;
  final AddtocartRecord? addToCartDocRef;

  @override
  _BuyNowPageWidgetState createState() => _BuyNowPageWidgetState();
}

class _BuyNowPageWidgetState extends State<BuyNowPageWidget> {
  DateTime? datePicked1;
  DateTime? datePicked2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<UploadParkingRecord>>(
      stream: queryUploadParkingRecord(
        queryBuilder: (uploadParkingRecord) =>
            uploadParkingRecord.where('uid', isEqualTo: widget.uid),
        singleRecord: true,
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
        List<UploadParkingRecord> buyNowPageUploadParkingRecordList =
            snapshot.data!;
        // Return an empty Container when the document does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final buyNowPageUploadParkingRecord =
            buyNowPageUploadParkingRecordList.first;
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
              icon: FaIcon(
                FontAwesomeIcons.arrowLeft,
                color: FlutterFlowTheme.of(context).primaryBtnText,
                size: 30,
              ),
              onPressed: () async {
                Navigator.pop(context);
              },
            ),
            title: Text(
              'Review & Confirm',
              style: FlutterFlowTheme.of(context).subtitle1.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                  ),
            ),
            actions: [],
            centerTitle: true,
            elevation: 0,
          ),
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: StreamBuilder<List<ConfirmBookingRecord>>(
                stream: queryConfirmBookingRecord(),
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
                  List<ConfirmBookingRecord> stackConfirmBookingRecordList =
                      snapshot.data!;
                  return Stack(
                    children: List.generate(
                        stackConfirmBookingRecordList.length, (stackIndex) {
                      final stackConfirmBookingRecord =
                          stackConfirmBookingRecordList[stackIndex];
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 12, 24, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Parking  Area Payment ',
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle1,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 8, 0, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 8, 0),
                                              child: Icon(
                                                Icons.directions,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                size: 20,
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  widget.direction!,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1,
                                                ),
                                                Text(
                                                  'Direction',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 4, 0, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 8, 0),
                                              child: Icon(
                                                Icons.local_parking,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                size: 20,
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 4, 0),
                                                  child: Text(
                                                    widget.floor!.toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1,
                                                  ),
                                                ),
                                                Text(
                                                  'Floor',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(0),
                                      child: Image.network(
                                        widget.img!,
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            height: 24,
                            thickness: 2,
                            indent: 16,
                            endIndent: 16,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 4, 0, 4),
                                    child: Text(
                                      'From Date',
                                      style: FlutterFlowTheme.of(context)
                                          .subtitle1,
                                    ),
                                  ),
                                ),
                                Material(
                                  color: Colors.transparent,
                                  elevation: 1,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Container(
                                    width: 200,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(6),
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 1,
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          dateTimeFormat(
                                              'yMMMd',
                                              functions
                                                  .isDatePicked(datePicked1)),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                        FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 30,
                                          borderWidth: 1,
                                          buttonSize: 60,
                                          icon: Icon(
                                            Icons.date_range_sharp,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 30,
                                          ),
                                          onPressed: () async {
                                            await DatePicker.showDatePicker(
                                              context,
                                              showTitleActions: true,
                                              onConfirm: (date) {
                                                setState(
                                                    () => datePicked1 = date);
                                              },
                                              currentTime: getCurrentTimestamp,
                                              minTime: getCurrentTimestamp,
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            height: 24,
                            thickness: 2,
                            indent: 16,
                            endIndent: 16,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 4, 0, 4),
                                    child: Text(
                                      'To Date',
                                      style: FlutterFlowTheme.of(context)
                                          .subtitle1,
                                    ),
                                  ),
                                ),
                                Material(
                                  color: Colors.transparent,
                                  elevation: 1,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Container(
                                    width: 200,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(6),
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 1,
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          dateTimeFormat(
                                              'yMMMd',
                                              functions
                                                  .isDatePicked(datePicked2)),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                        FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 30,
                                          borderWidth: 1,
                                          buttonSize: 60,
                                          icon: Icon(
                                            Icons.date_range_sharp,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 30,
                                          ),
                                          onPressed: () async {
                                            await DatePicker.showDatePicker(
                                              context,
                                              showTitleActions: true,
                                              onConfirm: (date) {
                                                setState(
                                                    () => datePicked2 = date);
                                              },
                                              currentTime: getCurrentTimestamp,
                                              minTime: getCurrentTimestamp,
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            height: 24,
                            thickness: 2,
                            indent: 16,
                            endIndent: 16,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 12, 16, 12),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Price Details',
                                  style: FlutterFlowTheme.of(context).subtitle1,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Daily Rate',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            '₹ ',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                          Text(
                                            widget.price!.toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          ),
                                          Text(
                                            '/day',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Trust & Support Fee',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                      Text(
                                        '₹ 10 .00',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Roboto',
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Parking  Day\'s  Count',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                      Text(
                                        valueOrDefault<String>(
                                          functions
                                              .daysDiff(
                                                  datePicked1, datePicked2)
                                              .toString(),
                                          '0',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Roboto',
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            height: 24,
                            thickness: 2,
                            indent: 16,
                            endIndent: 16,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Total Rate',
                                  style: FlutterFlowTheme.of(context).subtitle1,
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      '₹ ',
                                      style: FlutterFlowTheme.of(context)
                                          .title3
                                          .override(
                                            fontFamily: 'Roboto',
                                          ),
                                    ),
                                    Text(
                                      valueOrDefault<String>(
                                        functions
                                            .dateDiffCal(datePicked1,
                                                datePicked2, widget.price)
                                            .toString(),
                                        '0',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .subtitle1,
                                    ),
                                    Text(
                                      ' / -',
                                      style: FlutterFlowTheme.of(context)
                                          .subtitle1,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            height: 24,
                            thickness: 2,
                            indent: 16,
                            endIndent: 16,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                              child: Text(
                                'You may see a temporary hold on your payment method in the amount of your Taskers daily rate of payment. You can cancel at any time. Tasks cancelled less than 24 hours before start time may be billed a cancellation fee of one our. Tasks have a one-hour minimum.',
                                style: FlutterFlowTheme.of(context).bodyText2,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 0, 16, 16),
                            child: InkWell(
                              onTap: () async {
                                await Future.delayed(
                                    const Duration(milliseconds: 600));
                              },
                              child: Container(
                                width: double.infinity,
                                height: 50,
                                child: custom_widgets.ConfirmDailog(
                                  width: double.infinity,
                                  height: 50,
                                  titlename: 'Confirm Payment',
                                  msg:
                                      'Are You Sure  Booking Payment for Parking Spot Area ',
                                  actionConfirmBtn: 'Pay',
                                  actionCancelBtn: 'Cancel',
                                  actionBtn: 'Confirm &  Pay',
                                  confirm: () async {
                                    if (widget.price ==
                                        buyNowPageUploadParkingRecord.price) {
                                      final confirmBookingCreateData =
                                          createConfirmBookingRecordData(
                                        uid: functions
                                            .toIntConv(functions
                                                .autoIncrementUid(FFAppState()
                                                    .autoUid
                                                    .toString()))
                                            .toString(),
                                        bookby: currentUserDisplayName,
                                        bookedEmailId: currentUserEmail,
                                        img: widget.img,
                                        price: widget.price,
                                        totalAmt: functions.dateDiffCal(
                                            datePicked1,
                                            datePicked2,
                                            widget.price),
                                        directionType: widget.direction,
                                        daysCount: functions.daysDiff(
                                            datePicked1, datePicked2),
                                        floor: widget.floor,
                                        fromdate:
                                            functions.isDatePicked(datePicked1),
                                        todate:
                                            functions.isDatePicked(datePicked2),
                                        utrNo: '0123456789',
                                        vehicleType: widget.vehicleType,
                                        regtime: getCurrentTimestamp,
                                      );
                                      await ConfirmBookingRecord.collection
                                          .doc()
                                          .set(confirmBookingCreateData);
                                      await Future.delayed(
                                          const Duration(milliseconds: 100));
                                      Navigator.pop(context);
                                      Navigator.pop(context);
                                      await Navigator.push(
                                        context,
                                        PageTransition(
                                          type: PageTransitionType.rightToLeft,
                                          duration: Duration(milliseconds: 600),
                                          reverseDuration:
                                              Duration(milliseconds: 600),
                                          child: SuccessPaymentPageWidget(
                                            img: widget.img,
                                            totalAmt: functions.dateDiffCal(
                                                datePicked1,
                                                datePicked2,
                                                widget.price),
                                            toDate: functions
                                                .isDatePicked(datePicked2),
                                            direction: widget.direction,
                                            daysCount: functions.daysDiff(
                                                datePicked1, datePicked2),
                                            floor: widget.floor,
                                            fromDate: functions
                                                .isDatePicked(datePicked1),
                                            bookbyEmailid: currentUserEmail,
                                          ),
                                        ),
                                      );
                                      await widget.addToCartDocRef!.reference
                                          .delete();
                                    } else {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('Alert'),
                                            content: Text(
                                                'Parking Area Payment Price Updated by Owner Please Update Product.'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: Text('OK'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    }
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
