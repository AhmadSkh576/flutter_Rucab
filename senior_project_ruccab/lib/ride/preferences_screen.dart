import 'package:flutter/material.dart';
import 'package:senior_project_ruccab/ride/passengers_screen.dart';


import '../constant.dart';

class PreferencesScreen extends StatefulWidget {
  const PreferencesScreen({super.key});

  @override
  State<PreferencesScreen> createState() => _PreferencesScreenState();
}

class _PreferencesScreenState extends State<PreferencesScreen> {
  int gender = -1;
  int smoke = -1;
  int food = -1;
  int pets = -1;
  FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 73),
        child: SizedBox(
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: mainColor,
                        size: 30,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: Text(
                        "Set Your Preferences:",
                        style: TextStyle(
                          color: mainColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Gender:",
                  style: TextStyle(
                      color: mainColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Radio(
                          value: 0,
                          groupValue: gender,
                          onChanged: (int? value) {
                            setState(() {
                              gender = 0;
                            });
                          },
                          activeColor: mainColor,
                          fillColor:
                              MaterialStateProperty.resolveWith((Set states) {
                            return mainColor;
                          }),
                        ),
                        const Text(
                          'Male',
                          style: TextStyle(
                              color: darkGrey,
                              fontWeight: FontWeight.w600,
                              fontSize: 13),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 1,
                          groupValue: gender,
                          onChanged: (int? value) {
                            setState(() {
                              gender = 1;
                            });
                          },
                          activeColor: mainColor,
                          fillColor:
                              MaterialStateProperty.resolveWith((Set states) {
                            return mainColor;
                          }),
                        ),
                        const Text(
                          'Female',
                          style: TextStyle(
                              color: darkGrey,
                              fontWeight: FontWeight.w600,
                              fontSize: 13),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 2,
                          groupValue: gender,
                          onChanged: (int? value) {
                            setState(() {
                              gender = 2;
                            });
                          },
                          activeColor: mainColor,
                          fillColor:
                              MaterialStateProperty.resolveWith((Set states) {
                            return mainColor;
                          }),
                        ),
                        const Text(
                          "Doesn't matter",
                          style: TextStyle(
                              color: darkGrey,
                              fontWeight: FontWeight.w600,
                              fontSize: 13),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Smoking:",
                  style: TextStyle(
                      color: mainColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Radio(
                          value: 0,
                          groupValue: smoke,
                          onChanged: (int? value) {
                            setState(() {
                              smoke = 0;
                            });
                          },
                          activeColor: mainColor,
                          fillColor:
                              MaterialStateProperty.resolveWith((Set states) {
                            return mainColor;
                          }),
                        ),
                        const Text(
                          'Allowed',
                          style: TextStyle(
                              color: darkGrey,
                              fontWeight: FontWeight.w600,
                              fontSize: 13),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 1,
                          groupValue: smoke,
                          onChanged: (int? value) {
                            setState(() {
                              smoke = 1;
                            });
                          },
                          activeColor: mainColor,
                          fillColor:
                              MaterialStateProperty.resolveWith((Set states) {
                            return mainColor;
                          }),
                        ),
                        const Text(
                          "Not allowed",
                          style: TextStyle(
                              color: darkGrey,
                              fontWeight: FontWeight.w600,
                              fontSize: 13),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Pets:",
                  style: TextStyle(
                      color: mainColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Radio(
                          value: 0,
                          groupValue: pets,
                          onChanged: (int? value) {
                            setState(() {
                              pets = 0;
                            });
                          },
                          activeColor: mainColor,
                          fillColor:
                              MaterialStateProperty.resolveWith((Set states) {
                            return mainColor;
                          }),
                        ),
                        const Text(
                          'Allowed',
                          style: TextStyle(
                              color: darkGrey,
                              fontWeight: FontWeight.w600,
                              fontSize: 13),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 1,
                          groupValue: pets,
                          onChanged: (int? value) {
                            setState(() {
                              pets = 1;
                            });
                          },
                          activeColor: mainColor,
                          fillColor:
                              MaterialStateProperty.resolveWith((Set states) {
                            return mainColor;
                          }),
                        ),
                        const Text(
                          "Not allowed",
                          style: TextStyle(
                              color: darkGrey,
                              fontWeight: FontWeight.w600,
                              fontSize: 13),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Food:",
                  style: TextStyle(
                      color: mainColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Radio(
                          value: 0,
                          groupValue: food,
                          onChanged: (int? value) {
                            setState(() {
                              food = 0;
                            });
                          },
                          activeColor: mainColor,
                          fillColor:
                              MaterialStateProperty.resolveWith((Set states) {
                            return mainColor;
                          }),
                        ),
                        const Text(
                          'Allowed',
                          style: TextStyle(
                              color: darkGrey,
                              fontWeight: FontWeight.w600,
                              fontSize: 13),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 1,
                          groupValue: food,
                          onChanged: (int? value) {
                            setState(() {
                              food = 1;
                            });
                          },
                          activeColor: mainColor,
                          fillColor:
                              MaterialStateProperty.resolveWith((Set states) {
                            return mainColor;
                          }),
                        ),
                        const Text(
                          "Not allowed",
                          style: TextStyle(
                              color: darkGrey,
                              fontWeight: FontWeight.w600,
                              fontSize: 13),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Capacity:",
                  style: TextStyle(
                      color: mainColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Passenger:",
                          style: TextStyle(
                              color: darkGrey,
                              fontWeight: FontWeight.w600,
                              fontSize: 13),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "2",
                          style: TextStyle(
                              color: mainColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 13),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Storrage:",
                          style: TextStyle(
                              color: darkGrey,
                              fontWeight: FontWeight.w600,
                              fontSize: 13),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "0",
                          style: TextStyle(
                              color: mainColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 13),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: lightColor,
                      borderRadius: BorderRadius.circular(12)),
                  height: 130,
                  child: TextFormField(
                    cursorColor: mainColor,
                    maxLines: 4,
                    onTapOutside: (event) {
                      _focusNode.unfocus();
                    },
                    autofocus: false,
                    obscureText: false,
                    focusNode: _focusNode,
                    decoration: InputDecoration(
                      hintText: 'Destination Details..',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.grey,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.grey,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 300,
                      child: GestureDetector(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return StatefulBuilder(
                                    builder: (final context, final setStatee) =>
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                              margin: const EdgeInsets.only(
                                                  left: 20, right: 20),
                                              padding: const EdgeInsets.only(
                                                  left: 10, right: 10),
                                              height: 280,
                                              width: 280,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 20.0),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    const Icon(
                                                      Icons.verified_sharp,
                                                      color: mainColor,
                                                      size: 100,
                                                    ),
                                                    const DefaultTextStyle(
                                                      style: TextStyle(
                                                        color: greyColor,
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      child: Text(
                                                          'Your ride has been Confirmed'),
                                                    ),
                                                    const SizedBox(
                                                      height: 20,
                                                    ),
                                                    const SizedBox(
                                                      height: 16,
                                                    ),
                                                    GestureDetector(
                                                      onTap: () async {
                                                        Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        const PassengersScreen()));
                                                      },
                                                      child: Container(
                                                        height: 50,
                                                        width: 150,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(30),
                                                          color: mainColor,
                                                        ),
                                                        child: const Center(
                                                            child:
                                                                DefaultTextStyle(
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 16,
                                                          ),
                                                          child: Text(
                                                              'Ok got it!'),
                                                        )),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            )));
                              });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: mainColor,
                              borderRadius: BorderRadius.circular(12)),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 5.0),
                            child: Text(
                              'Next',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
