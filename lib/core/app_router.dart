// import 'package:go_router/go_router.dart';
// import 'package:newsapp/features/home_view_screen/data/data_source/news_services.dart';
// import 'package:newsapp/features/home_view_screen/presentaion/business_logic/news_cubit.dart';
// import 'package:newsapp/features/home_view_screen/presentaion/screens/home_screen_view.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// abstract class AppRouter {
//   static const kHomeView = '/homeView';
//
//   static final router = GoRouter(
//     routes: [
//       GoRoute(
//         path: '/',
//         builder: (context, state) => BlocProvider<NewsCubit>(
//             lazy: false,
//             create: (context) => NewsCubit(TopHeadLineNewsSevices()),
//             child: const HomeScreenView()),
//       ),
//       // GoRoute(
//       //   path: kHomeView,
//       //   builder: (context, state) => const HomeView(),
//       // ),
//     ],
//   );
// }
