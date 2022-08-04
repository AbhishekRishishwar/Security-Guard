import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:security_guard/Constant.dart';
import 'package:security_guard/Widgets/ThemeWidget.dart';

class Add_Employee extends StatefulWidget {
  const Add_Employee({Key? key}) : super(key: key);

  @override
  State<Add_Employee> createState() => _Add_EmployeeState();
}

class _Add_EmployeeState extends State<Add_Employee> {
  final dateController = TextEditingController();
  String designation = 'Manager';
  bool selection = false;
  List<String> userChecked = [];

  @override
  void dispose() {
    dateController.dispose();
    super.dispose();
  }

  DropdownButton<String> getDesignation() {
    List<DropdownMenuItem<String>> dropDownItems = [];
    for (String des in designations) {
      var item = DropdownMenuItem(
        child: Text(des),
        value: des,
      );
      dropDownItems.add(item);
    }

    return DropdownButton(
      items: dropDownItems,
      value: designation,
      onChanged: (value) {
        setState(() {
          designation = value!;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Main_Theme.mainTheme(
        width: MediaQuery.of(context).size.width,
        icononpress: () {},
        pageName: "Add Employee",
        widget: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Image.asset('Assets/Images/employeeaddimage.png'),
                  ),
                  Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          AppTextField(
                            textFieldType: TextFieldType.NAME,
                            readOnly: true,
                            onTap: () async {
                              var date = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(1900),
                                  lastDate: DateTime(2100));
                              dateController.text =
                                  date.toString().substring(0, 10);
                            },
                            controller: dateController,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                suffixIcon: Icon(
                                  Icons.date_range_rounded,
                                  color: kGreyTextColor,
                                ),
                                labelText: 'Joining Date',
                                hintText: '11/09/2021'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          AppTextField(
                            textFieldType: TextFieldType.PHONE,
                            decoration: const InputDecoration(
                              labelText: 'Employee ID',
                              hintText: '543223',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ],
                      )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              AppTextField(
                textFieldType: TextFieldType.NAME,
                decoration: const InputDecoration(
                  labelText: 'Full Name',
                  hintText: '',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              AppTextField(
                textFieldType: TextFieldType.PHONE,
                decoration: const InputDecoration(
                  labelText: 'Mobile Number',
                  hintText: '',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 60.0,
                child: FormField(builder: (FormFieldState<dynamic> field) {
                  return InputDecorator(
                    decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelText: 'Select Designation',
                        labelStyle: kTextStyle,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                    child: DropdownButtonHideUnderline(
                      child: getDesignation(),
                    ),
                  );
                }),
              ),
              SizedBox(
                height: 10.0,
              ),
              Visibility(
                visible: !selection,
                child: SizedBox(
                  height: 60.0,
                  child: FormField(
                    builder: (FormFieldState<dynamic> field) {
                      return InputDecorator(
                        decoration: InputDecoration(
                            floatingLabelBehavior:
                            FloatingLabelBehavior.always,
                            labelText: 'Working Day',
                            labelStyle: kTextStyle,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selection = true;
                            });
                          },
                          child: Text(userChecked.isEmpty
                              ? 'Select Working Day'
                              : userChecked.join(",")),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
