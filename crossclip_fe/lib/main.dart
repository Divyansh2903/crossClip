import 'package:crosslip_fe/firebase_options.dart';
import 'package:crosslip_fe/src/common/constants/dev_consts.dart';
import 'package:crosslip_fe/src/home/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const CrossClipApp());
}

class CrossClipApp extends StatelessWidget {
  const CrossClipApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      designSize: DevConsts.designSize,
      child: MaterialApp(
        title: 'CrossClip',
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
