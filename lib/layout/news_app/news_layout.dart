import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/layout/news_app/cubit/cubit.dart';
import 'package:test_app/layout/news_app/cubit/states.dart';
import 'package:test_app/modules/search/search_screen.dart';
import 'package:test_app/shared/components/components.dart';
import 'package:test_app/shared/cubit/cubit.dart';
import 'package:test_app/shared/network/remote/dio_helper.dart';

class NewsLayout extends StatelessWidget
{
  const NewsLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return BlocConsumer<NewsCubit , NewsStates>(
      listener: (context , states){},
      builder: (context , states)
      {
        var cubit = NewsCubit.get(context);

        return Scaffold(
          appBar: AppBar(
           title: Text(
             'News App',
           ),
            actions: [
              IconButton(
                onPressed: ()
                {
                  navigateTo(context, SearchScreen(),);
                },
                icon: Icon(Icons.search_rounded),
              ),
              IconButton(
                onPressed: (){
                  AppCubit.get(context).changeAppMode();
                },
                icon: Icon(Icons.brightness_4_outlined),
              ),
            ],
          ),
           body: cubit.screens[cubit.currentIndex],
           bottomNavigationBar: BottomNavigationBar(
            currentIndex: cubit.currentIndex,
             onTap: (index)
             {
               cubit.changeBottomNavBar(index);
             },
             items: cubit.bottomItems,
      ),
    );
      },
    );
  }
}
