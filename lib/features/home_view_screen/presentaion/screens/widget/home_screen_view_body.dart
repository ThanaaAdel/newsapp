import 'package:flutter/material.dart';
import 'package:newsapp/constant/colors.dart';
import 'package:newsapp/core/gaps.dart';
import 'package:newsapp/core/styles.dart';
import 'package:newsapp/features/home_view_screen/presentaion/screens/widget/category_card_list_view.dart';
import 'package:newsapp/features/home_view_screen/presentaion/screens/widget/news_list_view_builder.dart';

class HomeScreenViewBody extends StatelessWidget {
  const HomeScreenViewBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "News",
                style: Styles.textStyle18
                    .copyWith(color: ColorsClass.kPrimaryColorBlack),
              ),
              Text(
                "Cloud",
                style: Styles.textStyle20
                    .copyWith(color: ColorsClass.kPrimaryColorOrange),
              ),
            ],
          )),
      body:


      CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CategoryCardListView(),
          ),
          const SliverToBoxAdapter(
            child: Gaps.vGap10,
          ),

           const SliverToBoxAdapter(child: NewListViewBuilder(category:'general',)),
        ],
      ),
    );
  }
}
