import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample1/util/Appcolor.dart';

import '../widgets/listtile.dart';

class SampleView extends StatelessWidget {
  const SampleView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ListTile(
              title: Text(
                "Hello Mr.Jhon ",
                style: TextStyle(
                    color: AppColor.primary,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              subtitle: const Text("Begin Your shopping"),
              trailing: Icon(
                Icons.notification_add,
                color: AppColor.primary,
              ),
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
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: SizedBox(
                            child: Expanded(
                              child: Column(
                                children: [
                                  const Text(
                                    "Enjoy upto \n 40% discount",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  MaterialButton(
                                    color: AppColor.primary,
                                    onPressed: () {},
                                    child: const Text(
                                      "subscribe",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: SizedBox(
                              child: Image.network(
                                  "https://cdn.pixabay.com/photo/2015/09/21/14/24/supermarket-949913_960_720.jpg"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Mylisttile(
              title: "Onsale Now",
              trailing: "see all",
            ),
            Products(
              image: Image.network(
                  "https://images-eu.ssl-images-amazon.com/images/I/71yM0xUAetL._AC._SR360,460.jpg"),
              price: "rs.300",
            )
          ],
        ),
      ),
    );
  }
}

class Products extends StatelessWidget {
  final Image image;
  final String price;
  const Products({
    required this.image,
    required this.price,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // color: Colors.amber,
        height: 140,
        width: Get.size.width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Card(
                elevation: 2,
                child: SizedBox(
                  height: Get.size.height,
                  width: 130,
                  child: Column(
                    children: [
                      Expanded(
                        child: Image.network(
                            "https://static-01.daraz.com.bd/p/bf816ad9ef3cf8b7d891d974afed5138.jpg"),
                      ),
                      Text(
                        "Rs.700",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColor.primary),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
