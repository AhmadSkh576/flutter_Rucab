import 'package:flutter/material.dart';
import 'package:senior_project_ruccab/constant.dart';

class CarInformationScreen extends StatefulWidget {
  const CarInformationScreen({super.key});

  @override
  State<CarInformationScreen> createState() => _CarInformationScreenState();
}

class _CarInformationScreenState extends State<CarInformationScreen> {
  TextEditingController colorController = TextEditingController();
  TextEditingController plateNumberController = TextEditingController();
  TextEditingController modelController = TextEditingController();
  TextEditingController carYearController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController licenseNumberController = TextEditingController();
  TextEditingController expirationDateController = TextEditingController();
  FocusNode colorFocus = FocusNode();
  FocusNode plateNumberFocus = FocusNode();
  FocusNode modelFocus = FocusNode();
  FocusNode carYearFocus = FocusNode();
  FocusNode fullNameFocus = FocusNode();
  FocusNode licenseNumberFocus = FocusNode();
  FocusNode expirationDateFocus = FocusNode();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        elevation: 0,
        title: const Text(
          "Car Information",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: mainColor,
          ),
        ),
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: mainColor,
            size: 30,
          ),
        ),
      ),
      body: DefaultTabController(
        length: 2,
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const TabBar(
                padding: EdgeInsets.only(left: 20),
                indicatorColor: Colors.transparent,
                dividerColor: Colors.transparent,
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 2,
                      color: mainColor,
                    ),
                  ),
                ),
                tabs: [
                  Tab(
                    child: Text(
                      "Car",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'License',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(children: [
                  Container(
                    width: double.maxFinite,
                    height: double.maxFinite,
                    margin: const EdgeInsets.all(20),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Plate Number",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          TextFormField(
                            controller: plateNumberController,
                            focusNode: plateNumberFocus,
                            validator: (value) {},
                            onTapOutside: (event) {
                              plateNumberFocus.unfocus();
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
                                  color: darkGrey,
                                  width: 0.7,
                                ),
                              ),
                              hintText: "Enter your Plate Number",
                              hintStyle: TextStyle(
                                color: darkGrey,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Model",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          TextFormField(
                            controller: modelController,
                            focusNode: modelFocus,
                            validator: (value) {},
                            onTapOutside: (event) {
                              modelFocus.unfocus();
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
                                  color: darkGrey,
                                  width: 0.7,
                                ),
                              ),
                              hintText: "Enter your Model",
                              hintStyle: TextStyle(
                                color: darkGrey,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Car Year",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          TextFormField(
                            controller: carYearController,
                            focusNode: carYearFocus,
                            validator: (value) {},
                            onTapOutside: (event) {
                              carYearFocus.unfocus();
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
                                  color: darkGrey,
                                  width: 0.7,
                                ),
                              ),
                              hintText: "Enter your Car Year",
                              hintStyle: TextStyle(
                                color: darkGrey,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Color",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          TextFormField(
                            controller: colorController,
                            focusNode: colorFocus,
                            validator: (value) {},
                            onTapOutside: (event) {
                              colorFocus.unfocus();
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
                                  color: darkGrey,
                                  width: 0.7,
                                ),
                              ),
                              hintText: "Enter Color",
                              hintStyle: TextStyle(
                                color: darkGrey,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 45,
                            margin: const EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 20,
                            ),
                            width: double.maxFinite,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: mainColor,
                            ),
                            child: const Text(
                              "Edit",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    height: double.maxFinite,
                    margin: const EdgeInsets.all(20),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Full Name",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          TextFormField(
                            controller: fullNameController,
                            focusNode: fullNameFocus,
                            validator: (value) {},
                            onTapOutside: (event) {
                              fullNameFocus.unfocus();
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
                                  color: darkGrey,
                                  width: 0.7,
                                ),
                              ),
                              hintText: "Enter your Full Name",
                              hintStyle: TextStyle(
                                color: darkGrey,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "License Number",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          TextFormField(
                            controller: licenseNumberController,
                            focusNode: licenseNumberFocus,
                            validator: (value) {},
                            onTapOutside: (event) {
                              licenseNumberFocus.unfocus();
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
                                  color: darkGrey,
                                  width: 0.7,
                                ),
                              ),
                              hintText: "Enter your License Number",
                              hintStyle: TextStyle(
                                color: darkGrey,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Exp",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          TextFormField(
                            controller: expirationDateController,
                            focusNode: expirationDateFocus,
                            validator: (value) {},
                            onTapOutside: (event) {
                              expirationDateFocus.unfocus();
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
                                  color: darkGrey,
                                  width: 0.7,
                                ),
                              ),
                              hintText: "Enter your expiration date",
                              hintStyle: TextStyle(
                                color: darkGrey,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 45,
                            margin: const EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 20,
                            ),
                            width: double.maxFinite,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: mainColor,
                            ),
                            child: const Text(
                              "Edit",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
