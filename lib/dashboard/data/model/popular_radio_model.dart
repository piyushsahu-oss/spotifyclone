
import '../../../core/constants/app_images.dart';

class PopularRadioModel {
  final String singerName;
  final String radioImage;
  final List<String> coSingers;

  PopularRadioModel({
    required this.radioImage,
    required this.singerName,
    required this.coSingers
  });
}

List<PopularRadioModel> popularRadios = [
  PopularRadioModel(
    radioImage: AppImages.banner,
    singerName: 'Arijit Singh',
    coSingers: ['Shreya Ghoshal, Sonu Nigam', 'Sunidhi Chauhan'],
  ),
  PopularRadioModel(
    radioImage: AppImages.banner,
    singerName: 'Shreya Ghoshal',
    coSingers: ['Arijit Singh, Sonu Nigam, Sonu Nigam', 'Sonu Nigam'],
  ),
  PopularRadioModel(
    radioImage: AppImages.banner,
    singerName: 'Sonu Nigam',
    coSingers: ['Shreya Ghoshal,Sonu Nigam', 'Armaan Malik'],
  ),
  PopularRadioModel(
    radioImage: AppImages.banner,
    singerName: 'Neha Kakkar',
    coSingers: ['Tony Kakkar, Sonu Nigam', 'Badshah'],
  ),
  PopularRadioModel(
    radioImage: AppImages.banner,
    singerName: 'Armaan Malik',
    coSingers: ['Sonu Nigam, Sonu Nigam', 'Asees Kaur'],
  ),
  PopularRadioModel(
    radioImage: AppImages.banner,
    singerName: 'Sunidhi Chauhan',
    coSingers: ['Shreya Ghoshal, Sonu Nigam', 'Neeti Mohan'],
  ),
  PopularRadioModel(
    radioImage: AppImages.banner,
    singerName: 'Udit Narayan',
    coSingers: ['Kumar Sanu', 'Alka Yagnik'],
  ),
  PopularRadioModel(
    radioImage: AppImages.banner,
    singerName: 'Kumar Sanu',
    coSingers: ['Udit Narayan', 'Alka Yagnik'],
  ),
  PopularRadioModel(
    radioImage: AppImages.banner,
    singerName: 'Alka Yagnik',
    coSingers: ['Kumar Sanu', 'Shaan'],
  ),
  PopularRadioModel(
    radioImage: AppImages.banner,
    singerName: 'Shaan',
    coSingers: ['KK', 'Mohit Chauhan'],
  ),
];