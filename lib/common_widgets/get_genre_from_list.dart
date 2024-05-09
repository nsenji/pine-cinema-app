String getGenre(String allGenres) {
  List<String> genreList = allGenres.split(',');
  return genreList[0];
}
