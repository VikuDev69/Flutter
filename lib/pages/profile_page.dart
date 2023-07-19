// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_1/pages/login_page.dart';
import 'package:task_1/pages/contact.dart';
import 'package:task_1/pages/myadd.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String? email;
  void getData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      email = prefs.getString('email');
    });
  }

  @override
  void initState() {
    getData();

    super.initState();
  }

  List<String> gender = <String>['male', 'female'];
  String? myvalue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Profile",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 40,
            ),
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey.shade400,
              child: CircleAvatar(
                radius: 45,
                backgroundColor: Colors.blue,
                backgroundImage: ExactAssetImage('lib/images/vikas.jpg'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundImage: ExactAssetImage('lib/images/facebook.png'),
                ),
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundImage:
                      ExactAssetImage('lib/images/google-plus.png'),
                ),
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundImage: ExactAssetImage('lib/images/twitter.png'),
                ),
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  backgroundImage: ExactAssetImage('lib/images/linkedin.png'),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Vikas Bharti",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "$email",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "@Viku69",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w200),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Mobile App Developer and Open",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "source enthusiastic",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
            ),

            // ExpansionTile(
            //   title: Text('explor your products'),
            //   children: [
            //     ListTile(
            //       title: Text('shirt'),
            //     ),
            //     ListTile(
            //       title: Text('shoes'),
            //     ),
            //     ListTile(
            //       title: Text('bags'),
            //     ),
            //     ListTile(
            //       title: Text('watch'),
            //     )
            //   ],
            // ),

            // DropdownButton<String>(
            //     hint: Text('select gender'),
            //     value: myvalue,
            //     items: gender.map((String e) {
            //       return DropdownMenuItem<String>(value: e, child: Text('$e'));
            //     }).toList(),
            //     onChanged: (value) {
            //       setState(() {
            //         myvalue = value;
            //         print('${myvalue}');
            //       });
            //     }),

            SizedBox(
              height: 300,
              child: ListView(
                children: [
                  Container(
                    height: 40.0,
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.pushAndRemoveUntil<dynamic>(
                        context,
                        MaterialPageRoute<dynamic>(
                          builder: (context) => MyAdd(),
                        ),
                        (route) =>
                            true, //if you want to disable back feature set to false
                      );
                    },
                    title: const Text('My Address'),
                    leading: const Icon(Icons.location_on_rounded),
                    iconColor: Colors.greenAccent,
                  ),
                  Divider(
                    thickness: 2,
                    color: Colors.grey.shade300,
                    indent: 70,
                  ),
                  ListTile(
                      onTap: () {},
                      title: const Text('Edit Profile'),
                      leading: const Icon(Icons.person),
                      iconColor: Colors.red),
                  Divider(
                    thickness: 2,
                    color: Colors.grey.shade300,
                    indent: 70,
                  ),
                  ListTile(
                      onTap: () {},
                      title: const Text('My Coupons'),
                      leading: const Icon(Icons.card_membership),
                      iconColor: Colors.brown),
                  Divider(
                    thickness: 2,
                    color: Colors.grey.shade300,
                    indent: 70,
                  ),
                  ListTile(
                      onTap: () {},
                      title: const Text('Order History'),
                      leading: const Icon(Icons.history),
                      iconColor: const Color.fromARGB(255, 237, 64, 122)),
                  Divider(
                    thickness: 2,
                    color: Colors.grey.shade300,
                    indent: 70,
                  ),
                  ListTile(
                      onTap: () {
                        Navigator.pushAndRemoveUntil<dynamic>(
                          context,
                          MaterialPageRoute<dynamic>(
                            builder: (context) => ContactUs(),
                          ),
                          (route) =>
                              true, //if you want to disable back feature set to false
                        );
                      },
                      title: const Text('Contact Us'),
                      leading: const Icon(Icons.phone),
                      iconColor: Colors.blue),
                  Divider(
                    thickness: 2,
                    color: Colors.grey.shade300,
                    indent: 70,
                  ),
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
                  Divider(
                    thickness: 2,
                    color: Colors.grey.shade300,
                    indent: 70,
                  ),
                ],
              ),
            )
          ]),
        ),
      )),
    );
  }
}
