import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_clone/core/theme/app_colors.dart';
import 'package:spotify_clone/core/theme/app_font_size.dart';

import 'package:spotify_clone/home/view/player_view.dart';
import 'package:spotify_clone/widget/custom_app_text.dart';
import 'package:spotify_clone/widget/custom_spacing.dart';

import '../../../../core/constants/app_images.dart';

import '../data/model/playlist_model.dart';
import '../view_model/audio_player_view_model.dart';
import '../view_model/playlist_view_model.dart';

class PlaylistScreen extends StatelessWidget {
  PlaylistScreen({super.key});

  final controller = Get.find<PlaylistViewModel>();
  final audioController = Get.find<AudioPlayerViewModel>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.black,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: AppColors.white),
            onPressed: () => Get.back(),
          ),
          centerTitle: true,
          title: AppText(
            text: "Hany Singh",
            color: AppColors.white,
            fontSize: AppFont.fontSize14,
            textAlign: TextAlign.center,
          ),
          actions: [Icon(Icons.more_vert, color: AppColors.white)],
        ),

        backgroundColor: AppColors.black,
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Stack(
            children: [
              VerticalSpace(20),
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    VerticalSpace(30),
                    Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          AppImages.hany,
                          height: 300,
                          width: 300,
                        ),
                      ),
                    ),
                    VerticalSpace(30),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: playListItems.length,
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          controller.title.value = playListItems[index].title;
                          controller.songDescription.value =
                              playListItems[index].songDescription;
                          controller.image.value = playListItems[index].image;
                          audioController.isSpeedUp.value = false;
                          audioController.changeAudio(
                            playListItems[index].audioPath,
                          );
                          controller.toggleContainer();
                        },

                        child: ListTile(
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              playListItems[index].image,
                              height: 50,
                              width: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                          title: AppText(
                            text: playListItems[index].title,
                            color: AppColors.white,
                            fontSize: AppFont.fontSize16,
                            fontWeight: AppFont.fontWeight500,
                          ),
                          subtitle: AppText(
                            text: playListItems[index].songDescription,
                            color: AppColors.white,
                            fontSize: AppFont.fontSize14,
                          ),
                          trailing: Icon(
                            Icons.more_vert,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Obx(() {
                return controller.isContainer.value
                    ? Positioned(
                        left: 5,
                        right: 5,
                        bottom: 5,
                        child: GestureDetector(
                          onTap: () {
                            Get.bottomSheet(
                              DraggableScrollableSheet(
                                initialChildSize: 1.0,
                                minChildSize: 0.3,
                                maxChildSize: 1.0,
                                builder: (_, controller) {
                                  return PlayerScreen();
                                },
                              ),
                              isScrollControlled: true,
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.blackishGrey,
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            height: 60,
                            child: Row(
                              spacing: 10,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    controller.image.value,
                                    height: 50,
                                    width: 50,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AppText(
                                      text: controller.title.value,
                                      color: AppColors.white,
                                      fontSize: AppFont.fontSize14,
                                      fontWeight: AppFont.fontWeight500,
                                    ),
                                    AppText(
                                      overflow: TextOverflow.ellipsis,
                                      text: controller.songDescription.value,
                                      color: AppColors.white,
                                      fontSize: AppFont.fontSize12,
                                    ),
                                  ],
                                ),

                                Spacer(),
                                Obx(() {
                                  return IconButton(
                                    icon: Icon(
                                      audioController.isPlaying.value
                                          ? Icons.pause_circle_filled
                                          : Icons.play_circle_fill,
                                      size: 40,
                                      color: AppColors.white,
                                    ),
                                    onPressed: () {
                                      audioController.isPlaying.value
                                          ? audioController.pauseAudio()
                                          : audioController.playAudio();
                                    },
                                  );
                                }),
                              ],
                            ),
                          ),
                        ),
                      )
                    : SizedBox.shrink();
              }),
            ],
          ),
        ),
      ),
    );
  }
}
