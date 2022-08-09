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
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditParkingDetailsWidget extends StatefulWidget {
  const EditParkingDetailsWidget({
    Key? key,
    this.img,
    this.price,
    this.floor,
    this.vehicleType,
    this.direction,
    this.uploadParking,
  }) : super(key: key);

  final String? img;
  final double? price;
  final int? floor;
  final String? vehicleType;
  final String? direction;
  final DocumentReference? uploadParking;

  @override
  _EditParkingDetailsWidgetState createState() =>
      _EditParkingDetailsWidgetState();
}

class _EditParkingDetailsWidgetState extends State<EditParkingDetailsWidget> {
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
    foolrCountCtrlController =
        TextEditingController(text: widget.floor?.toString());
    pricePerDayCtrlController =
        TextEditingController(text: widget.price?.toString());
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
          'Update Parking Details',
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
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
                                    selectedMedia.every((m) =>
                                        validateFileFormat(
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
                                  if (downloadUrls.length ==
                                      selectedMedia.length) {
                                    setState(() =>
                                        uploadedFileUrl = downloadUrls.first);
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
                                height:
                                    MediaQuery.of(context).size.height * 0.3,
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
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: CachedNetworkImage(
                                        imageUrl: functions.currentImg(
                                            widget.img, uploadedFileUrl),
                                        width: double.infinity,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.3,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 25, 0, 10),
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
                                  hintStyle:
                                      FlutterFlowTheme.of(context).bodyText2,
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
                                  fillColor: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          10, 10, 10, 10),
                                  suffixIcon:
                                      pricePerDayCtrlController!.text.isNotEmpty
                                          ? InkWell(
                                              onTap: () => setState(
                                                () => pricePerDayCtrlController
                                                    ?.clear(),
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
                                keyboardType:
                                    const TextInputType.numberWithOptions(
                                        signed: true, decimal: true),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
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
                                  hintStyle:
                                      FlutterFlowTheme.of(context).bodyText2,
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
                                  fillColor: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          10, 10, 10, 10),
                                  suffixIcon:
                                      foolrCountCtrlController!.text.isNotEmpty
                                          ? InkWell(
                                              onTap: () => setState(
                                                () => foolrCountCtrlController
                                                    ?.clear(),
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
                                keyboardType:
                                    const TextInputType.numberWithOptions(
                                        signed: true, decimal: true),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                              child: FlutterFlowDropDown(
                                initialOption: vehicleTypeDropValue ??=
                                    widget.vehicleType,
                                options: ['2 weeler', '3 weeler', '4 weeler'],
                                onChanged: (val) =>
                                    setState(() => vehicleTypeDropValue = val),
                                width: double.infinity,
                                height: 50,
                                textStyle:
                                    FlutterFlowTheme.of(context).subtitle1,
                                hintText: 'Choose vehicle type',
                                fillColor: Colors.white,
                                elevation: 2,
                                borderColor: Color(0xFF290606),
                                borderWidth: 1,
                                borderRadius: 6,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    12, 4, 12, 4),
                                hidesUnderline: true,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                              child: FlutterFlowDropDown(
                                initialOption: directionDropValue ??=
                                    widget.direction,
                                options: ['East', 'West', 'North', 'South'],
                                onChanged: (val) =>
                                    setState(() => directionDropValue = val),
                                width: double.infinity,
                                height: 50,
                                textStyle:
                                    FlutterFlowTheme.of(context).subtitle1,
                                hintText: 'Choose Locating Direction',
                                fillColor: Colors.white,
                                elevation: 2,
                                borderColor: Color(0xFF290606),
                                borderWidth: 1,
                                borderRadius: 6,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    12, 4, 12, 4),
                                hidesUnderline: true,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20, 20, 20, 20),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  if (formKey.currentState == null ||
                                      !formKey.currentState!.validate()) {
                                    return;
                                  }

                                  await Future.delayed(
                                      const Duration(milliseconds: 1000));

                                  final uploadParkingUpdateData =
                                      createUploadParkingRecordData(
                                    parkingImg: functions.currentImg(
                                        widget.img, uploadedFileUrl),
                                    price: double.parse(
                                        pricePerDayCtrlController!.text),
                                    locationDirection: directionDropValue,
                                    floor: foolrCountCtrlController!.text,
                                    vehicleType: vehicleTypeDropValue,
                                  );
                                  await widget.uploadParking!
                                      .update(uploadParkingUpdateData);
                                  Navigator.pop(context);
                                },
                                text: 'Update',
                                icon: Icon(
                                  Icons.upload_file,
                                  size: 30,
                                ),
                                options: FFButtonOptions(
                                  width: double.infinity,
                                  height: 40,
                                  color:
                                      FlutterFlowTheme.of(context).buttonColor,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
