import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/theme/theme.dart';
import '../features/task/presentation/screens/home_screen/home_screen.dart';
import '../features/task/presentation/screens/tickets_screen/ticket_screen.dart';


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
        home:   const TicketScreen(),
      );
      }
    );
  }
}