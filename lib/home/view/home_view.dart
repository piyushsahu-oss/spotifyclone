import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_clone/core/theme/app_colors.dart';
import 'package:spotify_clone/core/theme/app_font_size.dart';
import 'package:spotify_clone/widget/custom_app_text.dart';
import 'package:spotify_clone/widget/custom_button.dart';

import '../../../../core/constants/app_images.dart';
import '../../../../core/routes/routes.dart';
import '../../../../widget/custom_spacing.dart';
import '../../dashboard/data/model/popular_radio_model.dart';


class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            spacing: 5,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VerticalSpace(30),
              Row(
                spacing: 8,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: AppColors.orange,
                      child: AppText(text: "H", color: AppColors.black),
                    ),
                  ),
                  CustomButton(
                      title: "All",
                      onTap: (){},
                      backgroundColor: AppColors.green,
                    borderRadius: 20,
                    textColor: AppColors.black,
                      paddingVertical: 1,
                    paddingHorizontal: 20,
                  ),
                  CustomButton(
                      title: "Music",
                      onTap: (){},
                  textColor: AppColors.white,
                      backgroundColor: AppColors.blackishGrey,
                    borderColor: AppColors.white,
                    borderRadius: 20,
                  ),
                  CustomButton(
                    title: "Podcast",
                    onTap: (){},
                    textColor: AppColors.white,
                    backgroundColor: AppColors.blackishGrey,
                    borderRadius: 20,
                  )
                ],
              ),

              AppText(
                text: "Popular radio",
                color: AppColors.white,
                fontSize: AppFont.fontSize26,
              ),

              SizedBox(
                height: 250,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: popularRadios.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: 160,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  popularRadios[index].radioImage,
                                  height: 150,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                bottom: 15,
                                left: 0,
                                right: 0,
                                child: Container(
                                  alignment: Alignment.center,
                                  child: AppText(
                                    text: popularRadios[index].singerName,
                                    color: AppColors.black,
                                    fontWeight: AppFont.fontWeight800,
                                    fontSize: AppFont.fontSize16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          VerticalSpace(10),
                          AppText(
                            text: popularRadios[index].coSingers.first,
                            color: AppColors.lightGrey,
                            fontSize: AppFont.fontSize12,
                          ),
                        ],
                      ),
                    );
                  },

                ),
              ),

              AppText(
                text: "Popular artists",
                color: AppColors.white,
                fontSize: AppFont.fontSize26,
              ),
              SizedBox(
                height: 250,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: popularRadios.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: 160,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                             Get.toNamed(AppRoutes.playlist);
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(200),
                              child: Image.asset(
                                AppImages.hany,
                                height: 150,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          VerticalSpace(10),
                          AppText(
                            text: popularRadios[index].coSingers.first,
                            color: AppColors.lightGrey,
                            fontSize: AppFont.fontSize12,
                          ),
                        ],
                      ),
                    );
                  },

                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(
                    text: "Recents",
                    color: AppColors.white,
                    fontSize: AppFont.fontSize26,
                  ),
                  AppText(
                    text: "Show all",
                    color: AppColors.white,
                    fontSize: AppFont.fontSize12,

                  )
                ],
              ),
              SizedBox(
                height: 210,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: popularRadios.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: 140,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  popularRadios[index].radioImage,
                                  height: 120,
                                  width: 120,
                                  fit: BoxFit.cover,
                                ),
                              ),

                          VerticalSpace(10),
                          Row(
                            spacing: 1,
                            children: [
                              Icon(Icons.check_circle, color: AppColors.lightGreen,),
                              AppText(
                                text: popularRadios[index].coSingers.last,
                                color: AppColors.lightGrey,
                                fontSize: AppFont.fontSize12,
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },

                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
