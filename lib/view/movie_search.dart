import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tmdb/controller/movieController.dart';

import '../constants.dart';

class MovieSearch extends StatefulWidget {
  @override
  _MovieSearchState createState() => _MovieSearchState();
}

class _MovieSearchState extends State<MovieSearch> {
  final MovieController movieController = Get.put(MovieController());
  TextEditingController searchController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  Icon actionIcon = Icon(Icons.search);
  searchMovie(String movieName) {
    movieController.getSearchedMovie(movieName);
  }

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
          onEditingComplete: () => searchMovie(searchController.text),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              alignment: Alignment.centerRight,
              onPressed: () => searchMovie(searchController.text),
              icon: Icon(Icons.search),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: Obx(() => movieController.isLoading.value
            ? Center(child: CircularProgressIndicator())
            : movieController.searchedMovies.length == 0
                ? Center(
                    child: Text('No Movie Found'),
                  )
                : ListView.separated(
                    separatorBuilder: (_, __) => Divider(),
                    itemCount: movieController.searchedMovies.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white10,
                            ),
                            height: MediaQuery.of(context).size.height * 0.25,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width / 3.4,
                                ),
                                Expanded(
                                  child: ListTile(
                                    title: Text(
                                        "${movieController.searchedMovies[index].title}",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5),
                                    subtitle: Wrap(
                                      children: movieController
                                          .searchedMovies[index].category
                                          .map((e) => Text('${e.category}  '))
                                          .toList(),
                                    ),
                                    trailing: Container(
                                      padding: EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        color: Colors.amber,
                                      ),
                                      child: Text(
                                        "${movieController.searchedMovies[index].rating}",
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
                              image: DecorationImage(
                                image: NetworkImage(
                                    "$posterURL${movieController.searchedMovies[index].posterURL}"),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ],
                      );
                    },
                  )),
      ),
    );
  }
}
