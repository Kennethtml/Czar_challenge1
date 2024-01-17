import 'package:czar_challenge/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.categoryItem});
  final Category categoryItem;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: Theme.of(context).colorScheme.primary)),
      color: Theme.of(context).scaffoldBackgroundColor,
      surfaceTintColor: Theme.of(context).scaffoldBackgroundColor,
      elevation: 0.0,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(categoryItem.image),
            const SizedBox(height: 5),
            Text(categoryItem.caption,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(height: 5),
            Text(
              'You completed ${categoryItem.progress}% ',
            ),
            const SizedBox(height: 10),
            LinearProgressIndicator(
              backgroundColor: Colors.grey,
              value: categoryItem.progress / 100,
              minHeight: 8,
              borderRadius: BorderRadius.circular(10),
              valueColor:
                  AlwaysStoppedAnimation(Theme.of(context).colorScheme.primary),
            )
          ],
        ),
      ),
    );
  }
}
