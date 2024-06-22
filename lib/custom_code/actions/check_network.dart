// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:connectivity_plus/connectivity_plus.dart';

Future<bool> checkNetwork() async {
  // Add your function code here!
  Connectivity connection = Connectivity();

  try {
    final connectivityResult = await connection.checkConnectivity();

    if (connectivityResult.first == ConnectivityResult.none) {
      return false;
    } else if (connectivityResult.first == ConnectivityResult.vpn) {
      return false;
    } else if (connectivityResult.first == ConnectivityResult.other) {
      return false;
    }
  } catch (e) {
    return false;
  }

  return true;
}
