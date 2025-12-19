import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Search a City',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          child: TextField(
            controller: searchController,
            onSubmitted: (value) {
              // log(value);
            },
            decoration: InputDecoration(
              label: Text('Search'),
              hintText: 'Enter city name',
              suffixIcon: IconButton(
                onPressed: () {
                  // log(searchController.text);
                },
                icon: Icon(Icons.search),
              ),
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 32.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
