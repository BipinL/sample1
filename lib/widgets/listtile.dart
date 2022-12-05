import 'package:flutter/material.dart';
import 'package:sample1/util/Appcolor.dart';

class Mylisttile extends StatelessWidget {
  final String title;
  final String trailing;
  const Mylisttile({
    required this.title,
    required this.trailing,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 25, color: AppColor.primary),
      ),
      trailing: Text(
        trailing,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 15, color: AppColor.primary),
      ),
    );
  }
}
