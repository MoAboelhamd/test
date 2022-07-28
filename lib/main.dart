// import 'package:flutter/material.dart';
// import 'package:test_app/Home_screen.dart';
//
// import 'login_screen.dart';
//
//
//
// void main() {
//   runApp(MyApp());
// }
// class MyApp extends StatelessWidget
// {
//   @override
//   Widget build(BuildContext context)
//   {
//     return MaterialApp
//       (
//       debugShowCheckedModeBanner: false,
//       home:LoginScreen() ,
//       );
//   }

//}

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test_app/layout/news_app/cubit/cubit.dart';
import 'package:test_app/layout/news_app/news_layout.dart';
import 'package:test_app/modules/home/home_screen.dart';
import 'package:test_app/modules/bmi/bmi_result_screen.dart';
import 'package:test_app/modules/bmi/bmi_screen.dart';
import 'package:test_app/modules/counter/counter_screen.dart';
import 'package:test_app/modules/login/login_screen.dart';
import 'package:test_app/modules/messenger/messenger_screen.dart';
import 'package:test_app/modules/users/users_screen.dart';
import 'package:test_app/shared/cubit/cubit.dart';
import 'package:test_app/shared/cubit/states.dart';
import 'package:test_app/shared/network/local/cache_helper.dart';
import 'package:test_app/shared/network/remote/dio_helper.dart';
import 'package:test_app/shared/styles/themes.dart';

import 'layout/home_layout.dart';
import 'modules/shop_app/on_boarding/on_boarding_screen.dart';
import 'shared/bloc_observer.dart';


void main()async
{
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  await CacheHelper.init();
  bool? isDark = CacheHelper.getBoolean(key: 'isDark');
  runApp(MyApp(isDark!));
}

// Stateless
// Stateful

// class MyApp

class MyApp extends StatelessWidget
{
  // constructor
  // build
  late final bool isDark ;
  MyApp(this.isDark);

  @override
  Widget build(BuildContext context)
  {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) =>NewsCubit()..getBusiness()..getSports()..getScience()),
        BlocProvider(create: (BuildContext context) => AppCubit()..changeAppMode(
        fromShared: isDark ,),),
      ],
      child: BlocConsumer<AppCubit , AppStates>(
        listener: (context , state) {},
        builder: (context , state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: AppCubit.get(context).isDark ? ThemeMode.dark :ThemeMode.light,
            home:HomeLayout(),
          );
        },
      ),
    );
  }
}