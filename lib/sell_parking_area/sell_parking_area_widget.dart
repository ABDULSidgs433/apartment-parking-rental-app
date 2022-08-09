import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SellParkingAreaWidget extends StatefulWidget {
  const SellParkingAreaWidget({
    Key? key,
    this.img,
    this.price,
    this.floor,
    this.vehicleType,
    this.direction,
  }) : super(key: key);

  final String? img;
  final double? price;
  final int? floor;
  final String? vehicleType;
  final String? direction;

  @override
  _SellParkingAreaWidgetState createState() => _SellParkingAreaWidgetState();
}

class _SellParkingAreaWidgetState extends State<SellParkingAreaWidget> {
  String uploadedFileUrl = '';
  TextEditingController? pricePerDayCtrlController;
  TextEditingController? foolrCountCtrlController;
  String? vehicleTypeDropValue;
  String? directionDropValue;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    foolrCountCtrlController = TextEditingController();
    pricePerDayCtrlController = TextEditingController();
  }

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
          'Sell Parking Area',
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
            padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Form(
                    key: formKey,
                    autovalidateMode: AutovalidateMode.always,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        InkWell(
                          onTap: () async {
                            final selectedMedia =
                                await selectMediaWithSourceBottomSheet(
                              context: context,
                              maxWidth: 640.00,
                              maxHeight: 320.00,
                              allowPhoto: true,
                            );
                            if (selectedMedia != null &&
                                selectedMedia.every((m) => validateFileFormat(
                                    m.storagePath, context))) {
                              showUploadMessage(
                                context,
                                'Uploading file...',
                                showLoading: true,
                              );
                              final downloadUrls = (await Future.wait(
                                      selectedMedia.map((m) async =>
                                          await uploadData(
                                              m.storagePath, m.bytes))))
                                  .where((u) => u != null)
                                  .map((u) => u!)
                                  .toList();
                              ScaffoldMessenger.of(context)
                                  .hideCurrentSnackBar();
                              if (downloadUrls.length == selectedMedia.length) {
                                setState(
                                    () => uploadedFileUrl = downloadUrls.first);
                                showUploadMessage(
                                  context,
                                  'Success!',
                                );
                              } else {
                                showUploadMessage(
                                  context,
                                  'Failed to upload media',
                                );
                                return;
                              }
                            }
                          },
                          child: Container(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 0.3,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: Color(0xFF474646),
                              ),
                            ),
                            child: Stack(
                              children: [
                                if (uploadedFileUrl != null &&
                                    uploadedFileUrl != '')
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.network(
                                      uploadedFileUrl,
                                      width: double.infinity,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.3,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                if (uploadedFileUrl == null ||
                                    uploadedFileUrl == '')
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 15, 0, 10),
                                          child: FaIcon(
                                            FontAwesomeIcons.image,
                                            color: Color(0xFF696565),
                                            size: 120,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Add Parking Space Image',
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle2,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 4, 0, 0),
                                        child: Text(
                                          'Recomened Dimensions ( 640 x 320 )',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 10),
                          child: TextFormField(
                            controller: pricePerDayCtrlController,
                            onChanged: (_) => EasyDebounce.debounce(
                              'pricePerDayCtrlController',
                              Duration(milliseconds: 2000),
                              () => setState(() {}),
                            ),
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Price Per Day',
                              hintStyle: FlutterFlowTheme.of(context).bodyText2,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              filled: true,
                              fillColor:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  10, 10, 10, 10),
                              suffixIcon: pricePerDayCtrlController!
                                      .text.isNotEmpty
                                  ? InkWell(
                                      onTap: () => setState(
                                        () =>
                                            pricePerDayCtrlController?.clear(),
                                      ),
                                      child: Icon(
                                        Icons.clear,
                                        color: Color(0xFF757575),
                                        size: 22,
                                      ),
                                    )
                                  : null,
                            ),
                            style: FlutterFlowTheme.of(context).subtitle1,
                            keyboardType: const TextInputType.numberWithOptions(
                                signed: true, decimal: true),
                            validator: (val) {
                              if (val == null || val.isEmpty) {
                                return 'Field is required';
                              }

                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                          child: TextFormField(
                            controller: foolrCountCtrlController,
                            onChanged: (_) => EasyDebounce.debounce(
                              'foolrCountCtrlController',
                              Duration(milliseconds: 2000),
                              () => setState(() {}),
                            ),
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Which Floor',
                              hintStyle: FlutterFlowTheme.of(context).bodyText2,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              filled: true,
                              fillColor:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  10, 10, 10, 10),
                              suffixIcon: foolrCountCtrlController!
                                      .text.isNotEmpty
                                  ? InkWell(
                                      onTap: () => setState(
                                        () => foolrCountCtrlController?.clear(),
                                      ),
                                      child: Icon(
                                        Icons.clear,
                                        color: Color(0xFF757575),
                                        size: 22,
                                      ),
                                    )
                                  : null,
                            ),
                            style: FlutterFlowTheme.of(context).subtitle1,
                            keyboardType: const TextInputType.numberWithOptions(
                                signed: true, decimal: true),
                            validator: (val) {
                              if (val == null || val.isEmpty) {
                                return 'Field is required';
                              }

                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                          child: FlutterFlowDropDown(
                            options: ['2 weeler', '3 weeler', '4 weeler'],
                            onChanged: (val) =>
                                setState(() => vehicleTypeDropValue = val),
                            width: double.infinity,
                            height: 50,
                            textStyle: FlutterFlowTheme.of(context).subtitle1,
                            hintText: 'Choose vehicle type',
                            fillColor: Colors.white,
                            elevation: 2,
                            borderColor: Color(0xFF290606),
                            borderWidth: 1,
                            borderRadius: 6,
                            margin:
                                EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                            hidesUnderline: true,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                          child: FlutterFlowDropDown(
                            options: ['East', 'West', 'North', 'South'],
                            onChanged: (val) =>
                                setState(() => directionDropValue = val),
                            width: double.infinity,
                            height: 50,
                            textStyle: FlutterFlowTheme.of(context).subtitle1,
                            hintText: 'Choose Locating Direction',
                            fillColor: Colors.white,
                            elevation: 2,
                            borderColor: Color(0xFF290606),
                            borderWidth: 1,
                            borderRadius: 6,
                            margin:
                                EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                            hidesUnderline: true,
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                          child: FFButtonWidget(
                            onPressed: () async {
                              if (formKey.currentState == null ||
                                  !formKey.currentState!.validate()) {
                                return;
                              }

                              if (vehicleTypeDropValue == null) {
                                return;
                              }
                              if (directionDropValue == null) {
                                return;
                              }

                              await Future.delayed(
                                  const Duration(milliseconds: 1000));

                              final uploadParkingCreateData =
                                  createUploadParkingRecordData(
                                parkingImg: uploadedFileUrl,
                                price: double.parse(
                                    pricePerDayCtrlController!.text),
                                locationDirection: directionDropValue,
                                floor: foolrCountCtrlController!.text,
                                vehicleType: vehicleTypeDropValue,
                                regbyEmailId: currentUserEmail,
                                uid: functions.autoIncrementUid(
                                    FFAppState().autoUid.toString()),
                                regtime: getCurrentTimestamp,
                                regby: currentUserDisplayName,
                                regbymobile: currentPhoneNumber,
                              );
                              await UploadParkingRecord.collection
                                  .doc()
                                  .set(uploadParkingCreateData);
                              setState(() {
                                pricePerDayCtrlController?.clear();
                                foolrCountCtrlController?.clear();
                              });
                              Navigator.pop(context);
                            },
                            text: 'Upload',
                            icon: Icon(
                              Icons.upload_file,
                              size: 30,
                            ),
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 40,
                              color: FlutterFlowTheme.of(context).buttonColor,
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
