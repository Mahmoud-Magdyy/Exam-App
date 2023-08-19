import 'package:exam_app/core/app_color.dart';
import 'package:exam_app/core/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TicketsComponent extends StatelessWidget {
   const TicketsComponent({super.key, required this.poster, required this.title, required this.time, required this.car});
  final String poster;
  final String title;
  final String time;
  final String car;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400.w,
      height: 200.h,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 0),
            width: 100.w,
            height: 150.h,
            child: Image.asset(
              poster,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: 150.h,
            width: 150.w,
            child: Column(
              children: [
                //!title
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontSize: 12),
                ),
                  ],
                ),
                SizedBox(
                  height: 12.h,
                ),
                //!time
                Row(
                  children: [
                    const Icon(
                      Icons.timer,
                      size: 20,
                      color: AppColors.white,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      time,
                      style: Theme.of(context).textTheme.bodySmall,
                    )
                  ],
                ),
                SizedBox(
                  height: 12.h,
                ),
                //!car
                Row(
                  children: [
                    const Icon(
                      Icons.car_crash,
                      size: 20,
                      color: AppColors.white,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      car,
                      style: Theme.of(context).textTheme.bodySmall,
                    )
                  ],
                ),
                SizedBox(
                  height: 13.h,
                ),
                //!view button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(AppStrings.viewTicket)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
