// const SizedBox(
//                   height: 35,
//                 ),
//                 Stack(children: [
//                   Positioned(
//                     right: 10,
//                     top: 5,
//                     child: Column(
//                       children: [
//                         InkWell(
//                           onTap: () {
//                             setState(() {
//                               liked = !liked;
//                             });
//                             ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                                 duration: const Duration(milliseconds: 400),
//                                 content: liked == true
//                                     ? const Text('Liked')
//                                     : const Text('Unliked')));
//                           },
//                           child: Icon(
//                             Icons.favorite,
//                             size: 35,
//                             color: liked == true ? Colors.red : Colors.black,
//                           ),
//                         ),
//                         SizedBox(height: 30),
//                         InkWell(
//                           onTap: () {
//                             setState(() {
//                               liked = !liked;
//                             });
//                             ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                                 duration: const Duration(milliseconds: 400),
//                                 content: liked == true
//                                     ? const Text('Liked')
//                                     : const Text('Unliked')));
//                           },
//                           child: Icon(
//                             Icons.shopping_bag,
//                             size: 35,
//                             color: tapchnage == true
//                                 ? const Color.fromARGB(255, 83, 225, 7)
//                                 : Colors.black,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Container(
//                       width: double.infinity,
//                       height: MediaQuery.of(context).size.height * 0.3,
//                       child: PageView.builder(
//                           itemBuilder: (context, pagePosition) {
//                         return Container(
//                           child: ListView.builder(
//                               scrollDirection: Axis.horizontal,
//                               itemCount: 5,
//                               itemBuilder: (context, index) {
//                                 return Padding(
//                                   padding: const EdgeInsets.all(6.0),
//                                   child: Container(
//                                     height: 250,
//                                     width: 350,
//                                     child: Image.asset(
//                                       'lib/images/shoe.png',
//                                       // height: 100,
//                                       // width: 500,
//                                     ),
//                                   ),
//                                 );
//                               }),
//                         );
//                       })),
//                 ]),
//                 Builder(builder: (context) {
//                   return Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       const SizedBox(
//                         width: 20,
//                       ),
//                       ElevatedButton(
//                           onPressed: () {
//                             setState(() {
//                               liked = !liked;
//                             });
//                             ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                                 duration: const Duration(milliseconds: 400),
//                                 content: liked == true
//                                     ? const Text('Liked')
//                                     : const Text('Unliked')));
//                           },
//                           child: const Text('Favorite')),
//                       const SizedBox(
//                         width: 90,
//                       ),
//                       const SizedBox(
//                         width: 55,
//                       ),
//                       ElevatedButton(
//                           onPressed: () {
//                             setState(() {
//                               tapchnage = !tapchnage;
//                             });
//                             showDialog(
//                               context: context,
//                               builder: (ctx) => AlertDialog(
//                                 title: const Text("Cart"),
//                                 content: tapchnage == true
//                                     ? const Text('Added To Cart')
//                                     : const Text('Removed From Cart'),
//                                 actions: <Widget>[
//                                   TextButton(
//                                     onPressed: () {
//                                       Navigator.of(ctx).pop();
//                                     },
//                                     child: Container(
//                                       color: Colors.transparent,
//                                       padding: const EdgeInsets.all(14),
//                                       child: const Text("okay"),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             );
//                           },
//                           child: const Text('Add To Cart')),
//                       const SizedBox(
//                         height: 10,
//                       )
//                     ],
//                   );
//                 }),
//                 Builder(builder: (context) {
//                   return const Column(
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Row(
//                             children: [
//                               SizedBox(
//                                 width: 20,
//                               ),
//                               Padding(
//                                   padding: EdgeInsetsDirectional.only(top: 50)),
//                               Text("The Nike Air Pegasis 89",
//                                   style: TextStyle(
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.bold,
//                                     letterSpacing: 1,
//                                   )),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ],
//                   );
//                 }),
//                 SizedBox(
//                   height: 250,
//                   child: ListView.builder(
//                       scrollDirection: Axis.horizontal,
//                       itemCount: 5,
//                       itemBuilder: (context, index) {
//                         return Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Container(
//                               height: 250,
//                               width: 200,
//                               child: InkWell(
//                                 onTap: () {
//                                   Navigator.of(context).push(MaterialPageRoute(
//                                       builder: (context) => MyProd()));
//                               },
//                               child: Image.asset(
//                                   'lib/images/img 3.png',
//                               ),
//                             )
//                           ),
//                         );
//                      }
//                     ),
//                   ),
