import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

String makeACall(String? mobileNo) {
  // Add your function code here!
  mobileNo = '8885786692';

  return "tel:$mobileNo";
}

String autoIncrementUid(String? uid) {
  // Add your function code here!
  String _randomString = uid.toString() +
      math.Random().nextInt(9999).toString() +
      math.Random().nextInt(9999).toString() +
      math.Random().nextInt(9999).toString();
  return _randomString;
}

int toIntConv(String? floorCount) {
  // Add your function code here!
  int fcount = int.parse(floorCount!);
  return fcount;
}

double dateDiffCal(
  DateTime? fdate,
  DateTime? tdate,
  double? price,
) {
  // date differnce between days
  DateTime cur = DateTime.now();
  fdate = fdate ?? cur;
  tdate = tdate ?? cur;
  final date1 = DateTime(fdate.year, fdate.month, fdate.day);

  final nextDate = DateTime(tdate.year, tdate.month, tdate.day); // add a day
  final differenceInDays = nextDate.difference(date1).inDays + 1;
  return differenceInDays * double.parse('${price ?? 0}') + 10;
}

int daysDiff(
  DateTime? fromDate,
  DateTime? toDate,
) {
  // Add your function code here!
  DateTime cur = DateTime.now();
  fromDate = fromDate ?? cur;
  toDate = toDate ?? cur;
  final date1 = DateTime(fromDate.year, fromDate.month, fromDate.day);

  final nextDate = DateTime(toDate.year, toDate.month, toDate.day); // add a day
  final differenceInDays = nextDate.difference(date1).inDays + 1;
  return differenceInDays;
}

String currentImg(
  String? stateImg,
  String? getImg,
) {
  // Add your function code here!
  if (getImg != null && getImg != "") {
    return stateImg = getImg;
  }
  return stateImg!;
}

DateTime isDatePicked(DateTime? pickedDate) {
  // Add your function code here!
  if (pickedDate != null) {
    return pickedDate;
  }
  return DateTime.now();
}

bool hasImgFile(String? imgPath) {
  // Add your function code here!
  return imgPath != null && imgPath != "";
}

bool isMatchDates(
  DateTime? fromdate,
  DateTime? todate,
  List<DocumentReference>? collection,
) {
  // Add your function code here!

  return false;
}
