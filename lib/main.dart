import 'package:blog_app/screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyAjagUSsZg9W-unUm0iBa5RfBD9mivv-SE",
        appId: "1:363150137114:web:ea84bfe103be9c9d8b7ea3",
        messagingSenderId: "363150137114",
        projectId: "flutterblog-app-11",
        authDomain: 'flutterblog-app-11.firebaseapp.com',
        databaseURL: 'https://flutterblog-app-11-default-rtdb.firebaseio.com',
        storageBucket: 'flutterblog-app-11.appspot.com',
      ),
    );
  }
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Blog App",
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
