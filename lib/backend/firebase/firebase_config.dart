import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC-z6WD6QKgoJsCISeUilOo2doRROPiyes",
            authDomain: "milk2-32695.firebaseapp.com",
            projectId: "milk2-32695",
            storageBucket: "milk2-32695.appspot.com",
            messagingSenderId: "328179132737",
            appId: "1:328179132737:web:191b27805d3d0456ed19c0",
            measurementId: "G-ZSFD6WJZTX"));
  } else {
    await Firebase.initializeApp();
  }
}
