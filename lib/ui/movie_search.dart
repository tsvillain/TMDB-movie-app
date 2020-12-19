import 'package:flutter/material.dart';

class MovieSearch extends StatefulWidget {
  @override
  _MovieSearchState createState() => _MovieSearchState();
}

class _MovieSearchState extends State<MovieSearch> {
  TextEditingController searchController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  Icon actionIcon = Icon(Icons.search);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: TextField(
          autofocus: true,
          focusNode: _focusNode,
          controller: searchController,
          decoration: InputDecoration(hintText: "Search.."),
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.search,
          onEditingComplete: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              alignment: Alignment.centerRight,
              onPressed: () {
                FocusScope.of(context).requestFocus(FocusNode());
              },
              icon: Icon(Icons.search),
            ),
          ),
        ],
      ),
      body: Container(),
    );
  }
}
