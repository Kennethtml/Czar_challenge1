import 'package:czar_challenge/data/categories_data.dart';
import 'package:czar_challenge/models/category_model.dart';
import 'package:czar_challenge/widgets/category_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return 
    
        
           Padding(
             padding: const EdgeInsets.symmetric(
              horizontal: 16, vertical: 1
             ),
             child: Column(
              
               children: [
                const Row(
                  
                  children: [Text('Your \nLearning Sphere',style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold
                  ),),
                  Spacer(),
                  Icon(Icons.arrow_circle_down)],
           
                ),
                const SizedBox(height:40 ,),
                 Expanded(
                   child: GridView(


                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 2.2    / 2,
                          crossAxisSpacing: 30,
                          mainAxisSpacing: 30),
                          children: [
                            for( var item in categoryData)
                            CategoryItem(categoryItem:item)
                          ]
                          ),
                 ),
               ],
             ),
           );
        
      
    
  }
}

