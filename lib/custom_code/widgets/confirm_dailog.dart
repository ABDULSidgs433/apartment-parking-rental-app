// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '../actions/index.dart'; // Imports custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';

// Begin custom widget code
class ConfirmDailog extends StatefulWidget {
  const ConfirmDailog({
    Key? key,
    this.width,
    this.height,
    this.titlename,
    this.msg,
    required this.confirm,
    this.actionConfirmBtn,
    this.actionCancelBtn,
    this.actionBtn,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? titlename;
  final String? msg;
  final Future<dynamic> Function() confirm;
  final String? actionConfirmBtn;
  final String? actionCancelBtn;
  final String? actionBtn;

  @override
  ConfirmDailogState createState() => ConfirmDailogState();
}

class ConfirmDailogState extends State<ConfirmDailog> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      color: const Color(0xff664875),
      child: Text(
        "${widget.actionBtn}",
        style: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
      ),
      onPressed: () {
        showMyDialog(context);
      },
    );
  }

  showMyDialog(context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text("${widget.titlename}".toUpperCase(),
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
              IconButton(
                  icon: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child:
                        const Icon(Icons.cancel, size: 22.5, color: Colors.red),
                  ),
                  onPressed: () => Navigator.of(context).pop()),
            ],
          ),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 5,
            ),
            Text(" ${widget.msg}",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 14,
                    fontWeight: FontWeight.w600))
          ],
        ),
        actions: [
          MaterialButton(
            child: Text("${widget.actionCancelBtn}",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 14,
                    fontWeight: FontWeight.w700)),
            onPressed: () => Navigator.of(context).pop(),
          ),
          MaterialButton(
            child: Text("${widget.actionConfirmBtn}",
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 14,
                    fontWeight: FontWeight.w700)),
            onPressed: () => widget.confirm(),
          ),
        ],
      ),
    );
  }
}
