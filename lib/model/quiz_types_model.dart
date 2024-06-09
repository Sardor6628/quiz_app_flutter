import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/constants/custom_colors.dart';
import 'package:quiz_app_flutter/constants/image_path.dart';

class QuizTypesModel {
  String imagePath;
  String title;
  Color color;

  QuizTypesModel(
      {required this.imagePath, required this.title, required this.color});
}

List<QuizTypesModel> quizTypesList = [
  QuizTypesModel(
      imagePath: ImagePath.bookStack,
      title: 'Entertainment: Books',
      color: ConstantColors.bg1),
  QuizTypesModel(
      imagePath: ImagePath.film,
      title: 'Entertainment: Film',
      color: ConstantColors.bg2),
  QuizTypesModel(
      imagePath: ImagePath.spotify,
      title: 'Entertainment: Music',
      color: ConstantColors.bg3),
  QuizTypesModel(
      imagePath: ImagePath.cricket, title: 'Sports', color: ConstantColors.bg4),
  QuizTypesModel(
      imagePath: ImagePath.art, title: 'Art', color: ConstantColors.bg1),
  QuizTypesModel(
      imagePath: ImagePath.politics,
      title: 'Politics',
      color: ConstantColors.bg2),
  QuizTypesModel(
      imagePath: ImagePath.mythology,
      title: 'Mythology',
      color: ConstantColors.bg3),
  QuizTypesModel(
      imagePath: ImagePath.anime,
      title: 'Entertainment: Japanese Anime & Manga',
      color: ConstantColors.bg4),
  QuizTypesModel(
      imagePath: ImagePath.history,
      title: 'History',
      color: ConstantColors.bg1),
  QuizTypesModel(
      imagePath: ImagePath.science,
      title: 'Science',
      color: ConstantColors.bg2),
];
