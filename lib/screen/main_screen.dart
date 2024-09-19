import 'package:flutter/material.dart';
import 'package:movies/model/movies.dart';
import 'package:movies/screen/detail_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return const MoviesListMobile();
          } else {
            return const MovieListWeb();
          }
        },
      )
    );
  }
  AppBar appBar() {
    return AppBar(
      title: const Text('The Movies',style: TextStyle(fontFamily: 'Montserrat'),),
      centerTitle: true,
    );
  }
}

class MoviesListMobile extends StatelessWidget {
  const MoviesListMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 2/3,
        children: moviesList.map((movies) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(movies: movies,);
              }));
            },
            child: Card(
              elevation: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        movies.poster,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            color: Colors.grey,
                            child: const Center(child: Icon(Icons.error),),
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 8.0,),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0,bottom: 6.0),
                    child: Text(
                      movies.title,
                      style: const TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 12.0
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class MovieListWeb extends StatelessWidget {
  const MovieListWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.count(
        crossAxisCount: 4,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 2/3,
        children: moviesList.map((movies) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(movies: movies,);
              }));
            },
            child: Card(
              elevation: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        movies.poster,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            color: Colors.grey,
                            child: const Center(child: Icon(Icons.error),),
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 8.0,),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      movies.title,
                      style: const TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 18.0
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}


