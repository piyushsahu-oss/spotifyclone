import 'package:spotify_clone/core/constants/app_audio.dart';

import '../../../core/constants/app_images.dart';

class PlayListModel {
  final String id;
  final String title;
  final String songDescription;
  final String image;
  final String audioPath;

  PlayListModel({
    required this.id,
    required this.title,
    required this.songDescription,
    required this.image,
    required this.audioPath,
  });
}

List<PlayListModel> playListItems = [
  PlayListModel(
    id: "1",
    title: "Kesariya",
    songDescription: "Arijit Singh",
    image: AppImages.hany,
    audioPath: AppAudio.song1,
  ),
  PlayListModel(
    id: "2",
    title: "Tum Hi Ho",
    songDescription: "Arijit Singh",
    image: AppImages.hany,
    audioPath: AppAudio.song2,
  ),
  PlayListModel(
    id: "3",
    title: "Channa Mereya",
    songDescription: "Arijit Singh",
    image: AppImages.hany,
    audioPath: AppAudio.song1,
  ),
  PlayListModel(
    id: "4",
    title: "Raataan Lambiyan",
    songDescription: "Jubin Nautiyal & Asees Kaur",
    image: AppImages.hany,
    audioPath: AppAudio.song2,
  ),
  PlayListModel(
    id: "5",
    title: "Apna Bana Le",
    songDescription: "Arijit Singh & Sachin–Jigar",
    image: AppImages.hany,
    audioPath: AppAudio.song1,
  ),
  PlayListModel(
    id: "6",
    title: "Pasoori",
    songDescription: "Ali Sethi & Shae Gill",
    image: AppImages.hany,
    audioPath: AppAudio.song2,
  ),
  PlayListModel(
    id: "7",
    title: "Tere Vaaste",
    songDescription: "Varun Jain, Sachin–Jigar",
    image: AppImages.hany,
    audioPath: AppAudio.song1,
  ),
  PlayListModel(
    id: "8",
    title: "O Sajni Re",
    songDescription: "Arijit Singh",
    image: AppImages.hany,
    audioPath: AppAudio.song2,
  ),
  PlayListModel(
    id: "9",
    title: "Lutt Putt Gaya",
    songDescription: "Arijit Singh",
    image: AppImages.hany,
    audioPath: AppAudio.song1,
  ),
  PlayListModel(
    id: "10",
    title: "Heeriye",
    songDescription: "Arijit Singh & Jasleen Royal",
    image: AppImages.hany,
    audioPath: AppAudio.song2,
  ),
];
