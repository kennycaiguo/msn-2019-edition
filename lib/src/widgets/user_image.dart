import 'package:flutter/material.dart';
import 'package:messanger/src/widgets/circle_container.dart';

class UserImage extends StatelessWidget {
  const UserImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CircleContainer(
        child: CircleAvatar(
          radius: 60,
          backgroundColor: Colors.grey[300],
          child: Container(
            padding: EdgeInsets.all(10),
            child: Image.asset('assets/images/msn_logo.png'),
          ),
        ),
      ),
    );
  }
}