import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/responsive/mobile_screen_layout.dart';
import 'package:insta_clone/responsive/responsive_leyout_screen.dart';
import 'package:insta_clone/responsive/web_screen_layout.dart';
import 'package:insta_clone/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options:const FirebaseOptions(
        apiKey: "AIzaSyCpJYhunLOHTv4NbcCENZpCHn-z6-j4tSs",
        appId: "1:824131335431:web:337679035ba95a313e81a2",
        messagingSenderId: "824131335431",
        projectId: "insta-clone-f030d",
        storageBucket: "insta-clone-f030d.appspot.com",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      home: const ResponsiveLeyout(
        webscreenLayout: WebScreenLayout(),
        mobilescreenLayout: MobileScreenLayout(),
      ),
    );
  }
}
