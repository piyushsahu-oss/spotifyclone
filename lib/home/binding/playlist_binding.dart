import 'package:get/get.dart';
import '../view_model/audio_player_view_model.dart';
import '../view_model/playlist_view_model.dart';


class PlaylistBinding extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut<PlaylistViewModel>(()=> PlaylistViewModel());
   Get.lazyPut<AudioPlayerViewModel>(() => AudioPlayerViewModel());
  }

}