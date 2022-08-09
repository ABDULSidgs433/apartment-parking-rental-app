// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '../actions/index.dart'; // Imports custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
import 'dart:math';

class VerifyCapcha extends StatefulWidget {
  VerifyCapcha({
    Key key,
    this.width,
    this.height,
    this.titlename,
    this.msg,
    this.confirm,
    this.captchaCtrl,
  }) : super(key: key);

  final double width;
  final double height;
  final String titlename;
  final String msg;
  final confirm;
  String captchaCtrl;

  @override
  _VerifyCapchaState createState() => _VerifyCapchaState();
}

class _VerifyCapchaState extends State<VerifyCapcha> {
  var captchaCtrl;
  @override
  void initState() {
    super.initState();
    captchaCtrl = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    if (captchaCtrl.text == "") {
      captchaCtrl.text = "0";
    }
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      color: const Color(0xff664875),
      child: const Text(
        "Confirm & Pay",
        style: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
      ),
      onPressed: () {
        showMyDialog(context);
      },
    );
  }

  showMyDialog(context) {
    int firstVal = Random().nextInt(10);
    int secondVal = Random().nextInt(10);
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
            Text("$firstVal  +  $secondVal",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            TextFormField(
              controller: captchaCtrl,
              onChanged: (value) {
                setState(() {
                  widget.captchaCtrl = value;
                });
              },
              decoration: InputDecoration(hintText: 'Enter capcha'),
            ),
            Text("Note : ${widget.msg}",
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 12,
                    fontWeight: FontWeight.w700))
          ],
        ),
        actions: [
          MaterialButton(
            child: const Text("Cancel",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 14,
                    fontWeight: FontWeight.w700)),
            onPressed: () => Navigator.of(context).pop(),
          ),
          MaterialButton(
            child: const Text("Verify",
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
