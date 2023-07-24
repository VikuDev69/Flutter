import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class OrderHistory extends StatefulWidget {
  const OrderHistory({super.key});

  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  final _textFieldController = TextEditingController();
  final _textFieldController1 = TextEditingController();
  final _textFieldController2 = TextEditingController();
  final _textFieldController3 = TextEditingController();
  final _textFieldController4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Your Orders"),
          centerTitle: true,
          backgroundColor: Colors.black,
          titleTextStyle: const TextStyle(color: Colors.white)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              height: 200,
              width: double.infinity,
              child: Row(
                children: [
                  SizedBox(
                    height: 150,
                    width: 140,
                    child: Image.asset(
                      "lib/images/cart1.jpeg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 20),
                  SizedBox(
                    height: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Delivered yesterday at 12 Pm",
                          maxLines: 10,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Nike White Ranger Shoes M9",
                          maxLines: 10,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              color: Colors.grey.shade500),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        RatingBar.builder(
                          initialRating: 0,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding:
                              const EdgeInsets.symmetric(horizontal: 0),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.green,
                          ),
                          onRatingUpdate: (rating) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                duration: const Duration(milliseconds: 500),
                                content: Text("You Rated $rating Star")));
                          },
                        ),
                        TextButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Text('TextField in Dialog'),
                                  content: TextField(
                                    maxLines: 4,
                                    onChanged: (value) {},
                                    controller: _textFieldController,
                                    // keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Write Your Review Here"),
                                  ),
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(const SnackBar(
                                                  duration:
                                                      Duration(seconds: 2),
                                                  content: Text(
                                                      "Review Submitted Successfully")));
                                        },
                                        child: Text("Submit"))
                                  ],
                                ),
                              );
                            },
                            child: const Text("Write A Review")),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Divider(
              thickness: 2,
              height: 1,
              color: Colors.grey.shade300,
            ),
            Container(
              color: Colors.white,
              height: 200,
              width: double.infinity,
              child: Row(
                children: [
                  SizedBox(
                    height: 150,
                    width: 140,
                    child: Image.asset(
                      "lib/images/cart2.jpeg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 20),
                  SizedBox(
                    height: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Delivered yesterday at 12 Pm",
                          maxLines: 10,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Nike White Ranger Shoes M9",
                          maxLines: 10,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              color: Colors.grey.shade500),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        RatingBar.builder(
                          initialRating: 0,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding:
                              const EdgeInsets.symmetric(horizontal: 0),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.green,
                          ),
                          onRatingUpdate: (rating) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                duration: const Duration(milliseconds: 500),
                                content: Text("You Rated $rating Star")));
                          },
                        ),
                        TextButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Text('TextField in Dialog'),
                                  content: TextField(
                                    maxLines: 4,
                                    onChanged: (value) {},
                                    controller: _textFieldController1,
                                    // keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Write Your Review Here"),
                                  ),
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(const SnackBar(
                                                  duration:
                                                      Duration(seconds: 2),
                                                  content: Text(
                                                      "Review Submitted Successfully")));
                                        },
                                        child: Text("Submit"))
                                  ],
                                ),
                              );
                            },
                            child: const Text("Write A Review")),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Divider(
              thickness: 2,
              height: 1,
              color: Colors.grey.shade300,
            ),
            Container(
              color: Colors.white,
              height: 200,
              width: double.infinity,
              child: Row(
                children: [
                  SizedBox(
                    height: 150,
                    width: 140,
                    child: Image.asset(
                      "lib/images/cart3.jpeg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 20),
                  SizedBox(
                    height: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Delivered yesterday at 12 Pm",
                          maxLines: 10,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Nike White Ranger Shoes M9",
                          maxLines: 10,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              color: Colors.grey.shade500),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        RatingBar.builder(
                          initialRating: 0,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding:
                              const EdgeInsets.symmetric(horizontal: 0),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.green,
                          ),
                          onRatingUpdate: (rating) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                duration: const Duration(milliseconds: 500),
                                content: Text("You Rated $rating Star")));
                          },
                        ),
                        TextButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Text('TextField in Dialog'),
                                  content: TextField(
                                    maxLines: 4,
                                    onChanged: (value) {},
                                    controller: _textFieldController2,
                                    // keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Write Your Review Here"),
                                  ),
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(const SnackBar(
                                                  duration:
                                                      Duration(seconds: 2),
                                                  content: Text(
                                                      "Review Submitted Successfully")));
                                        },
                                        child: Text("Submit"))
                                  ],
                                ),
                              );
                            },
                            child: const Text("Write A Review")),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Divider(
              thickness: 2,
              height: 1,
              color: Colors.grey.shade300,
            ),
            Container(
              color: Colors.white,
              height: 200,
              width: double.infinity,
              child: Row(
                children: [
                  SizedBox(
                    height: 150,
                    width: 140,
                    child: Image.asset(
                      "lib/images/cart4.png.jpeg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 20),
                  SizedBox(
                    height: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Delivered yesterday at 12 Pm",
                          maxLines: 10,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Nike White Ranger Shoes M9",
                          maxLines: 10,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              color: Colors.grey.shade500),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        RatingBar.builder(
                          initialRating: 0,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding:
                              const EdgeInsets.symmetric(horizontal: 0),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.green,
                          ),
                          onRatingUpdate: (rating) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                duration: const Duration(milliseconds: 500),
                                content: Text("You Rated $rating Star")));
                          },
                        ),
                        TextButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Text('TextField in Dialog'),
                                  content: TextField(
                                    maxLines: 4,
                                    onChanged: (value) {},
                                    controller: _textFieldController3,
                                    // keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Write Your Review Here"),
                                  ),
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(const SnackBar(
                                                  duration:
                                                      Duration(seconds: 2),
                                                  content: Text(
                                                      "Review Submitted Successfully")));
                                        },
                                        child: Text("Submit"))
                                  ],
                                ),
                              );
                            },
                            child: const Text("Write A Review")),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Divider(
              thickness: 2,
              height: 1,
              color: Colors.grey.shade300,
            ),
            Container(
              color: Colors.white,
              height: 200,
              width: double.infinity,
              child: Row(
                children: [
                  SizedBox(
                    height: 150,
                    width: 140,
                    child: Image.asset(
                      "lib/images/cart5.png.jpeg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 20),
                  SizedBox(
                    height: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Delivered yesterday at 12 Pm",
                          maxLines: 10,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Nike White Ranger Shoes M9",
                          maxLines: 10,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              color: Colors.grey.shade500),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        RatingBar.builder(
                          initialRating: 0,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding:
                              const EdgeInsets.symmetric(horizontal: 0),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.green,
                          ),
                          onRatingUpdate: (rating) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                duration: const Duration(milliseconds: 500),
                                content: Text("You Rated $rating Star")));
                          },
                        ),
                        TextButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Text('TextField in Dialog'),
                                  content: TextField(
                                    maxLines: 4,
                                    onChanged: (value) {},
                                    controller: _textFieldController4,
                                    // keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Write Your Review Here"),
                                  ),
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(const SnackBar(
                                                  duration:
                                                      Duration(seconds: 2),
                                                  content: Text(
                                                      "Review Submitted Successfully")));
                                        },
                                        child: Text("Submit"))
                                  ],
                                ),
                              );
                            },
                            child: const Text("Write A Review")),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
