import 'package:flutter/material.dart';
class BMIResultScreen extends StatelessWidget {


  final int result;
  final bool isMale;
  final int age;

  // ignore: must_be_immutable
  const BMIResultScreen({Key? key,

     required this.result,
     required this.isMale,
     required this.age,
}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI Result'
        ),
        leading: IconButton(
          onPressed: ()
          {
          Navigator.pop(context);
          },
          icon: const Icon(
            Icons.keyboard_arrow_left,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            Text(
              'Gender: ${ isMale ? 'Male' : 'Female' }',
              style: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Result: $result',
              style: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Age: $age',
              style: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
