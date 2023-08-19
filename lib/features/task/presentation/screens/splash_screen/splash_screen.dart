import 'package:exam_app/features/task/presentation/screens/login_screen/login_screen.dart';
import 'package:flutter/material.dart';

import '../../../../../core/app_assets.dart';
import '../../../../../core/app_strings.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
 @override
  void initState() {
    
    super.initState();
    navigate();
  }

void navigate() {
  Future.delayed(const Duration(seconds: 3),(){       //isVisited? const HomeScreen():OnBoaringScreen())
      Navigator.push(context, MaterialPageRoute(builder: (_)=>  const LoginScreen()));
  });
}


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppAssets.logo),
               const SizedBox(height: 16,),
                Text(AppStrings.appName,style: Theme.of(context).textTheme.displayLarge,)
            ],
          ),
        ),
    );
  }
}