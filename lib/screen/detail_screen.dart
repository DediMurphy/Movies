import 'package:flutter/material.dart';
import 'package:movies/model/movies.dart';

// var fontMontserrat = const TextStyle(fontFamily: 'Montserrat');

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.movies});

  final Movies movies;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth >= 800) {
                return DetailScreenWeb(movie: movies,);
            } else {
              return DetailScreenMobile(movies: movies);
            }
          },
        )
      ),
      floatingActionButton: const FavoriteButton(),
    );
  }
}

class DetailScreenMobile extends StatelessWidget {
  const DetailScreenMobile({super.key, required this.movies});

  final Movies movies;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // Poster
              Stack(children: <Widget>[
                Center(
                  child: SizedBox(
                      height: 400, child: Image.network(movies.poster)),
                ),
                SafeArea(
                  child: CircleAvatar(
                    backgroundColor: Colors.yellow,
                    child: IconButton(
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  ),
                )
              ]),
              // Title
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                child: Text(
                  movies.title,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat'),
                ),
              ),
              // end title
              const SizedBox(
                height: 10,
              ),
              // Genre
              SingleChildScrollView(
                // Wrap the outer Row
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: movies.genre.map((genre) {
                    return Container(
                      margin: const EdgeInsets.only(right: 10.0),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        genre,
                        style: const TextStyle(
                          color: Colors.black,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
              // end genre
              const SizedBox(
                height: 10,
              ),
              // Popularity
              Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Text(
                    movies.popularity,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                        fontSize: 16.0, fontFamily: 'Montserrat'),
                  )),
              // popularity
              // Release Date
              Container(
                  margin: const EdgeInsets.only(top: 5),
                  child: Text(
                    movies.release,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                        fontSize: 16.0, fontFamily: 'Montserrat'),
                  )),
              // end release date
              // Overview
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                child: Text(
                  movies.overview,
                  textAlign: TextAlign.justify,
                  style:
                  const TextStyle(fontSize: 16.0, fontFamily: 'Montserrat'),
                ),
              ),
              // end overview
            ],
          ),
        ),
      ),
    );
  }
}


class DetailScreenWeb extends StatefulWidget {
  const DetailScreenWeb({super.key, required this.movie});

  final Movies movie;

  @override
  State<DetailScreenWeb> createState() => _DetailScreenWebState();
}

class _DetailScreenWebState extends State<DetailScreenWeb> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'The Movies',
              style: TextStyle(fontFamily: 'Montserrat', fontSize: 32),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 500,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(widget.movie.poster),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Card(
                    margin: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.movie.title,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 30,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                          const SizedBox(height: 16),
                          Scrollbar(
                            controller: _scrollController,
                            child: SizedBox(
                              height: 50,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: widget.movie.genre.map((s) {
                                  return Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Container(
                                        margin: const EdgeInsets.only(right: 10.0),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 15, vertical: 10),
                                        decoration: BoxDecoration(
                                          color: Colors.yellow,
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                        child: Text(s,style: const TextStyle(color: Colors.black),)
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Popularity: ${widget.movie.popularity}',
                            style: const TextStyle(
                              fontSize: 18,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Release Date: ${widget.movie.release}',
                            style: const TextStyle(
                              fontSize: 18,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            widget.movie.overview,
                            textAlign: TextAlign.justify,
                            style: const TextStyle(
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}


class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key});

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.yellow,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
      child: Icon(isFavorite ? Icons.favorite : Icons.favorite_border,
          color: Colors.black),
    );
  }
}
