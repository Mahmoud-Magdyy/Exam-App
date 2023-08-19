import 'package:exam_app/core/app_color.dart';
import 'package:exam_app/core/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewTicket extends StatelessWidget {
  const ViewTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: const Text(AppStrings.viewTicket),
        centerTitle: true,
      ),
      body: Center(
        child: SizedBox(
          // color: Colors.blueAccent,

          height: 410.h,
          width: 300.w,
          child: Column(
            
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(AppStrings.movie,
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall!
                          .copyWith(color: AppColors.white)),
                  Text(
                    AppStrings.spiderNoWay,
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall!
                        .copyWith(color: AppColors.white),
                  )
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppStrings.name,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(color: AppColors.white.withOpacity(0.46)),
                      ),
                      SizedBox(height: 5.h,),
                      Text(AppStrings.ahmed,style: Theme.of(context)
                            .textTheme
                            .bodySmall),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppStrings.name,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(color: AppColors.white.withOpacity(0.46)),
                      ),
                      SizedBox(height: 5.h,),
                      Text(AppStrings.ahmed,style: Theme.of(context)
                            .textTheme
                            .bodySmall),
                    ],
                  ),
                  
                ],
              ),
               SizedBox(
                height: 25.h,
              ),
              //!2
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppStrings.date,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(color: AppColors.white.withOpacity(0.46)),
                      ),
                      SizedBox(height: 5.h,),
                      Text(AppStrings.subDate,style: Theme.of(context)
                            .textTheme
                            .bodySmall),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppStrings.time,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(color: AppColors.white.withOpacity(0.46)),
                      ),
                      SizedBox(height: 5.h,),
                      Text(AppStrings.subTime,style: Theme.of(context)
                            .textTheme
                            .bodySmall),
                    ],
                  ),
                  
                ],
              ),
               SizedBox(
                height: 25.h,
              ),
              //!3
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppStrings.nb,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(color: AppColors.white.withOpacity(0.46)),
                      ),
                      SizedBox(height: 5.h,),
                      Text(AppStrings.subNb,style: Theme.of(context)
                            .textTheme
                            .bodySmall),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppStrings.price,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(color: AppColors.white.withOpacity(0.46)),
                      ),
                      SizedBox(height: 5.h,),
                      Text(AppStrings.subPrice,style: Theme.of(context)
                            .textTheme
                            .bodySmall),
                    ],
                  ),
                  
                ],
              ),
                        
              
              
            ],
          ),
        ),
        
      ),
    );
  }
}
