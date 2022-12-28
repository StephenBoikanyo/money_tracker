import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'constants.dart';


class chartToggle extends StatefulWidget {
  const chartToggle({Key? key}) : super(key: key);

  @override
  State<chartToggle> createState() => _chartToggleState();
}

class _chartToggleState extends State<chartToggle> {
  var _tabTextIndexSelected = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black12
        ,
        borderRadius: BorderRadius.circular(17),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FlutterToggleTab(
          selectedBackgroundColors: [Colors.black],
          width: 80,
          borderRadius: 17,
          selectedTextStyle: kTitleTextStyle.copyWith(color: Colors.white),
          unSelectedTextStyle: kTitleTextStyle.copyWith(color: Colors.black),
          labels: toggleOptions,
          selectedIndex: _tabTextIndexSelected,
          selectedLabelIndex: (index) {
            setState(() {
              _tabTextIndexSelected = index;
            });
          },
        ),
      ),
    );
  }
}
