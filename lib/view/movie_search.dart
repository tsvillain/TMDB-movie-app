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
            // FocusScope.of(context).requestFocus(FocusNode());
          },
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              alignment: Alignment.centerRight,
              onPressed: () {
                // FocusScope.of(context).requestFocus(FocusNode());
              },
              icon: Icon(Icons.search),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: ListView.separated(
          separatorBuilder: (_, __) => Divider(),
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.pink,
                  ),
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3.4,
                      ),
                      Expanded(
                        child: ListTile(
                          title: Text("Tenet",
                              style: Theme.of(context).textTheme.headline5),
                          subtitle: Row(
                            children: ['advenure', 'family', 'cation']
                                .map((e) => Chip(label: Text('$e')))
                                .toList(),
                          ),
                          trailing: Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              color: Colors.amber,
                            ),
                            child: Text(
                              "5.0",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width / 3.5,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    // image: DecorationImage(
                    //   image: NetworkImage("$posterURL"),
                    //   fit: BoxFit.cover,
                    // ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
