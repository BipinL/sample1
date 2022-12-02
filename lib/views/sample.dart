import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample1/util/Appcolor.dart';

class SampleView extends StatelessWidget {
  const SampleView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(
      children: [
        const ListTile(
          title: Text("Hello Mr.Jhon "),
          subtitle: Text("Begin Your shopping"),
          trailing: Icon(Icons.notification_add),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 170,
              width: Get.size.width,
              color: AppColor.secondary,
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      child: Column(
                        children: [
                          const Text(
                            "Enjoy upto \n 40% discount",
                            style: TextStyle(fontSize: 20),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            child: const Text("subscribe"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      child: Image.network(
                          "https://cdn.pixabay.com/photo/2015/09/21/14/24/supermarket-949913_960_720.jpg"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    )));
  }
}
