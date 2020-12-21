import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/getwidget.dart';
import 'package:tmdb/constants.dart';
import 'package:tmdb/controller/movieController.dart';
import 'package:tmdb/view/movie_search.dart';
import 'movie_desc.dart';

class Home extends StatelessWidget {
  final MovieController movieController = Get.put(MovieController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        actions: [
          IconButton(
            icon: Icon(Icons.search_outlined),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => MovieSearch()));
            },
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
      body: Obx(
        () {
          return movieController.isLoading.value
              ? Center(child: CircularProgressIndicator())
              : Stack(
                  children: [
                    Container(
                      height: size.height,
                      width: size.width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "$bgURL${movieController.selectedMovie.value.bgURL}"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      height: size.height,
                      width: size.width,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: FractionalOffset.bottomCenter,
                            end: FractionalOffset.topCenter,
                            colors: [
                              Colors.black87,
                              Colors.black26,
                            ],
                            stops: [
                              0.4,
                              1.0
                            ]),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                              width: size.width,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(15),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          color: Colors.black87,
                                        ),
                                        child: Text(
                                          "TRENDING",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(15),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          color: Colors.black87,
                                        ),
                                        child: Text(
                                          "${movieController.selectedMovie.value.releaseYear}",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(15),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          color: Colors.amber,
                                        ),
                                        child: Text(
                                          "${movieController.selectedMovie.value.rating}",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 20),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: movieController
                                        .selectedMovie.value.category
                                        .map((e) => Text(
                                              e.category,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ))
                                        .toList(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: size.width / 2,
                            height: 2,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(100.0)),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              width: size.width,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: GFButton(
                                      padding: EdgeInsets.all(10),
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.bold),
                                      shape: GFButtonShape.standard,
                                      onPressed: () async {
                                        movieController.getMovieDetail(
                                            movieController
                                                .selectedMovie.value.id);

                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (_) =>
                                                    MovieDescription()));
                                      },
                                      text: "Watch Trailer",
                                      color: Colors.red,
                                    ),
                                  ),
                                  Expanded(
                                    child: CarouselSlider.builder(
                                      options: CarouselOptions(
                                          autoPlay: false,
                                          viewportFraction: 0.5,
                                          height: size.height,
                                          enlargeCenterPage: true,
                                          onPageChanged: (i, _) {
                                            movieController.selectedMovies(i);
                                          }),
                                      itemCount:
                                          movieController.trendingMovies.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Container(
                                          margin: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            color: Colors.amber,
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                  "$posterURL${movieController.trendingMovies[index].posterURL}"),
                                              fit: BoxFit.cover,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
        },
      ),
    );
  }
}
