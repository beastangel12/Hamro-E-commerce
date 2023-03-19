import 'package:angel_ecommerce/ui/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp(),
  );
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: (BuildContext context,widget) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Hamro E-Commerce',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: GoogleFonts.latoTextTheme(),
          ),
          home: SplashScreen(),
        );
      },
    );
  }
}
