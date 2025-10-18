import 'package:open_fashion/Core/assets.dart';

class CoverModel {
  final String img, name;

  CoverModel({required this.img, required this.name});
  static List<CoverModel> covers = [
    CoverModel(img: Assets.imgsYouMayAlsoLike1, name: 'Black collection'),
    CoverModel(img: Assets.imgsYouMayAlsoLike2, name: 'HAE BY HAEKIM'),
  ];
}
