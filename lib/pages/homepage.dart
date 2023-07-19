// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:task_1/Models/searchbar.dart';
import 'package:task_1/pages/login_page.dart';
import 'package:task_1/pages/profile_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:task_1/pages/product.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var liked = false;
  var tapchnage = false;
  var count = 0;
  var checked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(120),
          child: Container(
            color: Colors.black,
            child: Column(
              children: [
                AppBar(
                  centerTitle: true,
                  title: const Text("Nike"),
                  actions: const [], //<Widget>[]
                  backgroundColor: Colors.black,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SearchScreen()));
                  },
                  child: Container(
                    color: Colors.black,
                    child: Column(
                      children: [
                        ListTile(
                          trailing: Icon(Icons.arrow_forward),
                          iconColor: Colors.white,
                          leading: Icon(
                            Icons.search,
                            size: 28,
                          ),
                          title: Text(
                            "Search Here",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 20),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        drawer: Drawer(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(200),
                  topLeft: Radius.circular(200),
                  topRight: Radius.circular(200),
                  bottomRight: Radius.circular(200))),
          shadowColor: Colors.black,
          elevation: 20,
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.pink,
          width: 200,
          child: ListView(
            children: [
              Container(
                height: 40.0,
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ProfilePage()));
                },
                title: const Text('Profile'),
                leading: const Icon(Icons.person),
                iconColor: Colors.black,
              ),
              ListTile(
                  onTap: () {},
                  title: const Text('Favorite'),
                  leading: const Icon(Icons.favorite),
                  iconColor: Colors.red),
              ListTile(
                  onTap: () {},
                  title: const Text('Wallet'),
                  leading: const Icon(Icons.wallet),
                  iconColor: Colors.brown),
              ListTile(
                  onTap: () {},
                  title: const Text('Gift Card'),
                  leading: const Icon(Icons.card_giftcard_outlined),
                  iconColor: const Color.fromARGB(255, 237, 64, 122)),
              ListTile(
                  onTap: () {},
                  title: const Text('Settings'),
                  leading: const Icon(Icons.settings),
                  iconColor: Colors.blue),
              ListTile(
                  onTap: () {
                    Navigator.pushAndRemoveUntil<dynamic>(
                      context,
                      MaterialPageRoute<dynamic>(
                        builder: (context) => LoginPage(),
                      ),
                      (route) =>
                          false, //if you want to disable back feature set to false
                    );
                  },
                  title: const Text('Log Out'),
                  leading: const Icon(Icons.keyboard_backspace_outlined),
                  iconColor: Colors.red),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    clipBehavior: Clip.antiAlias,
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
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 1,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.amber,
                            radius: 28,
                            child: CircleAvatar(
                              radius: 25,
                              backgroundImage: ExactAssetImage(
                                'lib/images/Mobiles.png',
                              ),
                            ),
                          ),
                          Text('Smartphones'),
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.amber,
                            radius: 28,
                            child: CircleAvatar(
                              radius: 25,
                              backgroundImage:
                                  ExactAssetImage('lib/images/laptop.png'),
                            ),
                          ),
                          Text('Laptops'),
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.amber,
                            radius: 28,
                            child: CircleAvatar(
                              radius: 25,
                              backgroundImage:
                                  ExactAssetImage('lib/images/Tv.png'),
                            ),
                          ),
                          Text('Tv'),
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.amber,
                            radius: 28,
                            child: CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.white,
                              backgroundImage: ExactAssetImage(
                                'lib/images/headphones.png',
                                scale: 1.0,
                              ),
                            ),
                          ),
                          Text('Music'),
                        ],
                      ),
                      SizedBox(
                        width: 1,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.grey.shade400),
                  child: Column(
                    children: [
                      ExpansionTile(
                        title: Text(
                          'Explore More Categories Here',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        children: [
                          ListTile(
                            title: Text('Shirts'),
                          ),
                          ListTile(
                            title: Text('Shoes'),
                          ),
                          ListTile(
                            title: Text('Bags'),
                          ),
                          ListTile(
                            title: Text('Watch'),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              height: 250,
                              width: 200,
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => MyProd()));
                                },
                                child: Image.asset(
                                  'lib/images/img 3.png',
                                ),
                              )),
                        );
                      }),
                ),
              ],
            ),
          ),
        ));
  }
}
