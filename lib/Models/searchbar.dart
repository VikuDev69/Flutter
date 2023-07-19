import 'package:flutter/material.dart';

import '../components/my_textfield.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<String> items = [
    'Shirts',
    'Shoes',
    'T-Shirts',
    'Jordan Air',
    'Belts',
    'SmartBand',
    'Hoodie',
    'Cargo Joggers',
    'Joggers',
    'Kids Shoes',
    'Wrist Bands',
    'Yoga Mates',
    'Bike Gloves'
  ];

  List<String> filteredItems = [];

  @override
  void initState() {
    super.initState();
    filteredItems.addAll(items);
  }

  void filterSearchResults(String query) {
    List<String> searchResults = [];
    searchResults.addAll(items);

    if (query.isNotEmpty) {
      searchResults.retainWhere(
          (item) => item.toLowerCase().contains(query.toLowerCase()));
    }

    setState(() {
      filteredItems.clear();
      filteredItems.addAll(searchResults);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: Column(
          children: [
            AppBar(
              backgroundColor: Colors.black,
              title: Text('Search Items Here'),
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            
            color: Colors.black,
            child: Column(
              children: [
                MyTextField(
                  hintText: 'Search Here',
                  obscureText: false,
                  prefixIcon: Icon(Icons.search),
                  onChanged: (value) {
                    filterSearchResults(value);
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Can not Be Empty';
                    }
                  },
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredItems.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(filteredItems[index]),
                  onTap: () {},
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
