import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage('https://www.somagnews.com/wp-content/uploads/2021/02/1-e1612968223841.jpeg'),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.black
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.camera_alt,
                size: 17.0,
                color: Colors.white,
              ),
            ),
            onPressed: (){},),
          IconButton(
            icon: CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.edit,
                size: 17.0,
                color: Colors.white,
              ),
            ),
            onPressed: (){},),
        ],


      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.grey[300],
              ),
              padding: EdgeInsets.all(5.0),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Text(
                      'Search'
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 50.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: NetworkImage('https://www.somagnews.com/wp-content/uploads/2021/02/1-e1612968223841.jpeg'),
                            ),
                            // CircleAvatar(
                            //   radius: 7.0,
                            //   backgroundColor: Colors.white,
                            // ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 2.0,
                                end: 2.0,
                              ),
                              child: CircleAvatar(
                                radius: 6.0,
                                backgroundColor: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          'Ragnar lothbrok',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: 50.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: NetworkImage('https://www.somagnews.com/wp-content/uploads/2021/02/1-e1612968223841.jpeg'),
                            ),
                            // CircleAvatar(
                            //   radius: 7.0,
                            //   backgroundColor: Colors.white,
                            // ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 2.0,
                                end: 2.0,
                              ),
                              child: CircleAvatar(
                                radius: 6.0,
                                backgroundColor: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          'Ragnar lothbrok',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: 50.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: NetworkImage('https://www.somagnews.com/wp-content/uploads/2021/02/1-e1612968223841.jpeg'),
                            ),
                            // CircleAvatar(
                            //   radius: 7.0,
                            //   backgroundColor: Colors.white,
                            // ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 2.0,
                                end: 2.0,
                              ),
                              child: CircleAvatar(
                                radius: 6.0,
                                backgroundColor: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          'Ragnar lothbrok',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: 50.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: NetworkImage('https://www.somagnews.com/wp-content/uploads/2021/02/1-e1612968223841.jpeg'),
                            ),
                            // CircleAvatar(
                            //   radius: 7.0,
                            //   backgroundColor: Colors.white,
                            // ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 2.0,
                                end: 2.0,
                              ),
                              child: CircleAvatar(
                                radius: 6.0,
                                backgroundColor: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          'Ragnar lothbrok',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: 50.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: NetworkImage('https://www.somagnews.com/wp-content/uploads/2021/02/1-e1612968223841.jpeg'),
                            ),
                            // CircleAvatar(
                            //   radius: 7.0,
                            //   backgroundColor: Colors.white,
                            // ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 2.0,
                                end: 2.0,
                              ),
                              child: CircleAvatar(
                                radius: 6.0,
                                backgroundColor: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          'Ragnar lothbrok',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: 50.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: NetworkImage('https://www.somagnews.com/wp-content/uploads/2021/02/1-e1612968223841.jpeg'),
                            ),
                            // CircleAvatar(
                            //   radius: 7.0,
                            //   backgroundColor: Colors.white,
                            // ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 2.0,
                                end: 2.0,
                              ),
                              child: CircleAvatar(
                                radius: 6.0,
                                backgroundColor: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          'Ragnar lothbrok',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: 50.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: NetworkImage('https://www.somagnews.com/wp-content/uploads/2021/02/1-e1612968223841.jpeg'),
                            ),
                            // CircleAvatar(
                            //   radius: 7.0,
                            //   backgroundColor: Colors.white,
                            // ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 2.0,
                                end: 2.0,
                              ),
                              child: CircleAvatar(
                                radius: 6.0,
                                backgroundColor: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          'Ragnar lothbrok',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: 50.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: NetworkImage('https://www.somagnews.com/wp-content/uploads/2021/02/1-e1612968223841.jpeg'),
                            ),
                            // CircleAvatar(
                            //   radius: 7.0,
                            //   backgroundColor: Colors.white,
                            // ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 2.0,
                                end: 2.0,
                              ),
                              child: CircleAvatar(
                                radius: 6.0,
                                backgroundColor: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          'Ragnar lothbrok',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: 50.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: NetworkImage('https://www.somagnews.com/wp-content/uploads/2021/02/1-e1612968223841.jpeg'),
                            ),
                            // CircleAvatar(
                            //   radius: 7.0,
                            //   backgroundColor: Colors.white,
                            // ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 2.0,
                                end: 2.0,
                              ),
                              child: CircleAvatar(
                                radius: 6.0,
                                backgroundColor: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          'Ragnar lothbrok',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: 50.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: NetworkImage('https://www.somagnews.com/wp-content/uploads/2021/02/1-e1612968223841.jpeg'),
                            ),
                            // CircleAvatar(
                            //   radius: 7.0,
                            //   backgroundColor: Colors.white,
                            // ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 2.0,
                                end: 2.0,
                              ),
                              child: CircleAvatar(
                                radius: 6.0,
                                backgroundColor: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          'Ragnar lothbrok',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: NetworkImage('https://www.somagnews.com/wp-content/uploads/2021/02/1-e1612968223841.jpeg'),
                            ),
                            // CircleAvatar(
                            //   radius: 7.0,
                            //   backgroundColor: Colors.white,
                            // ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 2.0,
                                end: 2.0,
                              ),
                              child: CircleAvatar(
                                radius: 6.0,
                                backgroundColor: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ragnar lothbrok',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Hellow my name is Ragnar lothbork and iam from falhalla',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0,
                                    ),
                                    child: Container(
                                      width: 6.0,
                                      height: 6.0,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '02:35 pm',
                                  ),

                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: NetworkImage('https://www.somagnews.com/wp-content/uploads/2021/02/1-e1612968223841.jpeg'),
                            ),
                            // CircleAvatar(
                            //   radius: 7.0,
                            //   backgroundColor: Colors.white,
                            // ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 2.0,
                                end: 2.0,
                              ),
                              child: CircleAvatar(
                                radius: 6.0,
                                backgroundColor: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ragnar lothbrok',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Hellow my name is Ragnar lothbork and iam from falhalla',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0,
                                    ),
                                    child: Container(
                                      width: 6.0,
                                      height: 6.0,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '02:35 pm',
                                  ),

                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: NetworkImage('https://www.somagnews.com/wp-content/uploads/2021/02/1-e1612968223841.jpeg'),
                            ),
                            // CircleAvatar(
                            //   radius: 7.0,
                            //   backgroundColor: Colors.white,
                            // ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 2.0,
                                end: 2.0,
                              ),
                              child: CircleAvatar(
                                radius: 6.0,
                                backgroundColor: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ragnar lothbrok',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Hellow my name is Ragnar lothbork and iam from falhalla',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0,
                                    ),
                                    child: Container(
                                      width: 6.0,
                                      height: 6.0,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '02:35 pm',
                                  ),

                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: NetworkImage('https://www.somagnews.com/wp-content/uploads/2021/02/1-e1612968223841.jpeg'),
                            ),
                            // CircleAvatar(
                            //   radius: 7.0,
                            //   backgroundColor: Colors.white,
                            // ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 2.0,
                                end: 2.0,
                              ),
                              child: CircleAvatar(
                                radius: 6.0,
                                backgroundColor: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ragnar lothbrok',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Hellow my name is Ragnar lothbork and iam from falhalla',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0,
                                    ),
                                    child: Container(
                                      width: 6.0,
                                      height: 6.0,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '02:35 pm',
                                  ),

                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: NetworkImage('https://www.somagnews.com/wp-content/uploads/2021/02/1-e1612968223841.jpeg'),
                            ),
                            // CircleAvatar(
                            //   radius: 7.0,
                            //   backgroundColor: Colors.white,
                            // ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 2.0,
                                end: 2.0,
                              ),
                              child: CircleAvatar(
                                radius: 6.0,
                                backgroundColor: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ragnar lothbrok',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Hellow my name is Ragnar lothbork and iam from falhalla',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0,
                                    ),
                                    child: Container(
                                      width: 6.0,
                                      height: 6.0,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '02:35 pm',
                                  ),

                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: NetworkImage('https://www.somagnews.com/wp-content/uploads/2021/02/1-e1612968223841.jpeg'),
                            ),
                            // CircleAvatar(
                            //   radius: 7.0,
                            //   backgroundColor: Colors.white,
                            // ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 2.0,
                                end: 2.0,
                              ),
                              child: CircleAvatar(
                                radius: 6.0,
                                backgroundColor: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ragnar lothbrok',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Hellow my name is Ragnar lothbork and iam from falhalla',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0,
                                    ),
                                    child: Container(
                                      width: 6.0,
                                      height: 6.0,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '02:35 pm',
                                  ),

                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: NetworkImage('https://www.somagnews.com/wp-content/uploads/2021/02/1-e1612968223841.jpeg'),
                            ),
                            // CircleAvatar(
                            //   radius: 7.0,
                            //   backgroundColor: Colors.white,
                            // ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 2.0,
                                end: 2.0,
                              ),
                              child: CircleAvatar(
                                radius: 6.0,
                                backgroundColor: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ragnar lothbrok',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Hellow my name is Ragnar lothbork and iam from falhalla',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0,
                                    ),
                                    child: Container(
                                      width: 6.0,
                                      height: 6.0,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '02:35 pm',
                                  ),

                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: NetworkImage('https://www.somagnews.com/wp-content/uploads/2021/02/1-e1612968223841.jpeg'),
                            ),
                            // CircleAvatar(
                            //   radius: 7.0,
                            //   backgroundColor: Colors.white,
                            // ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 2.0,
                                end: 2.0,
                              ),
                              child: CircleAvatar(
                                radius: 6.0,
                                backgroundColor: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ragnar lothbrok',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Hellow my name is Ragnar lothbork and iam from falhalla',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0,
                                    ),
                                    child: Container(
                                      width: 6.0,
                                      height: 6.0,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '02:35 pm',
                                  ),

                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: NetworkImage('https://www.somagnews.com/wp-content/uploads/2021/02/1-e1612968223841.jpeg'),
                            ),
                            // CircleAvatar(
                            //   radius: 7.0,
                            //   backgroundColor: Colors.white,
                            // ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 2.0,
                                end: 2.0,
                              ),
                              child: CircleAvatar(
                                radius: 6.0,
                                backgroundColor: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ragnar lothbrok',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Hellow my name is Ragnar lothbork and iam from falhalla',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0,
                                    ),
                                    child: Container(
                                      width: 6.0,
                                      height: 6.0,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '02:35 pm',
                                  ),

                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: NetworkImage('https://www.somagnews.com/wp-content/uploads/2021/02/1-e1612968223841.jpeg'),
                            ),
                            // CircleAvatar(
                            //   radius: 7.0,
                            //   backgroundColor: Colors.white,
                            // ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 2.0,
                                end: 2.0,
                              ),
                              child: CircleAvatar(
                                radius: 6.0,
                                backgroundColor: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ragnar lothbrok',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Hellow my name is Ragnar lothbork and iam from falhalla',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0,
                                    ),
                                    child: Container(
                                      width: 6.0,
                                      height: 6.0,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '02:35 pm',
                                  ),

                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: NetworkImage('https://www.somagnews.com/wp-content/uploads/2021/02/1-e1612968223841.jpeg'),
                            ),
                            // CircleAvatar(
                            //   radius: 7.0,
                            //   backgroundColor: Colors.white,
                            // ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 2.0,
                                end: 2.0,
                              ),
                              child: CircleAvatar(
                                radius: 6.0,
                                backgroundColor: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ragnar lothbrok',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Hellow my name is Ragnar lothbork and iam from falhalla',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0,
                                    ),
                                    child: Container(
                                      width: 6.0,
                                      height: 6.0,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '02:35 pm',
                                  ),

                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),

    );
  }
}
