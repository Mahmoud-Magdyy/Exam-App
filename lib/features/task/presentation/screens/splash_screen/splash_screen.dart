import 'package:flutter/material.dart';

import '../../../../../core/app_assets.dart';
import '../../../../../core/app_strings.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

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