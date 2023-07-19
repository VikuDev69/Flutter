import 'package:flutter/material.dart';
import 'package:task_1/pages/checkout.dart';
import 'package:get/get.dart';
import '../components/controller.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final _controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Cart'),
          backgroundColor: Colors.black,
        ),
        body: Obx(
          () => SingleChildScrollView(
              child: Column(
            children: [
              Container(
                  padding: const EdgeInsets.all(0),
                  margin: const EdgeInsets.all(10),
                  height: 150,
                  width: 370,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 25,
                          color: Colors.black,
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 150,
                        width: 120,
                        child: Image.asset(
                          'lib/images/cart1.jpeg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Text("Item 1"),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.restore_from_trash_rounded,
                                      color: Colors.red,
                                    )),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Row(
                              children: [
                                Text("Price : Rs.990"),
                              ],
                            ),
                            Row(
                              children: [
                                const Text("Ships Free"),
                                const SizedBox(
                                  width: 40,
                                ),
                                IconButton(
                                    onPressed: () {
                                      if (_controller.count_1 >= 1) {
                                        _controller.decrement_1();
                                      }
                                    },
                                    icon: const Icon(
                                      size: 20,
                                      Icons.remove,
                                      color: Colors.black,
                                    )),
                                Container(
                                  padding: const EdgeInsets.all(3),
                                  margin: const EdgeInsets.only(
                                    left: 1,
                                    right: 1,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    color: Colors.white,
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.grey,
                                        offset: Offset(0.0, 1.0), //(x,y)
                                        blurRadius: 6.0,
                                      ),
                                    ],
                                  ),
                                  child: Text(
                                    '${_controller.count_1}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ),
                                IconButton(
                                    onPressed: () {
                                      _controller.increment_1();
                                    },
                                    icon: const Icon(
                                      size: 20,
                                      Icons.add,
                                      color: Colors.black,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
              Container(
                  padding: const EdgeInsets.all(0),
                  margin: const EdgeInsets.all(10),
                  height: 150,
                  width: 370,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 25,
                          color: Colors.black,
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 150,
                        width: 120,
                        child: Image.asset(
                          'lib/images/cart2.jpeg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Text("Item 2"),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.restore_from_trash_rounded,
                                      color: Colors.red,
                                    ))
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Row(
                              children: [Text("Price : Rs.989")],
                            ),
                            Row(
                              children: [
                                const Text("Ships Free"),
                                const SizedBox(
                                  width: 40,
                                ),
                                IconButton(
                                    onPressed: () {
                                      if (_controller.count_2 >= 1) {
                                        _controller.decrement_2();
                                      }
                                    },
                                    icon: const Icon(
                                      size: 20,
                                      Icons.remove,
                                      color: Colors.black,
                                    )),
                                Container(
                                  padding: const EdgeInsets.all(3),
                                  margin: const EdgeInsets.only(
                                    left: 1,
                                    right: 1,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    color: Colors.white,
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.grey,
                                        offset: Offset(0.0, 1.0), //(x,y)
                                        blurRadius: 6.0,
                                      ),
                                    ],
                                  ),
                                  child: Text(
                                    '${_controller.count_2}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ),
                                IconButton(
                                    onPressed: () {
                                      _controller.increment_2();
                                    },
                                    icon: const Icon(
                                      size: 20,
                                      Icons.add,
                                      color: Colors.black,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
              Container(
                  padding: const EdgeInsets.all(0),
                  margin: const EdgeInsets.all(10),
                  height: 150,
                  width: 370,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 25,
                          color: Colors.black,
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 150,
                        width: 120,
                        child: Image.asset(
                          'lib/images/cart3.jpeg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Text("Item 3"),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.restore_from_trash_rounded,
                                      color: Colors.red,
                                    ))
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Row(
                              children: [Text("Price : Rs.999")],
                            ),
                            Row(
                              children: [
                                const Text("Ships Free"),
                                const SizedBox(
                                  width: 40,
                                ),
                                IconButton(
                                    onPressed: () {
                                      if (_controller.count_3 >= 1) {
                                        _controller.decrement_3();
                                      }
                                    },
                                    icon: const Icon(
                                      size: 20,
                                      Icons.remove,
                                      color: Colors.black,
                                    )),
                                Container(
                                  padding: const EdgeInsets.all(3),
                                  margin: const EdgeInsets.only(
                                    left: 1,
                                    right: 1,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    color: Colors.white,
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.grey,
                                        offset: Offset(0.0, 1.0), //(x,y)
                                        blurRadius: 6.0,
                                      ),
                                    ],
                                  ),
                                  child: Text(
                                    '${_controller.count_3}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ),
                                IconButton(
                                    onPressed: () {
                                      _controller.increment_3();
                                    },
                                    icon: const Icon(
                                      size: 20,
                                      Icons.add,
                                      color: Colors.black,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
              Container(
                  padding: const EdgeInsets.all(0),
                  margin: const EdgeInsets.all(10),
                  height: 150,
                  width: 370,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 25,
                          color: Colors.black,
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 150,
                        width: 120,
                        child: Image.asset(
                          'lib/images/cart4.png.jpeg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Text("Item 4"),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.restore_from_trash_rounded,
                                      color: Colors.red,
                                    ))
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Row(
                              children: [Text("Price : Rs.499")],
                            ),
                            Row(
                              children: [
                                const Text("Ships Free"),
                                const SizedBox(
                                  width: 40,
                                ),
                                IconButton(
                                    onPressed: () {
                                      if (_controller.count_4 >= 1) {
                                        _controller.decrement_4();
                                      }
                                    },
                                    icon: const Icon(
                                      size: 20,
                                      Icons.remove,
                                      color: Colors.black,
                                    )),
                                Container(
                                  padding: const EdgeInsets.all(3),
                                  margin: const EdgeInsets.only(
                                    left: 1,
                                    right: 1,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    color: Colors.white,
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.grey,
                                        offset: Offset(0.0, 1.0), //(x,y)
                                        blurRadius: 6.0,
                                      ),
                                    ],
                                  ),
                                  child: Text(
                                    '${_controller.count_4}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ),
                                IconButton(
                                    onPressed: () {
                                      _controller.increment_4();
                                    },
                                    icon: const Icon(
                                      size: 20,
                                      Icons.add,
                                      color: Colors.black,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
              Container(
                  padding: const EdgeInsets.all(0),
                  margin: const EdgeInsets.all(10),
                  height: 150,
                  width: 370,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 25,
                          color: Colors.black,
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 150,
                        width: 120,
                        child: Image.asset(
                          'lib/images/cart5.png.jpeg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Text("Item 5"),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.restore_from_trash_rounded,
                                      color: Colors.red,
                                    ))
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Row(
                              children: [
                                Text("Price : Rs.299"),
                              ],
                            ),
                            Row(
                              children: [
                                const Text("Ships Free"),
                                const SizedBox(
                                  width: 40,
                                ),
                                IconButton(
                                    onPressed: () {
                                      if (_controller.count_5 >= 1) {
                                        _controller.decrement_5();
                                      }
                                    },
                                    icon: const Icon(
                                      size: 20,
                                      Icons.remove,
                                      color: Colors.black,
                                    )),
                                Container(
                                  padding: const EdgeInsets.all(3),
                                  margin: const EdgeInsets.only(
                                    left: 1,
                                    right: 1,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    color: Colors.white,
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.grey,
                                        offset: Offset(0.0, 1.0), //(x,y)
                                        blurRadius: 6.0,
                                      ),
                                    ],
                                  ),
                                  child: Text(
                                    '${_controller.count_5}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ),
                                IconButton(
                                    onPressed: () {
                                      _controller.increment_5();
                                    },
                                    icon: const Icon(
                                      size: 20,
                                      Icons.add,
                                      color: Colors.black,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.all(20.0),
                    child: const Text(
                      "Total Amount :  RS.10,999.0",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
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
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const CheckOut()));
                },
                color: Colors.black,
                textColor: Colors.white,
                child: const Text("CheckOut"),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          )),
        ));
  }
}
