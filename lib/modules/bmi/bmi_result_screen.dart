import 'package:flutter/material.dart';
import 'package:test_app/modules/bmi/bmi_screen.dart';

class BmiResultScreen extends StatelessWidget {

  final int result ;
  final bool isMale ;
  final int age ;

  BmiResultScreen({
    required this.result,
    required this.isMale,
    required this.age
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: ()
          {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.keyboard_arrow_left,
          ),
        ),
        title: Center(
          child: Text(
            'BMI Result',
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/images/Bmi..jpg'),
              height: 250.0,
              width: 450.0,
            ),
            Text(
              'Gender : ${isMale ? 'Male' : "Female"}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),
            Text(
              'Result : ${result}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),
            Text(
              'Age : ${age}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
