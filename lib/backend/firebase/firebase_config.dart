import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBYFWqlJzEaFbZXwqa0ferdPTAaEeMYseU",
            authDomain: "learning-flutterflow-8c9fb.firebaseapp.com",
            projectId: "learning-flutterflow-8c9fb",
            storageBucket: "learning-flutterflow-8c9fb.appspot.com",
            messagingSenderId: "48682533418",
            appId: "1:48682533418:web:88267ab5350b3d3b2e7953",
            measurementId: "G-XFWZEYQ7DP"));
  } else {
    await Firebase.initializeApp();
  }
}
