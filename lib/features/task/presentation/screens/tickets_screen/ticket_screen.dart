import 'package:exam_app/core/app_assets.dart';
import 'package:exam_app/core/app_color.dart';
import 'package:exam_app/core/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../components/tickets_component.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.myTicket),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      AppStrings.today,
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontSize: 20,
                          color: AppColors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(AppStrings.tickets,
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(fontSize: 20, color: AppColors.white)),
                  ],
                ),
                SizedBox(
                  height: 25.h,
                ),
                
                const TicketsComponent(
                    poster: AppAssets.poster,
                    title: AppStrings.spiderNoWay,
                    time: AppStrings.timeTtile,
                    car: AppStrings.carTtile),
                    SizedBox(
                  height: 25.h,
                ),
                Row(
                  children: [
                    Text(
                      AppStrings.upcoming,
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontSize: 20,
                          color: AppColors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(AppStrings.tickets,
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(fontSize: 20, color: AppColors.white)),
                  ],
                ),



                const TicketsComponent(
                    poster: AppAssets.encanto,
                    title: AppStrings.encanto,
                    time: AppStrings.timeTtile,
                    car: AppStrings.carTtile),
                     SizedBox(
                  height: 25.h,
                ),
                const TicketsComponent(
                    poster: AppAssets.uncharted,
                    title: AppStrings.uncharted,
                    time: AppStrings.timeTtile,
                    car: AppStrings.carTtile),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
