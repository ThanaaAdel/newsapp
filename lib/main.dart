import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/features/home_view_screen/data/data_source/news_services.dart';
import 'package:newsapp/features/home_view_screen/presentaion/business_logic/news_cubit.dart';
import 'package:newsapp/features/home_view_screen/presentaion/screens/home_screen_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<NewsCubit>(
      lazy: false,
      create: (context) => NewsCubit(TopHeadLineNewsSevices()),
      child: MaterialApp(

        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),home: const HomeScreenView(),
      ),
    );
  }
}
