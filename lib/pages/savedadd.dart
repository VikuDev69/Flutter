import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_1/pages/myadd.dart';

class SavedAddress extends StatefulWidget {
  const SavedAddress({super.key});

  @override
  State<SavedAddress> createState() => _SavedAddressState();
}

class _SavedAddressState extends State<SavedAddress> {
  String? addtype;
  String? flat;
  String? street;
  String? area;
  String? pin;
  String? state;

  void getData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      addtype = prefs.getString('addtype');
      flat = prefs.getString("flat");
      street = prefs.getString("street");
      area = prefs.getString("area");
      pin = prefs.getString("pin");
      state = prefs.getString("state");
    });
  }

  @override
  void initState() {
    getData();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Saved Address'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            DottedBorder(
                color: Colors.grey.shade700,
                borderPadding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding:
                              EdgeInsets.only(left: 10, top: 16, bottom: 10),
                          child: Text("Add Type - $addtype"),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            left: 15,
                          ),
                          child: Text("$flat "),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 15, top: 2),
                          child: Text("$street "),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 15, top: 2),
                          child: Text("$area "),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 15, top: 2),
                          child: Text("$pin"),
                        ),
                        Container(
                          padding:
                              EdgeInsets.only(left: 15, top: 2, bottom: 16),
                          child: Text("$state"),
                        ),
                      ],
                    ),
                  ],
                )),
            MaterialButton(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              padding: const EdgeInsets.only(
                left: 100,
                right: 100,
                top: 20,
                bottom: 20,
              ),
              focusElevation: 20,
              height: 50,
              elevation: 15,
              onPressed: () {
                Navigator.push<dynamic>(
                  context,
                  MaterialPageRoute<dynamic>(
                    builder: (context) => MyAdd(),
                  ), //if you want to disable back feature set to false
                );
              },
              color: Colors.black,
              textColor: Colors.white,
              child: const Text(
                "Edit Address",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
