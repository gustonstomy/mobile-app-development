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
      body: Column(
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
                    height: 40,
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
                        fontSize: 20,
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
          ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
