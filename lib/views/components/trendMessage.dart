import 'package:flutter/material.dart';
import 'constants.dart';

//Conditional message based on income avf > expense avg
class TrendMessage extends StatelessWidget {
  const TrendMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.black,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListTile(
          leading: const CircleAvatar(
            radius: 25,
            backgroundColor: Colors.white,
            child: Text("👏"),
          ),
          title: Text('Well done, Stephen!',
            style: kTitleTextStyle.copyWith( color: Colors.white, fontSize: 18),),
          subtitle: Text('Your capital has a positive trend',
              style: kHelperTextStyle.copyWith(color: Colors.grey, fontSize: 14)),
        ),
      ),
    );
  }
}
