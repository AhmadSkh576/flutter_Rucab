import 'package:flutter/material.dart';
import 'package:flutter_login_log/components/Input_Field.dart';
import 'package:flutter_login_log/components/Sign_Up_Text.dart';
import 'package:flutter_login_log/components/alreadyReg.dart';
import 'package:flutter_login_log/components/button_logsign.dart';
import 'package:flutter_login_log/components/forgot_password.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<SignUpPage> createState() => _SignUpState();
}

class _SignUpState extends State<SignUpPage> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordCController = TextEditingController();
  List<String> facultyList = [
    "Engineering",
    "Science",
    "Health Science",
    "Business Administration",
    "Architecture",
    "Design and Built Environment"
  ];
  String selectedItem = "";
  List<String> genderList = ["Male", "Female", "non binary"];
  String selectedItem2 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _buildPage(),
    );
  }

  Widget _buildPage() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/signUp.png',
                width: 300,
                height: 250,
              ),
              SignupText(),
              const SizedBox(height: 5),
              InputField(
                hintText: "ENTER UNIVERSITY EMAIL",
                iconPath: 'assets/icons/email.png',
                controller: usernameController,
              ),
              const SizedBox(height: 10),
              InputField(
                hintText: "ENTER PASSWORD",
                iconPath: 'assets/icons/password.png',
                controller: passwordController,
                isPassword: true,
              ),
              const SizedBox(height: 10),
              InputField(
                hintText: "Confirm PASSWORD",
                iconPath: 'assets/icons/password.png',
                controller: passwordCController,
                isPassword: true,
              ),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 60,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                child: GestureDetector(
                  onTap: () {
                    print("Tapped Select Faculty");
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: SelectionList(
                            itemList: facultyList,
                            selectedItem: selectedItem,
                            onItemSelected: (item) {
                              setState(() {
                                selectedItem = item;
                              });
                              Navigator.pop(context);
                            },
                          ),
                        );
                      },
                    );
                  },
                  child: Container(
                    color: const Color.fromARGB(166, 217, 214, 214),
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              selectedItem.isNotEmpty
                                  ? selectedItem
                                  : 'Faculty',
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 96, 95, 95),
                              ),
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.keyboard_arrow_down,
                          color: Color.fromARGB(255, 123, 121, 121),
                          size: 27,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 60,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                child: GestureDetector(
                  onTap: () {
                    print("Tapped Select Gender");
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: SelectionList(
                            itemList: genderList,
                            selectedItem: selectedItem2,
                            onItemSelected: (item) {
                              setState(() {
                                selectedItem2 = item;
                              });
                              Navigator.pop(context);
                            },
                          ),
                        );
                      },
                    );
                  },
                  child: Container(
                    color: const Color.fromARGB(166, 217, 214, 214),
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              selectedItem2.isNotEmpty
                                  ? selectedItem2
                                  : 'Gender',
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 96, 95, 95),
                              ),
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.keyboard_arrow_down,
                          color: Color.fromARGB(255, 123, 121, 121),
                          size: 27,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              ExtraText(),
              const SizedBox(height: 20),
              LoginSignupButton(
                usernameController: usernameController,
                passwordController: passwordController,
                buttonText: "SIGN UP",
              ),
              const SizedBox(height: 10),
              AlreadyRegistered(),
            ],
          ),
        ),
      ),
    );
  }
}

class SelectionList extends StatelessWidget {
  final List<String> itemList;
  final String selectedItem;
  final Function(String) onItemSelected;

  const SelectionList({
    super.key,
    required this.itemList,
    required this.selectedItem,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: itemList.length *
          50.0, // Adjust the height based on the number of items
      child: ListView.builder(
        itemCount: itemList.length,
        itemBuilder: (BuildContext context, int index) {
          final item = itemList[index];
          return ListTile(
            title: Text(item),
            onTap: () => onItemSelected(item),
            selected: item == selectedItem,
          );
        },
      ),
    );
  }
}
