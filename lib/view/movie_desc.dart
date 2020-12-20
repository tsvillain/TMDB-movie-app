import 'package:flutter/material.dart';
import 'package:tmdb/constants.dart';
import 'package:tmdb/model/detailedMovieModel.dart';

class MovieDescription extends StatelessWidget {
  final DetailedMovie movie;
  MovieDescription({@required this.movie});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          child: Column(
            children: [
              Container(
                height: size.height * 0.35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                  ),
                  image: DecorationImage(
                    image: NetworkImage('$posterURL${movie.bgURL}'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: size.width,
                padding: EdgeInsets.all(25),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.all(0),
                      title: Text("${movie.title}"),
                      subtitle: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            '${movie.releaseYear}',
                            '15+',
                            '${movie.runtime}'
                          ]
                              .map((e) => Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                    child: Text('$e'),
                                  ))
                              .toList()),
                      trailing: IconButton(
                        icon: Icon(Icons.favorite),
                        onPressed: () {},
                      ),
                    ),
                    Wrap(
                      children: movie.category
                          .map((e) => Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                child: Chip(label: Text('$e')),
                              ))
                          .toList(),
                    ),
                    SizedBox(height: 18),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Overview',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        SizedBox(height: 10),
                        Text('${movie.overview}',
                            style: Theme.of(context).textTheme.bodyText2),
                      ],
                    ),
                    SizedBox(height: 18),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Cast & Crew',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        SizedBox(height: 10),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: movie.cast
                                .map((e) => Container(
                                      width: size.width / 4,
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          CircleAvatar(
                                            backgroundImage: NetworkImage(
                                                '$posterURL${e.profileURL}'),
                                            radius: 40,
                                          ),
                                          SizedBox(height: 10),
                                          Text(
                                            '${e.name}',
                                            maxLines: 2,
                                            textAlign: TextAlign.center,
                                            overflow: TextOverflow.clip,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText2,
                                          ),
                                          SizedBox(height: 8),
                                          Text(
                                            '${e.character}',
                                            maxLines: 2,
                                            textAlign: TextAlign.center,
                                            overflow: TextOverflow.clip,
                                            style: Theme.of(context)
                                                .textTheme
                                                .caption,
                                          ),
                                        ],
                                      ),
                                    ))
                                .toList(),
                          ),
                        ),
                        Divider(),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: movie.crew
                                .map((e) => Container(
                                      width: size.width / 4,
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          CircleAvatar(
                                            backgroundImage: NetworkImage(
                                                '$posterURL${e.profileURL}'),
                                            radius: 40,
                                          ),
                                          SizedBox(height: 10),
                                          Text(
                                            '${e.name}',
                                            maxLines: 2,
                                            textAlign: TextAlign.center,
                                            overflow: TextOverflow.clip,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText2,
                                          ),
                                          SizedBox(height: 8),
                                          Text(
                                            '${e.job}',
                                            maxLines: 2,
                                            textAlign: TextAlign.center,
                                            overflow: TextOverflow.clip,
                                            style: Theme.of(context)
                                                .textTheme
                                                .caption,
                                          ),
                                        ],
                                      ),
                                    ))
                                .toList(),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
