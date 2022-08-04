import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:security_guard/Constant.dart';
import 'package:security_guard/Screens_UI/Employe_Management/Employee_List.dart';
import 'package:security_guard/Screens_UI/Authentication/LoginPage.dart';
import 'package:security_guard/Widgets/ThemeWidget.dart';

class Employe_Management extends StatefulWidget {
  const Employe_Management({Key? key}) : super(key: key);

  @override
  State<Employe_Management> createState() => _Employe_ManagementState();
}

class _Employe_ManagementState extends State<Employe_Management> {
  @override
  Widget build(BuildContext context) {
    return Main_Theme.mainTheme(
      pageName: 'Employe Management',
      width: MediaQuery.of(context).size.width,
      widget: Expanded(
        child: Container(
            // height: 600,
            child: ListView(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 2,
              child: ClipPath(
                clipper: ShapeBorderClipper(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                        left: BorderSide(color: Color(0xFF7D6AEF), width: 5)),
                    // color: Colors.yellowAccent.shade100,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  alignment: Alignment.centerLeft,
                  child: ListTile(
                    onTap: (){Employee_List().launch(context);},
                    contentPadding: EdgeInsets.only(top: 0.0, bottom: 0.0),
                    visualDensity: VisualDensity(vertical: -4),
                    leading: Image(image: AssetImage('Assets/Images/employeelist.png')),
                    title: Text(
                      'Add Employee',
                      style: TextStyle(fontSize: 20),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                    // subtitle: Text('Here is a second line'),
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 2,
              child: ClipPath(
                clipper: ShapeBorderClipper(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                        left: BorderSide(
                            color: Color(0xFFFD73B0), width: 5)),
                    // color: Colors.yellowAccent.shade100,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  alignment: Alignment.centerLeft,
                  child: ListTile(
                    contentPadding: EdgeInsets.only(top: 0.0, bottom: 0.0),
                    visualDensity: VisualDensity(vertical: -4),
                    leading: Image(image: AssetImage('Assets/Images/timeattendance.png')),
                    title: Text(
                      'Time Attendance',
                      style: TextStyle(fontSize: 16),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                    // subtitle: Text('Here is a second line'),
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 2,
              child: ClipPath(
                clipper: ShapeBorderClipper(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                        left: BorderSide(
                            color: Color(0xFF4CCEFA), width: 5)),
                    // color: Colors.yellowAccent.shade100,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  alignment: Alignment.centerLeft,
                  child: ListTile(
                    contentPadding: EdgeInsets.only(top: 0.0, bottom: 0.0),
                    visualDensity: VisualDensity(vertical: -4),
                    leading: Image(image: AssetImage('Assets/Images/leavemanagement.png')),
                    title: Text(
                      'Leave Management',
                      style: TextStyle(fontSize: 16),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                    // subtitle: Text('Here is a second line'),
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 2,
              child: ClipPath(
                clipper: ShapeBorderClipper(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                        left: BorderSide(
                            color: Color(0xFFF4C000), width: 5)),
                    // color: Colors.yellowAccent.shade100,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  alignment: Alignment.centerLeft,
                  child: ListTile(
                    contentPadding: EdgeInsets.only(top: 0.0, bottom: 0.0),
                    visualDensity: VisualDensity(vertical: -4),
                    leading: Image(image: AssetImage('Assets/Images/employeeovertime.png')),
                    title: Text(
                      'Employees Overtimes',
                      style: TextStyle(fontSize: 16),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                    // subtitle: Text('Here is a second line'),
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 2,
              child: ClipPath(
                clipper: ShapeBorderClipper(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                        left: BorderSide(
                            color: Color(0xFFFD73B0), width: 5)),
                    // color: Colors.yellowAccent.shade100,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  alignment: Alignment.centerLeft,
                  child: ListTile(
                    contentPadding: EdgeInsets.only(top: 0.0, bottom: 0.0),
                    visualDensity: VisualDensity(vertical: -4),
                    leading: Image(image: AssetImage('Assets/Images/salarymanagement.png')),
                    title: Text(
                      'Salary Statements',
                      style: TextStyle(fontSize: 16),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                    // subtitle: Text('Here is a second line'),
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 2,
              child: ClipPath(
                clipper: ShapeBorderClipper(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                        left: BorderSide(
                            color: Color(0xFF05B985), width: 5)),
                    // color: Colors.yellowAccent.shade100,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  alignment: Alignment.centerLeft,
                  child: ListTile(
                    contentPadding: EdgeInsets.only(top: 0.0, bottom: 0.0),
                    visualDensity: VisualDensity(vertical: -4),
                    leading: Image(image: AssetImage('Assets/Images/reference.png')),
                    title: Text(
                      'Reference',
                      style: TextStyle(fontSize: 16),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                    // subtitle: Text('Here is a second line'),
                  ),
                ),
              ),
            ),
          ],
        )),
      ), icononpress: (){Navigator.pop(context);},
    );
  }
}

// Scaffold(
// appBar: AppBar(
// elevation: 0,
// leading: IconButton(
// onPressed: () {},
// icon: Icon(
// Icons.arrow_back_ios,
// color: Colors.white,
// ),
// ),
// ),
// body: Container(
// color: Colors.blue,
// // height: MediaQuery.of(context).size.height,
// child: Column(
// children: [
// SizedBox(
// width: MediaQuery.of(context).size.width,
// child: Padding(
// padding: const EdgeInsets.all(30),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text(
// "Employee Management",
// style: TextStyle(
// color: Colors.white,
// fontSize: 25,
// fontWeight: FontWeight.bold),
// ),
// ],
// ),
// ),
// ),
// SizedBox(
// height: 20,
// ),
// Expanded(
// child: Container(
// // height: 600,
// width: MediaQuery.of(context).size.width,
// // height: MediaQuery.of(context).size.height,
// decoration: BoxDecoration(
// color: Colors.white,
// borderRadius:
// BorderRadius.vertical(top: Radius.elliptical(50, 50))),
// child: Padding(
// padding: const EdgeInsets.all(30),
// child: Column(
// children: [],
// ),
// ),
// ),
// ),
// ],
// ),
// ),
// );
