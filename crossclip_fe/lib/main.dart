import 'package:crosslip_fe/firebase_options.dart';
import 'package:crosslip_fe/src/clipboard/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(CrossClipApp());
}

class CrossClipApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CrossClip',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
