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
            const SizedBox(
              height: 0,
            ),
            ListTile(
              title: Text(
                "On sale now",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: AppColor.primary),
              ),
              trailing: Text(
                "See all",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: AppColor.primary),
              ),
            ),
            Padding(
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
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 2,
                        child: SizedBox(
                          height: Get.size.height,
                          width: 130,
                          child: Column(
                            children: [
                              Expanded(
                                child: Image.network(
                                    "https://contents.mediadecathlon.com/p1484240/ab565f3675dbdd7e3c486175e2c16583/p1484240.jpg"),
                              ),
                              Text(
                                "Rs.700",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.primary),
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 2,
                        child: SizedBox(
                          height: Get.size.height,
                          width: 130,
                          child: Column(
                            children: [
                              Expanded(
                                child: Image.network(
                                    "https://images-eu.ssl-images-amazon.com/images/I/71yM0xUAetL._AC._SR360,460.jpg"),
                              ),
                              Text(
                                "Rs.700",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.primary),
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 2,
                        child: SizedBox(
                          height: Get.size.height,
                          width: 130,
                          child: Column(
                            children: [
                              Expanded(
                                child: Image.network(
                                    "https://static-01.daraz.com.bd/p/716ed67243203d728ab8b0d7c66eb7e1.jpg"),
                              ),
                              Text(
                                "Rs.700",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.primary),
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 2,
                        child: SizedBox(
                          height: Get.size.height,
                          width: 130,
                          child: Column(
                            children: [
                              Expanded(
                                child: Image.network(
                                    "https://cdn.pixabay.com/photo/2013/07/13/14/07/apparel-162180_960_720.png"),
                              ),
                              Text(
                                "Rs.700",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.primary),
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 2,
                        child: SizedBox(
                          height: Get.size.height,
                          width: 130,
                          child: Column(
                            children: [
                              Expanded(
                                child: Image.network(
                                    "https://cdn.pixabay.com/photo/2013/07/13/14/07/apparel-162180_960_720.png"),
                              ),
                              Text(
                                "Rs.700",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.primary),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
