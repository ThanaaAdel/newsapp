import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/constant/colors.dart';
import 'package:newsapp/features/home_view_screen/presentaion/business_logic/news_cubit.dart';
import 'package:newsapp/features/home_view_screen/presentaion/screens/widget/news_list_view.dart';

class NewListViewBuilder extends StatelessWidget {


  const NewListViewBuilder({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<NewsCubit>(context).getTopHeadLinesNews(category: category);
    return      BlocBuilder<NewsCubit,NewsState>(
        builder: (context, state) {
          if(state is NewsTopHeadLineLoaded){
            return   NewsListView(
              articles: state.topHeadLineNew!,
            );
          }
          else if(state is FeaturedNewsFailure){
           return  Text(state.errMessage,style:  const TextStyle(color: ColorsClass.kPrimaryColorBlack),);
          }
          else if(state is FeaturedNewsLoading){
            return const Center(child: CircularProgressIndicator(),);
          }
          else{
            return const Text('error');
          }
        },

      );


  }
}
