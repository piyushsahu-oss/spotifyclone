import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';

class AudioPlayerViewModel extends GetxController {
  final audioPlayer = AudioPlayer();

  var currentPosition = Duration.zero.obs;
  var totalDuration = Duration.zero.obs;
  var isPlaying = false.obs;
  var audioPath = 'asset/audio/song.mp3'.obs;
  var isSpeedUp = false.obs;
  @override
  void onInit() {
    super.onInit();
    audioPlayer.setAsset(audioPath.value).then((duration) {
      totalDuration.value = duration ?? Duration.zero;
    });
    audioPlayer.positionStream.listen((position) {
      currentPosition.value = position;
    });
    audioPlayer.playerStateStream.listen((state) {
      isPlaying.value =
          state.playing && state.processingState == ProcessingState.ready;
    });
  }

  void skipBackward() {
    final newPosition = currentPosition.value - Duration(seconds: 15);

    if (newPosition > Duration.zero) {
      audioPlayer.seek(newPosition);
    } else {
      audioPlayer.seek(Duration.zero);
    }
  }

  void skipForward() {
    final newPosition = currentPosition.value + Duration(seconds: 15);

    if (newPosition < totalDuration.value) {
      audioPlayer.seek(newPosition);
    } else {
      audioPlayer.seek(totalDuration.value);
    }
  }

  void playAudio() {
    audioPlayer.play();
  }

  void pauseAudio() {
    audioPlayer.pause();
  }


  void seekAudio(double value) {
    audioPlayer.seek(Duration(seconds: value.toInt()));
  }

  void setPlaybackSpeed( ){
    int value = isSpeedUp.value ? 2 : 1 ;
    audioPlayer.setSpeed(value.toDouble());
  }

  Future<void> changeAudio(String path) async {
    try {
      await audioPlayer.stop();
      audioPath.value = path;
      Duration? duration = await audioPlayer.setAsset(path);
      totalDuration.value = duration ?? Duration.zero;
      currentPosition.value = Duration.zero;
      await audioPlayer.play();
    } catch (e) {
      print("Error while changing audio: $e");
    }
  }

  @override
  void onClose() {
    audioPlayer.dispose();
    super.onClose();
  }
}
