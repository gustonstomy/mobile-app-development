import 'package:ecomerce/boxes.dart';
import 'package:ecomerce/buttons.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(235, 232, 232, 1.0),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        actions: const [
          Icon(
            Icons.search_outlined,
            color: Colors.black,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 170,
              width: double.infinity,
              color: const Color.fromRGBO(235, 232, 232, 1.0),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Premium Outfit",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Color(0xFF0D4D8D),
                      ),
                    ),
                    const Text(
                      "50% Discount",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber),
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * .03,
                    ),
                    const BottunsClick(
                      name: "Buy Now",
                      tcolor: Colors.white,
                      height: 55,
                      width: 10,
                      fontSize: 15,
                      bcolor: Color(0xFF0D4D8D),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * .03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: SizedBox(
                      height: 170,
                      width: double.infinity,
                      child: SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: Image.asset(
                          "assets/images/bt.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      left: 80,
                      bottom: 0,
                      child: SizedBox(
                          height: 200,
                          width: 250,
                          child: Image.asset(
                            "assets/images/ldy.png",
                            fit: BoxFit.cover,
                          ))),
                  const Positioned(
                    top: 150,
                    left: 130,
                    child: BottunsClick(
                      name: "Buy Now",
                      tcolor: Colors.white,
                      height: 50,
                      width: 7,
                      fontSize: 13,
                      bcolor: Colors.amber,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * .03,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Category",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.black),
                    ),
                  ),
                  Text(
                    "Show more",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * .03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SizedBox(
                height: 130,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const BoxesWithName(
                        name: "Hat",
                        image: "assets/images/8.png",
                        width: 75,
                        height: 75),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.05,
                    ),
                    const BoxesWithName(
                        name: "Watch",
                        image: "assets/images/10.png",
                        width: 75,
                        height: 75),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.05,
                    ),
                    const BoxesWithName(
                        name: "Red sheo",
                        image: "assets/images/14.png",
                        width: 75,
                        height: 75),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.05,
                    ),
                    const BoxesWithName(
                        name: "Hat",
                        image: "assets/images/4.png",
                        width: 75,
                        height: 75),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.05,
                    ),
                    const BoxesWithName(
                        name: "L-Sleave",
                        image: "assets/images/5.png",
                        width: 75,
                        height: 75),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.05,
                    ),
                    const BoxesWithName(
                        name: "Shirt red",
                        image: "assets/images/6.png",
                        width: 75,
                        height: 75),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.05,
                    ),
                    const BoxesWithName(
                        name: "L-Sleave",
                        image: "assets/images/2.png",
                        width: 75,
                        height: 75),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.05,
                    ),
                    const BoxesWithName(
                        name: "Hat-ladies",
                        image: "assets/images/1.png",
                        width: 75,
                        height: 75),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.05,
                    ),
                    const BoxesWithName(
                        name: "Watch",
                        image: "assets/images/11.png",
                        width: 75,
                        height: 75),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.05,
                    ),
                    const BoxesWithName(
                        name: "Shirt-Blue",
                        image: "assets/images/7.png",
                        width: 75,
                        height: 75),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      "Flash Sale",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.black),
                    ),
                  ),
                  const Text(
                    "Closing in",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.01,
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey)),
                    child: const Center(child: Text("00")),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.01,
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey)),
                    child: const Center(child: Text("07")),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.01,
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey)),
                    child: const Center(child: Text("56")),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const BoxesWithName(
                        name: "Hat",
                        image: "assets/images/13.png",
                        width: 150,
                        height: 150),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.05,
                    ),
                    const BoxesWithName(
                        name: "Watch",
                        image: "assets/images/2.png",
                        width: 150,
                        height: 150),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.05,
                    ),
                    const BoxesWithName(
                        name: "Red sheo",
                        image: "assets/images/3.png",
                        width: 150,
                        height: 150),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.05,
                    ),
                    const BoxesWithName(
                        name: "Hat",
                        image: "assets/images/15.png",
                        width: 150,
                        height: 150),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.05,
                    ),
                    const BoxesWithName(
                        name: "L-Sleave",
                        image: "assets/images/5.png",
                        width: 150,
                        height: 150),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.05,
                    ),
                    const BoxesWithName(
                        name: "Shirt red",
                        image: "assets/images/6.png",
                        width: 150,
                        height: 150),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.05,
                    ),
                    const BoxesWithName(
                        name: "L-Sleave",
                        image: "assets/images/10.png",
                        width: 150,
                        height: 150),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.05,
                    ),
                    const BoxesWithName(
                        name: "Hat-ladies",
                        image: "assets/images/8.png",
                        width: 150,
                        height: 150),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.05,
                    ),
                    const BoxesWithName(
                        name: "Watch",
                        image: "assets/images/11.png",
                        width: 150,
                        height: 150),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.05,
                    ),
                    const BoxesWithName(
                        name: "Shirt-Blue",
                        image: "assets/images/7.png",
                        width: 150,
                        height: 150),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
