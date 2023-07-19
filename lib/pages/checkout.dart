import 'package:flutter/material.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({super.key});

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('CheckOut'),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          const Row(
            children: [
              SizedBox(
                height: 100,
                width: 90,
              ),
              SizedBox(
                child: Text(
                  "Choose your plan",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Text(
                        'Free',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        '7 days',
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  )),
              SizedBox(
                width: 100,
              ),
              Padding(
                padding: EdgeInsets.all(0.8),
                child: Column(
                  children: [
                    Text(
                      'Rs.450',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      'Per Week',
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        child: Column(
                          children: [
                            Text(
                              'Rs.900',
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              'Per Month',
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                width: 100,
              ),
              Padding(
                padding: EdgeInsets.all(0.8),
                child: Column(
                  children: [
                    Text(
                      'Rs.2000',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      'LifeTime',
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
              ),
            ],
          ),
          const Column(
            children: [
              SizedBox(
                height: 20,
              ),
              ListTile(
                contentPadding: EdgeInsets.only(right: 16.0, left: 30),
                minLeadingWidth: 40,
                minVerticalPadding: 15,
                // subtitle: Text('Subs'),
                title: Text("Paypal"),
                iconColor: Colors.black,
                leading: Icon(Icons.paypal_rounded),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                contentPadding: EdgeInsets.only(right: 16.0, left: 30),
                minLeadingWidth: 40,
                minVerticalPadding: 15,
                title: Text("Google Pay"),
                iconColor: Colors.black,
                leading: Icon(Icons.g_mobiledata),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                contentPadding: EdgeInsets.only(right: 16.0, left: 30),
                minLeadingWidth: 40,
                minVerticalPadding: 15,
                title: Text("Apple Pay"),
                iconColor: Colors.black,
                leading: Icon(
                  Icons.apple,
                ),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          MaterialButton(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12))),
            padding: const EdgeInsets.only(
              left: 130,
              right: 130,
              top: 25,
              bottom: 25,
            ),
            focusElevation: 20,
            height: 50,
            elevation: 2,
            onPressed: () {},
            color: Colors.black,
            textColor: Colors.white,
            child: const Text("Continue"),
          )
        ],
      )),
    );
  }
}
