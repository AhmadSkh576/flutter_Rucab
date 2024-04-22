import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:senior_project_ruccab/constant.dart';
import 'package:senior_project_ruccab/screens/auth/verification_screen.dart';
import 'package:senior_project_ruccab/utils/http_req.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();

  TextEditingController universityIDController = TextEditingController();
  TextEditingController facultyController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  FocusNode firstNameFocus = FocusNode();
  FocusNode lastNameFocus = FocusNode();
  FocusNode universityIDFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();
  FocusNode confirmPasswordFocus = FocusNode();
  FocusNode genderFocus = FocusNode();
  FocusNode facultyFocus = FocusNode();
  FocusNode phoneFocus = FocusNode();

  final httpRequest = HttpRequests();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Center(
                  //   child: Image.asset(
                  //     'assets/images/signUp.png',
                  //     width: 300,
                  //   ),
                  // ),
                  const SizedBox(height: 15),
                  const Text(
                    "Sign up",
                    style: TextStyle(
                      color: mainColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Icon(
                              Icons.abc,
                              color: mainColor,
                              size: 35,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: TextFormField(
                                controller: firstNameController,
                                focusNode: firstNameFocus,
                                validator: (value) {},
                                onTapOutside: (event) {
                                  firstNameFocus.unfocus();
                                },
                                decoration: const InputDecoration(
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: mainColor,
                                      width: 1.5,
                                    ),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: mainColor,
                                      width: 0.7,
                                    ),
                                  ),
                                  hintText: "Enter firstName",
                                  hintStyle: TextStyle(
                                    color: darkGrey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1,
                                  ),
                                ),
                                keyboardType: TextInputType.text,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Icon(
                              Icons.abc,
                              color: mainColor,
                              size: 35,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: TextFormField(
                                controller: lastNameController,
                                focusNode: lastNameFocus,
                                validator: (value) {},
                                onTapOutside: (event) {
                                  lastNameFocus.unfocus();
                                },
                                decoration: const InputDecoration(
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: mainColor,
                                      width: 1.5,
                                    ),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: mainColor,
                                      width: 0.7,
                                    ),
                                  ),
                                  hintText: "Enter last name",
                                  hintStyle: TextStyle(
                                    color: darkGrey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1,
                                  ),
                                ),
                                keyboardType: TextInputType.text,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Icon(
                              Icons.account_circle_rounded,
                              color: mainColor,
                              size: 35,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: TextFormField(
                                controller: universityIDController,
                                focusNode: universityIDFocus,
                                validator: (value) {},
                                onTapOutside: (event) {
                                  universityIDFocus.unfocus();
                                },
                                decoration: const InputDecoration(
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: mainColor,
                                      width: 1.5,
                                    ),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: mainColor,
                                      width: 0.7,
                                    ),
                                  ),
                                  hintText: "Enter your University ID",
                                  hintStyle: TextStyle(
                                    color: darkGrey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Icon(
                              Icons.account_circle_rounded,
                              color: mainColor,
                              size: 35,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: TextFormField(
                                controller: facultyController,
                                focusNode: facultyFocus,
                                validator: (value) {},
                                onTapOutside: (event) {
                                  facultyFocus.unfocus();
                                },
                                decoration: const InputDecoration(
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: mainColor,
                                      width: 1.5,
                                    ),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: mainColor,
                                      width: 0.7,
                                    ),
                                  ),
                                  hintText: "Enter your faculty",
                                  hintStyle: TextStyle(
                                    color: darkGrey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Icon(
                              Icons.male,
                              color: mainColor,
                              size: 35,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: TextFormField(
                                controller: genderController,
                                focusNode: genderFocus,
                                validator: (value) {},
                                onTapOutside: (event) {
                                  genderFocus.unfocus();
                                },
                                decoration: const InputDecoration(
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: mainColor,
                                      width: 1.5,
                                    ),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: mainColor,
                                      width: 0.7,
                                    ),
                                  ),
                                  hintText: "Enter your Phone gender",
                                  hintStyle: TextStyle(
                                    color: darkGrey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Icon(
                              Icons.phone,
                              color: mainColor,
                              size: 35,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: TextFormField(
                                controller: phoneController,
                                focusNode: phoneFocus,
                                validator: (value) {},
                                onTapOutside: (event) {
                                  phoneFocus.unfocus();
                                },
                                decoration: const InputDecoration(
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: mainColor,
                                      width: 1.5,
                                    ),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: mainColor,
                                      width: 0.7,
                                    ),
                                  ),
                                  hintText: "Enter your Phone ",
                                  hintStyle: TextStyle(
                                    color: darkGrey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Icon(
                              Icons.lock_clock,
                              color: mainColor,
                              size: 35,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: TextFormField(
                                controller: passwordController,
                                focusNode: passwordFocus,
                                obscureText: true,
                                validator: (value) {},
                                onTapOutside: (event) {
                                  passwordFocus.unfocus();
                                },
                                decoration: const InputDecoration(
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: mainColor,
                                      width: 1.5,
                                    ),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: mainColor,
                                      width: 0.7,
                                    ),
                                  ),
                                  hintText: "Enter your Password",
                                  hintStyle: TextStyle(
                                    color: darkGrey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Icon(
                              Icons.lock_clock,
                              color: mainColor,
                              size: 35,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: TextFormField(
                                controller: confirmPasswordController,
                                focusNode: confirmPasswordFocus,
                                obscureText: true,
                                validator: (value) {},
                                onTapOutside: (event) {
                                  confirmPasswordFocus.unfocus();
                                },
                                decoration: const InputDecoration(
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: mainColor,
                                      width: 1.5,
                                    ),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: mainColor,
                                      width: 0.7,
                                    ),
                                  ),
                                  hintText: "Enter your confirm Password",
                                  hintStyle: TextStyle(
                                    color: darkGrey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "By signing up, you're agree to our ",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: darkGrey,
                          ),
                        ),
                        TextSpan(
                          text: "Terms & Conditions ",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: mainColor,
                          ),
                        ),
                        TextSpan(
                          text: "and ",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: darkGrey,
                          ),
                        ),
                        TextSpan(
                          text: "Privacy Policy",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: mainColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  GestureDetector(
                    onTap: () async {
                      var response = await httpRequest.signUp(
                        universityIDController.text,
                        passwordController.text,
                        firstNameController.text,
                        lastNameController.text,
                        genderController.text,
                        facultyController.text,
                        confirmPasswordController.text,
                        phoneController.text,
                      );

                      if (response[0] == true) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const VerificationScreen(),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("${response[1]}"),
                        ));
                      }
                    },
                    child: Container(
                      height: 45,
                      width: double.maxFinite,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: mainColor,
                      ),
                      child: const Text(
                        "Continue",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Joined us before? ",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: darkGrey,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: mainColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
