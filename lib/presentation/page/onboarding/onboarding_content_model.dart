import 'package:badlo/presentation/core/constants.dart';

class OnBoardingContent {
  String image;
  String title;
  String description;

  OnBoardingContent(
      {required this.image, required this.title, required this.description});
}

List<OnBoardingContent> contents = [
  OnBoardingContent(
      title: 'Bored of something?',
      image: ImagesPath.quality,
      description:
          "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "
          "industry's standard dummy text ever since the 1500s"),
  OnBoardingContent(
      title: 'Auction per chiz lagao or paisay kamao!',
      image: ImagesPath.reward,
      description:
          "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "
          "industry's standard dummy text ever since the 1500s"),
  OnBoardingContent(
      title: 'Donation made easy!',
      image: ImagesPath.delivery,
      description:
          "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "
          "industry's standard dummy text ever since the 1500s,"),
];
