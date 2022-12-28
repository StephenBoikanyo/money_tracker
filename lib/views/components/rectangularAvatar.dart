import 'package:flutter/material.dart';

class RectangularAvatar extends StatelessWidget {
   late  Widget? avatarWidget ;
   RectangularAvatar({required this.avatarWidget});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          color: Colors.black12,
          height: 50,
          width: 50,
          child: avatarWidget,
        )
    );
  }
}
