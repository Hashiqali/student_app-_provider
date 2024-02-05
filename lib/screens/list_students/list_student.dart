import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:student_provider/db&provider/model/db_model.dart';
import 'package:student_provider/db&provider/provider_service/provider_service.dart';
import 'package:student_provider/screens/list_students/grid_view.dart';
import 'package:student_provider/screens/list_students/list_view.dart';

class Liststudent extends StatelessWidget {
  const Liststudent({super.key});

  @override
  Widget build(BuildContext context) {
    Studentcontoller gridcontroller = Provider.of(context);
    return Consumer<Studentcontoller>(
      builder: (context, value, child) {
        final values = value.students;
        print(values);
        List<Studentmodel> reversedList = values.reversed.toList();
        return gridcontroller.isgrid == true
            ? GridviewWidget(controller: value, reversedList: reversedList)
            : Listviewmodel(controller: value, reversedList: reversedList);
      },
    );
  }
}
