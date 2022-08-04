import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:security_guard/Screens_UI/Employe_Management/Add_Employee.dart';
import 'package:security_guard/Widgets/ThemeWidget.dart';

class Employee_List extends StatefulWidget {
  const Employee_List({Key? key}) : super(key: key);

  @override
  State<Employee_List> createState() => _Employee_ListState();
}

class _Employee_ListState extends State<Employee_List> {
  @override
  Widget build(BuildContext context) {
    return Main_Theme1.mainTheme(
        width: MediaQuery.of(context).size.width,
        actionList: [
          Image(
            image: AssetImage('Assets/Images/employeesearch.png'),
          ),
        ],
        onpress: () {
          Add_Employee().launch(context);
        },
        pageName: "Employee List",
        widget: SingleChildScrollView(
          child: Column(
            children: [
              Image(
                image: AssetImage('Assets/Images/empty.png'),
              ),
              Text("No Data", style: TextStyle(fontSize: 25),)
            ],
          ),
        ),
        icononpress: () {
          Navigator.pop(context);
        });
  }
}
