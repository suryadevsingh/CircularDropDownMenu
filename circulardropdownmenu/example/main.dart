

import 'package:circulardropdownmenu/circulardropdownmenu.dart';
import 'package:flutter/material.dart';

void main() {
   runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DemoCircularDropDownMenu(),
    );
  }
}

class DemoCircularDropDownMenu extends StatefulWidget {
  @override
  _DemoCircularDropDownMenuState createState() => _DemoCircularDropDownMenuState();
}

class _DemoCircularDropDownMenuState extends State<DemoCircularDropDownMenu> {

  String _coachingLevel = 'Education Level';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin:
          EdgeInsets.only(left: 20, top: 40, right: 20, bottom: 20),
          child: Column(
            children: <Widget>[

              CircularDropDownMenu(
                dropDownMenuItem: [
                  DropdownMenuItem(
                    child: GestureDetector(
                      onTap: () {},
                      child: Text('School'),
                    ),
                    value: 'School',
                  ),
                  DropdownMenuItem(
                    child: GestureDetector(
                      onTap: () {},
                      child: Text('Collage'),
                    ),
                    value: 'Collage',
                  ),
                  DropdownMenuItem(
                    child: GestureDetector(
                      onTap: () {},
                      child: Text('Graduated'),
                    ),
                    value: 'Graduated',
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    _coachingLevel = value;
                  });
                },
                hintText: _coachingLevel,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
