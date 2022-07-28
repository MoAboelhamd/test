import 'dart:ui';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: Icon
          (
          Icons.menu,
          ),
        title: Text
          (
            'First App'
          ),
        actions: [
          IconButton(onPressed: ()
          {
            print('NO notifications yet');
          }, icon: Icon
            (
            Icons.notifications,
          )),
          IconButton(onPressed: ()
          {
            print('Search for any thing');
          }, icon: Icon
            (
            Icons.search,
          )),

        ],
        centerTitle: true,
        ),
      body: Column(
          children: [
       Padding(
                padding: const EdgeInsets.all(150.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Image(image:
                      NetworkImage('https://img1.goodfon.com/wallpaper/nbig/6/92/vikings-vikingi-travis-fimmel.jpg'),
                        height: 200.0,
                        width: 200.0,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 10.0
                        ),
                        width: 200.0,
                        color: Colors.black.withOpacity(0.3),
                        child: Text(
                          'Ragnar',
                          textAlign : TextAlign.center,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      );
  }

}