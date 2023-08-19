import 'package:exam_app/core/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/app_assets.dart';
import '../../../../../core/app_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    //!logo
                    Image.asset(
                      AppAssets.logo,
                      height: 83.h,
                      width: 100.w,
                    ),
                    Text(
                      AppStrings.appName,
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    SizedBox(
                      height: 33.h,
                    ),
                    //! text login
                    Text(
                      AppStrings.login,
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge!
                          .copyWith(fontSize: 38),
                    ),
                    SizedBox(
                      height: 46.h,
                    ),
                    //!text field email
                    SizedBox(
                      height: 48.h,
                      width: 279.w,
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: AppStrings.emailHint,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    //!//!text field password
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 48.h,
                          width: 279.w,
                          child: const TextField(
                            decoration: InputDecoration(
                              hintText: AppStrings.passwordHint,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: InkWell(
                            onTap: () {},
                            child: Text(
                              AppStrings.forgetPassword,
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall!.copyWith(decoration: TextDecoration.underline,fontSize: 9)
                                  
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 44,
                    ),
                    //! login button
                    SizedBox(
                      height: 47.h,
                      width: 252.w,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(AppStrings.login)),
                    ),
                    SizedBox(
                      height: 44.h,
                    ),
                    //! signup?
                    Row(
                      children: [
                        Text(
                          AppStrings.dontHaveAcc,
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(color: AppColors.white),
                        ),
                        Text(
                          AppStrings.signUp,
                          style: Theme.of(context).textTheme.displaySmall,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    //! connect with
                    SizedBox(
                      width: 300.w,
                      height: 20.h,
                      child: Row(
                        children: [
                          Expanded(
                              child: Divider(
                            color: AppColors.white.withOpacity(0.21),
                          )),
                          Text(
                            AppStrings.connectWith,
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(color: AppColors.white),
                          ),
                          Expanded(
                              child: Divider(
                            color: AppColors.white.withOpacity(0.21),
                          )),
                        ],
                      ),
                    ),
                    //!circleavatar
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: Image.asset(AppAssets.twitter),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: Image.asset(AppAssets.facebook),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: Image.asset(AppAssets.google),
                        )
                      ],
                    ),
                    SizedBox(height: 20.h,),
                    //! guest
                    InkWell(
                      onTap: () {},
                      child: Text(
                        AppStrings.enterGuest,
                        style: Theme.of(context).textTheme.displaySmall!.copyWith(decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
