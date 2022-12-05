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
        body: SingleChildScrollView(
          child: Column(
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
                  Icons.shopping_cart,
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

              //ON SALE NOW
              const Products(price: "Rs.700"),

              //LISTTILE
              const Mylisttile(title: "500/piece", trailing: "see all"),

              //500/piece
              const Products(price: "Rs.500"),
            ],
          ),
        ),
      ),
    );
  }
}

class Products extends StatelessWidget {
  // final Image image;
  final String price;
  const Products({
    // required this.image,
    required this.price,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List Images = [
      {
        "image":
            "https://www.rei.com/media/43314827-8954-4e1e-a32b-8fd2ce0c0b99?size=576x768"
      },
      {
        "image":
            "https://www.rei.com/media/18098ed6-f674-4ecb-9a25-d1435ce074a0?size=576x768"
      },
      {"image": "https://www.rei.com/media/product/1409630021"}
    ];
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // color: Colors.amber,
        height: 140,
        width: Get.size.width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: Images.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                // color: AppColor.secondary,
                child: SizedBox(
                  height: 130,
                  width: 130,
                  child: Column(
                    children: [
                      Expanded(child: Image.network(Images[index]['image'])),
                      Text(
                        price,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColor.primary),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
