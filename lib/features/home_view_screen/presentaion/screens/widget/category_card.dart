import 'package:flutter/material.dart';
import 'package:newsapp/constant/colors.dart';
import 'package:newsapp/core/app_router.dart';
import 'package:newsapp/core/styles.dart';
import 'package:newsapp/features/home_view_screen/data/model/category_model.dart';
import 'package:newsapp/features/home_view_screen/presentaion/screens/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({Key? key, required this.category}) : super(key: key);
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(
                category: category.categoryName,
              );
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Container(
              height: 100,
              width: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    image: AssetImage(category.image), fit: BoxFit.cover),
              ),
            ),
            Positioned(
              bottom: 10,
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: const Color(0xFF0E3311).withOpacity(0.3),
                  ),
                  child: Center(
                      child: Text(
                    category.categoryName,
                    style: Styles.textStyle20
                        .copyWith(color: ColorsClass.kPrimaryColorWhite),
                  ))),
            )
          ],
        ),
      ),
    );
  }
}
