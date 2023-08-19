import 'package:exam_app/core/app_assets.dart';
import 'package:exam_app/core/app_color.dart';
import 'package:exam_app/core/app_strings.dart';
import 'package:exam_app/features/auth/data/model/list_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Column(
            children: [
              Image.asset(
                AppAssets.logo,
                width: 60.w,
                height: 50.h,
              ),
              Text(AppStrings.appName,
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium!
                      .copyWith(fontSize: 9))
            ],
          ),
          centerTitle: true,
          backgroundColor: AppColors.background,
        ),
        body: Column(
          children: [
            Column(
              children: [
                //!text playinh
                Text(
                  AppStrings.playing,
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  AppStrings.bookTicket,
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(fontSize: 10),
                ),
              ],
            ),
            Expanded(
              child: PageView.builder(
                itemCount: PageViewModel.HomeScreen.length,
                controller: controller,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                              PageViewModel.HomeScreen[index].imagePath),
                          SizedBox(
                            height: 16.h,
                          ),
                           Positioned
                           (
                            bottom: 20,
                            child: Text(
                              PageViewModel.HomeScreen[index].title,style: Theme.of(context).textTheme.displayMedium,))
                        ],
                      )
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
