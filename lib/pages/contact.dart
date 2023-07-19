import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(55.0),
        child: AppBar(
          backgroundColor: Colors.black,
          title: const Text('Contact Us'),
          centerTitle: true,
          titleTextStyle: const TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.w700),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // ignore: avoid_unnecessary_containers
                Container(
                  child: const Text(
                    "Nike India",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: const [
                ListTile(
                  leading: Icon(Icons.mail_outline),
                  title: Text("New Market , 2nd Street, Noida"),
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text("011-27282930"),
                ),
                ListTile(
                  leading: Icon(Icons.mail),
                  title: Text("nikeinida@nike.com"),
                ),
                ListTile(
                  leading: Icon(Icons.holiday_village_outlined),
                  title: Text("Monday to Friday 9am -9pm"),
                ),
                ListTile(
                  leading: Icon(Icons.holiday_village_outlined),
                  title: Text("Saturday to Sunday 9am -11pm"),
                ),
                ListTile(
                  leading: Icon(Icons.call),
                  title: Text("945384002"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
