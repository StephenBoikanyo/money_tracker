import 'package:flutter/material.dart';


//Text Style constants
const kHeaderTextStyle = TextStyle(color: Colors.black,fontFamily: 'Roboto',fontSize: 35);
const kTitleTextStyle  = TextStyle(color: Colors.black,fontFamily: 'Roboto',fontSize: 25);
const kHelperTextStyle = TextStyle(color: Color(0xFF6A6A6A),fontFamily: 'Montserrat',fontSize: 20);
const kBodyTextStyle   = TextStyle(color: Color(0xFF6A6A6A),fontFamily: 'Montserat',fontSize: 20);
const kNumericTextStyle = TextStyle(color: Colors.black,fontFamily: 'Montserrat',fontSize: 20);

//Greeting function
String greeting() {
  var hour = DateTime.now().hour;
  if (hour < 12) {
    return 'Good Morning';
  }
  if (hour < 17) {
    return 'Good Afternoon';
  }
  return 'Good Evening';
}

//String to store greeting function
String greetResp = greeting();

List<String> toggleOptions = ['Income', 'Expenses'];