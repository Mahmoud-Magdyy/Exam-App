import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/theme/theme.dart';
import '../features/task/presentation/screens/login_screen/login_screen.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: const Size(360, 800),
      builder: (context, child){
       return  MaterialApp(
        theme: getAppTheme(),
        debugShowCheckedModeBanner: false,
        home:  LoginScreen(),
      );
      }
    );
  }
}