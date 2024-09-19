class Movies {
  String title;
  String popularity;
  String poster;
  String overview;
  String release;
  List<String> genre;

  Movies({
    required this.title,
    required this.popularity,
    required this.poster,
    required this.overview,
    required this.release,
    required this.genre
  });
}

var moviesList = [
  Movies(
      title: 'Deadpool & Wolverine',
      popularity: '3098.758',
      poster: 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/jbwYaoYWZwxtPP76AZnfYKQjCEB.jpg',
      overview: 'A listless Wade Wilson toils away in civilian life with his days as the morally flexible mercenary, Deadpool, behind him. But when his homeworld faces an existential threat, Wade must reluctantly suit-up again with an even more reluctant Wolverine.',
      release: '2024-07-24',
      genre: [
        'Action',
        'Comedy'
      ]
  ),
  Movies(
      title: 'Transformers One (2024)',
      popularity: '3098.758',
      poster: 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/qbkAqmmEIZfrCO8ZQAuIuVMlWoV.jpg',
      overview: 'The untold origin story of Optimus Prime and Megatron, better known as sworn enemies, but once were friends bonded like brothers who changed the fate of Cybertron forever.',
      release: '09-11-2024',
      genre: [
        'Animation', 'Science Fiction', 'Adventure', 'Action', 'Family'
      ]
  ),
  Movies(
      title: 'The Lord of the Rings: The Rings of Power (2022)',
      popularity: '384.498',
      poster: 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/mYLOqiStMxDK3fYZFirgrMt8z5d.jpg',
      overview: 'Beginning in a time of relative peace, we follow an ensemble cast of characters as they confront the re-emergence of evil to Middle-earth. From the darkest depths of the Misty Mountains, to the majestic forests of Lindon, to the breathtaking island kingdom of Númenor, to the furthest reaches of the map, these kingdoms and characters will carve out legacies that live on long after they are gone.',
      release: '09-01-2022',
      genre: [
        'Action','Adventure', 'Fantasy', 'Drama'
      ]
  ),
  Movies(
      title: 'Borderlands',
      popularity: '2505.726',
      poster: 'https://image.tmdb.org/t/p/w500/865DntZzOdX6rLMd405R0nFkLmL.jpg',
      overview: 'Returning to her home planet, an infamous bounty hunter forms an unexpected alliance with a team of unlikely heroes. Together, they battle monsters and dangerous bandits to protect a young girl who holds the key to unimaginable power.',
      release: '2024-08-07',
      genre: [
        'Action', 'Adventure', 'Comedy'
      ]
  ),
  Movies(
      title: "Rebel Ridge",
      popularity: '1823.796',
      poster: 'https://image.tmdb.org/t/p/w500/xEt2GSz9z5rSVpIHMiGdtf0czyf.jpg',
      overview: "A former Marine confronts corruption in a small town when local law enforcement unjustly seizes the bag of cash he needs to post his cousin's bail.",
      release: "2024-08-27",
      genre: ["Crime", "Action", "Thriller"]
  ),
  Movies(
      title: "Inside Out 2",
      popularity: '1871.468',
      poster: "https://image.tmdb.org/t/p/w500/vpnVM9B6NMmQpWeZvzLvDESb2QY.jpg",
      overview: "Teenager Riley's mind headquarters is undergoing a sudden demolition to make room for something entirely unexpected: new Emotions! Joy, Sadness, Anger, Fear and Disgust, who’ve long been running a successful operation by all accounts, aren’t sure how to feel when Anxiety shows up. And it looks like she’s not alone.",
      release: "2024-06-11",
      genre: ["Animation", "Family", "Adventure", "Comedy", "Fantasy"]
  ),
  Movies(
      title: "Beetlejuice Beetlejuice",
      popularity: '1593.764',
      poster: "https://image.tmdb.org/t/p/w500/kKgQzkUCnQmeTPkyIwHly2t6ZFI.jpg",
      overview: "After a family tragedy, three generations of the Deetz family return home to Winter River. Still haunted by Beetlejuice, Lydia's life is turned upside down when her teenage daughter, Astrid, accidentally opens the portal to the Afterlife.",
      release: "2024-09-04",
      genre: ["Comedy", "Fantasy", "Horror"]
  ),
  Movies(
      title: "Despicable Me 4",
      popularity: '1679.193',
      poster: "https://image.tmdb.org/t/p/w500/wWba3TaojhK7NdycRhoQpsG0FaH.jpg",
      overview: "Gru and Lucy and their girls—Margo, Edith and Agnes—welcome a new member to the Gru family, Gru Jr., who is intent on tormenting his dad. Gru also faces a new nemesis in Maxime Le Mal and his femme fatale girlfriend Valentina, forcing the family to go on the run.",
      release: "2024-06-20",
      genre: ["Animation", "Family", "Comedy", "Action"]
  ),
  Movies(
      title: "Bad Boys: Ride or Die",
      popularity: '1359.48',
      poster: "https://image.tmdb.org/t/p/w500/oGythE98MYleE6mZlGs5oBGkux1.jpg",
      overview: "After their late former Captain is framed, Lowrey and Burnett try to clear his name, only to end up on the run themselves.",
      release: "2024-06-05",
      genre: ["Action", "Crime", "Thriller", "Comedy"]
  ),
  Movies(
      title: "The Killer",
      popularity: '955.768',
      poster: "https://image.tmdb.org/t/p/w500/6PCnxKZZIVRanWb710pNpYVkCSw.jpg",
      overview: "\"Zee\" is a feared contract killer known as \"the Queen of the Dead,\" but when she refuses to murder a young blind woman, she finds herself hunted both by criminal colleagues and a determined police detective.",
      release: "2024-08-22",
      genre: ["Action", "Thriller", "Crime"]
  ),
  Movies(
      title: "Beetlejuice",
      popularity: '958.259',
      poster: "https://image.tmdb.org/t/p/w500/nnl6OWkyPpuMm595hmAxNW3rZFn.jpg",
      overview: "A newly dead New England couple seeks help from a deranged demon exorcist to scare an affluent New York family out of their home.",
      release: "1988-03-30",
      genre: ["Comedy", "Fantasy"]
  ),
  Movies(
      title: "Twilight of the Warriors: Walled In",
      popularity: '916.146',
      poster: "https://image.tmdb.org/t/p/w500/PywbVPeIhBFc33QXktnhMaysmL.jpg",
      overview: "Set in the 1980s, troubled youth Chan Lok-kwun accidentally enters the Walled City, discovers the order amidst its chaos, and learns important life lessons along the way. In the Walled City, he becomes close friends with Shin, Twelfth Master and AV. Under the leadership of Cyclone, they resist against the invasion of villain Mr. Big in a series of fierce battles.",
      release: "2024-04-23",
      genre: ["Action", "Adventure", "Crime", "Thriller"]
  ),
  Movies(
      title: "It Ends with Us",
      popularity: '798.616',
      poster: "https://image.tmdb.org/t/p/w500/4TzwDWpLmb9bWJjlN3iBUdvgarw.jpg",
      overview: "When a woman's first love suddenly reenters her life, her relationship with a charming, but abusive neurosurgeon is upended, and she realizes she must learn to rely on her own strength to make an impossible choice for her future.",
      release: "2024-08-07",
      genre: ["Romance", "Drama"]
  )
];


