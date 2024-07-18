import 'package:flutter/material.dart';

class Models extends StatelessWidget{//class to difine mosels
  const Models({
    required this.title,
    required this.data,
    required this.HR_AVG,
    required this.sp_AVG,
    required this.sprint,
    required this.dis,
  });
  final String title;
  final String data;
  final String HR_AVG;
  final String sp_AVG;
  final String sprint;
  final String dis;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}