import 'package:czar_challenge/data/categories_data.dart';
import 'package:czar_challenge/models/category_model.dart';
import 'package:czar_challenge/widgets/category_item.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 1),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Row(
              children: [
                Text(
                  'Your \nLearning Sphere',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Icon(Icons.arrow_circle_down),
              ],
            ),
            const SizedBox(height: 40),
            GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2.2 / 2,
                crossAxisSpacing: 30,
                mainAxisSpacing: 30,
              ),
              shrinkWrap: true, // Add this line to enable GridView to scroll inside a Column
              physics: const NeverScrollableScrollPhysics(), // Disable GridView's scrolling
              children: [
                for (var item in categoryData) CategoryItem(categoryItem: item),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
