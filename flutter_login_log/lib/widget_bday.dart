import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetBday extends StatefulWidget {
  const WidgetBday({Key? key}) : super(key: key);
  @override
  _WidgetBdayState createState() => _WidgetBdayState();
}

class _WidgetBdayState extends State<WidgetBday> {
  late DateTime dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoButton(
          child: Text(
            '${dateTime.month}-${dateTime.day}-${dateTime.year}',
            style: TextStyle(fontSize: 16),
          ),
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (BuildContext context) => SizedBox(
                height: 300, // Adjust the height as per your preference
                child: Align(
                  alignment: Alignment.center,
                  child: SingleChildScrollView(
                    child: CupertinoDatePicker(
                      backgroundColor: Colors.white,
                      initialDateTime: dateTime,
                      onDateTimeChanged: (DateTime newTime) {
                        setState(() {
                          dateTime = newTime;
                        });
                      },
                      use24hFormat: true,
                      mode: CupertinoDatePickerMode.date,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
