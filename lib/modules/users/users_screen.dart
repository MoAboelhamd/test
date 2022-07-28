import 'package:flutter/material.dart';
class UserModel {
  final int id;
  final String name;
  final String phone;

  UserModel({
  required this.id,
  required this.name,
  required this.phone,
});
}

class UsersScreen extends StatelessWidget {
  List<UserModel> users =[
    UserModel(
        id: 1,
        name: 'mohamed hussien',
        phone: '+201111368774'
    ),
    UserModel(
        id: 2,
        name: 'ahmed hussien',
        phone: '+201111368114'
    ),
    UserModel(
        id: 3,
        name: 'amr hussien',
        phone: '+201111368224'
    ),
    UserModel(
        id: 4,
        name: 'yasser hussien',
        phone: '+201111368554'
    ),
    UserModel(
        id: 5,
        name: 'mahmoud hussien',
        phone: '+201111368664'
    ),
    UserModel(
        id: 6,
        name: 'ashour hussien',
        phone: '+201111368994'
    ),
  ];
 // const UsersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Users',
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context,index) => buildUserItem(users[index]),
          separatorBuilder: (context,index) => Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 20.0,
            ),
            child: Container(
              width: double.infinity,
              height: 1.0,
              color: Colors.grey[300],

            ),
          ),
          itemCount: users.length,)

    );
  }
  Widget buildUserItem(UserModel users) => Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 25.0,
          child: Text(
            '${users.id}',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${users.name}',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${users.phone}',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
