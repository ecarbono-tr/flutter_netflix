class Movie {
  String? year, time, titulo, img, desc, rating;
  List<String>? targs, directors, writers, actors;
  Movie(
      {this.year,
      this.time,
      this.titulo,
      this.img,
      this.desc,
      this.rating,
      this.targs,
      this.directors,
      this.writers,
      this.actors});
}

final hercules = Movie(
    year: '2014',
    time: '1h 38min',
    titulo: 'HÉRCULES',
    img: 'https://es.web.img2.acsta.net/pictures/14/06/12/15/44/475686.jpg',
    desc:
        'La película, que está basada en la novela gráfica de Steve Moore, narra la historia de Hércules, hijo de Zeus, que no es ni dios ni mortal y esta situación le ha llevado a estar sufriendo siempre. Después de doce dificultosas labores y la pérdida de los miembros de la familia, toma la determinación de no obedecer más a los dioses y encontrar refugio en brutales acciones.',
    rating: 'TV-14',
    targs: [
      'Acción',
      'Fantasía',
      'Épico',
      'Acción',
      'Fantasía',
      'Épico',
    ],
    directors: [
      'Brett Ratner'
    ],
    writers: [
      'Evan Spiliotopoulos',
      'Ryan J. Condal'
    ],
    actors: [
      'Dwayne Johnson',
      'Rufus Sewell',
      'Aksel Hennie'
    ]);
