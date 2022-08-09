// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';

// Begin custom action code
Future showMyDialog(String titlename, String msg, BuildContext context) async {
  // Add your function code here!

  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => AlertDialog(
      title: Container(
        height: 65,
        color: const Color(0xff664875),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text("${titlename}",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700)),
            IconButton(
                icon: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.cancel, size: 30, color: Colors.red),
                ),
                onPressed: () => Navigator.of(context).pop()),
          ],
        ),
      ),
      actions: [
        MaterialButton(
          child: const Text("Cancel",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700)),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ],
    ),
  );
}
