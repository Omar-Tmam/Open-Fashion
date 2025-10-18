import 'package:flutter/material.dart';
import 'package:open_fashion/Features/home_view/data/models/cover_model.dart';
import 'package:open_fashion/Features/home_view/presentation/views/widgets/cover_item.dart';

class CoverBuilder extends StatelessWidget {
  const CoverBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: CoverModel.covers.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: CoverItem(coverModel: CoverModel.covers[index]),
          );
        },
      ),
    );
  }
}

