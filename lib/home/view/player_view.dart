import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_clone/core/theme/app_colors.dart';
import 'package:spotify_clone/core/theme/app_font_size.dart';
import 'package:spotify_clone/widget/custom_app_text.dart';
import 'package:spotify_clone/widget/custom_button.dart';
import 'package:spotify_clone/widget/custom_spacing.dart';
import '../../../../core/constants/app_images.dart';
import '../view_model/audio_player_view_model.dart';


class PlayerScreen extends StatelessWidget {
  PlayerScreen({super.key});

  final controller = Get.find<AudioPlayerViewModel>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.black,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                VerticalSpace(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back, color: AppColors.white),
                      onPressed: () => Get.back(),
                    ),
                    AppText(
                      text: "PLAYING FROM PODCAST\nThe Desi Crime Podcast",
                      color: AppColors.white,
                      fontSize: AppFont.fontSize14,
                      textAlign: TextAlign.center,
                    ),
                    Icon(Icons.more_vert, color: AppColors.white),
                  ],
                ),
                VerticalSpace(30),
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(AppImages.hany, height: 300, width: 300),
                  ),
                ),

                VerticalSpace(30),

                Obx(() {
                  return Slider(
                    thumbColor: AppColors.white,
                    value: controller.currentPosition.value.inSeconds
                        .toDouble(),
                    max: controller.totalDuration.value.inSeconds.toDouble(),
                    activeColor: AppColors.white,
                    inactiveColor: AppColors.blackishGrey,
                    onChanged: (value) {
                      controller.seekAudio(value);
                    },
                  );
                }),

                Obx(() {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(
                        text: formatDuration(controller.currentPosition.value),
                        color: AppColors.white,
                        fontSize: AppFont.fontSize12,
                      ),
                      AppText(
                        text: formatDuration(controller.totalDuration.value),
                        color: AppColors.white,
                        fontSize: AppFont.fontSize12,
                      ),
                    ],
                  );
                }),

                VerticalSpace(20),
                Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomButton(
                        title: controller.isSpeedUp.value ? "2x" : "1x",
                        paddingHorizontal: 2,
                        paddingVertical: 2,
                        backgroundColor: AppColors.white,
                        textSize: AppFont.fontSize26,
                        textColor: AppColors.black,
                        onTap: () {
                          controller.isSpeedUp.value =
                              !controller.isSpeedUp.value;
                          controller.setPlaybackSpeed();
                        },
                      ),
                    ],
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        controller.skipBackward();
                      },
                      icon: Icon(
                        Icons.replay_10,
                        color: AppColors.white,
                        size: 40,
                      ),
                    ),
                    Center(
                      child: Obx(() {
                        return IconButton(
                          icon: Icon(
                            controller.isPlaying.value
                                ? Icons.pause_circle_filled
                                : Icons.play_circle_fill,
                            size: 60,
                            color: AppColors.white,
                          ),
                          onPressed: () {
                            controller.isPlaying.value
                                ? controller.pauseAudio()
                                : controller.playAudio();
                          },
                        );
                      }),
                    ),
                    IconButton(
                      onPressed: () {
                        controller.skipForward();
                      },
                      icon: Icon(
                        Icons.forward_10,
                        color: AppColors.white,
                        size: 40,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return "$minutes:$seconds";
  }
}
