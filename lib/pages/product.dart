// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dotted_border/dotted_border.dart';

class MyProd extends StatefulWidget {
  const MyProd({super.key});

  @override
  State<MyProd> createState() => _MyProdState();
}

class _MyProdState extends State<MyProd> {
  var isVisibleC = false;
  var isVisibleS = false;

  var liked = false;
  var tapchnage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 4,
        centerTitle: true,
        title: const Text('Product'),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 30,
            color: Colors.white,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        //Seclected
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w700),
        selectedIconTheme: const IconThemeData(size: 30),

        //UnSelected
        unselectedIconTheme: const IconThemeData(
          size: 30,
          color: Colors.amber,
        ),
        unselectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.w900,
        ),

        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                setState(() {
                  tapchnage = !tapchnage;
                });
                showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    title: const Text("Cart"),
                    content: tapchnage == true
                        ? const Text('Added To Cart')
                        : const Text('Removed From Cart'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(ctx).pop();
                        },
                        child: Container(
                          color: Colors.transparent,
                          padding: const EdgeInsets.all(14),
                          child: const Text("okay"),
                        ),
                      ),
                    ],
                  ),
                );
              },
              icon: Icon(
                Icons.shopping_bag,
                size: 35,
                color: tapchnage == true
                    ? const Color.fromARGB(255, 83, 225, 7)
                    : Colors.blue,
              ),
            ),
            label: 'Add To Cart',
            tooltip: 'Add To Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_right_alt),
            label: 'Buy Now',
            tooltip: 'Add To Cart',
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Stack(children: [
                Positioned(
                    right: 10,
                    top: 25,
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              liked = !liked;
                            });
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                duration: const Duration(milliseconds: 400),
                                content: liked == true
                                    ? const Text('Liked')
                                    : const Text('Unliked')));
                          },
                          child: Icon(
                            Icons.favorite,
                            size: 35,
                            color: liked == true ? Colors.red : Colors.black,
                          ),
                        ),
                        SizedBox(height: 20),
                        InkWell(
                          onTap: () {
                            setState(() {
                              liked = !liked;
                            });
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                duration: const Duration(milliseconds: 400),
                                content: liked == true
                                    ? const Text('Liked')
                                    : const Text('Unliked')));
                          },
                          child: Icon(
                            Icons.ios_share,
                            size: 35,
                            // color: liked == true ? Colors.red : Colors.black,
                          ),
                        ),
                      ],
                    )),
                CarouselSlider(
                  options: CarouselOptions(
                    height: 250,
                    aspectRatio: 16 / 9,
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 4),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: false,
                    enlargeFactor: 0.3,
                    scrollDirection: Axis.horizontal,
                  ),
                  items: [1, 2, 3, 4, 5].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsetsDirectional.only(top: 30),
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          decoration:
                              const BoxDecoration(color: Colors.transparent),
                          child: Image.asset('lib/images/shoe.png'),
                        );
                      },
                    );
                  }).toList(),
                ),
              ]),
              SizedBox(
                height: 40,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Nike Shadow Blade Shoes",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Rs.17,999.0",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "M.R.P. 24,999.0",
                      style: TextStyle(
                        fontSize: 13,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "28.0% off",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 7, 213, 14)),
                    ),
                    SizedBox(width: 40),
                    Text(
                      "In-stock",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 7, 213, 14)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 10),
                    ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.star),
                        label: Text('(100)')),
                    SizedBox(width: 10),
                    Text(
                      "Best | 100 ratings",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(width: 70),
                    Text(
                      "(1000 products)",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
                height: 25,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 10),
                    Text(
                      'Color : Blue Green',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    SizedBox(width: 180),
                    GestureDetector(
                      onTap: () => setState(() => isVisibleC = !isVisibleC),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text("1 more"),
                          Icon(Icons.arrow_drop_down)
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Visibility(
                  visible: isVisibleC,
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            border: Border.all(
                              color: Colors.blue,
                              width: 2,
                            )),
                        child: Icon(
                          Icons.circle,
                          size: 30,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  )),
              Divider(
                thickness: 2,
                height: 25,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 10),
                    Text(
                      'Size : Uk',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    SizedBox(width: 245),
                    GestureDetector(
                      onTap: () => setState(() => isVisibleS = !isVisibleS),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text("1 more"),
                          Icon(Icons.arrow_drop_down)
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Visibility(
                  visible: isVisibleS,
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            border: Border.all(
                              color: Colors.blue,
                              width: 2,
                            )),
                        child: Text('10'),
                      ),
                    ],
                  )),
              Divider(
                thickness: 2,
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DottedBorder(
                    borderType: BorderType.RRect,
                    radius: Radius.circular(12),
                    padding: EdgeInsets.all(6),
                    strokeWidth: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          SizedBox(
                            height: 10,
                            width: 100,
                          ),
                          Text("Get upto 10% cashback",
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 12,
                              )),
                          Text(
                            'on HDFC Credit Card EMI',
                            style: TextStyle(fontSize: 12),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'T&C',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  DottedBorder(
                    borderType: BorderType.RRect,
                    radius: Radius.circular(12),
                    padding: EdgeInsets.all(6),
                    strokeWidth: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 10,
                            width: 100,
                          ),
                          Text("Get upto 10% cashback",
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 12,
                              )),
                          Text(
                            'on HDFC Credit Card EMI',
                            style: TextStyle(fontSize: 12),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'T&C',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
