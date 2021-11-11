class Movie {
  String? year, time, titulo, img, imgPortada, desc, rating;
  List<String>? targs, directors, writers, actors;
  String? categMenu, video;

  Movie(
      {this.year,
      this.video,
      this.time,
      this.titulo,
      this.img,
      this.desc,
      this.imgPortada,
      this.rating,
      this.targs,
      this.directors,
      this.writers,
      this.actors,
      this.categMenu});
}

List columnCategorias = [
  'Lanzamientos del último año',
  'Tendencias',
  'Crimenes Reales',
  'Romances'
];
List<Movie> containerMovie = [
  Movie(
    categMenu: 'Tendencias',
    year: '2021',
    time: '1h 38min',
    titulo: 'El olvido que seremos',
    imgPortada:
        'https://pics.filmaffinity.com/El_olvido_que_seremos-833396668-large.jpg',
    img:
        'https://pics.filmaffinity.com/El_olvido_que_seremos-833396668-large.jpg',
    targs: [
      'Romances',
      'Comedias Románticas',
    ],
  ),
  Movie(
    categMenu: 'Romances',
    year: '2021',
    time: '1h 38min',
    titulo: 'Que duro es el amor',
    imgPortada:
        'https://pics.filmaffinity.com/A_Qu_duro_es_el_amor-807570210-large.jpg',
    img:
        'https://i2.wp.com/noescinetodoloquereluce.com/wp-content/uploads/2021/11/duro.jpg?fit=429%2C600&ssl=1',
    targs: [
      'Romances',
      'Comedias Románticas',
    ],
  ),
  Movie(
    categMenu: 'Lanzamientos del último año',
    year: '2021',
    time: '1h 38min',
    titulo: 'Lucifer',
    imgPortada:
        'https://static.wikia.nocookie.net/netflix9203/images/f/f1/Lucifer.png/revision/latest/top-crop/width/360/height/450?cb=20200825035852&path-prefix=es',
    img:
        'https://static.wikia.nocookie.net/netflix9203/images/f/f1/Lucifer.png/revision/latest/top-crop/width/360/height/450?cb=20200825035852&path-prefix=es',
    desc:
        'Los Eternos son una raza de seres inmortales con poderes sobrehumanos que han vivido en secreto en la Tierra durante miles de años. Aunque nunca han intervenido, ahora una amenaza se cierne sobre la humanidad.',
    rating: 'TV-14',
    targs: [
      'Aventura',
      'Acción',
      'Drama',
      'Fantasía',
    ],
  ),
  Movie(
    categMenu: 'Lanzamientos del último año',
    year: '2021',
    time: '1h 38min',
    titulo: 'El Gran Asalto',
    imgPortada:
        'https://static.wikia.nocookie.net/doblaje/images/e/ec/El_gran_asalto.jpg/revision/latest?cb=20190731184127&path-prefix=es',
    img:
        'https://elcomercio.pe/resizer/FpACprIX5kBCEM_BcPScwgvP3xo=/1200x800/smart/filters:format(jpeg):quality(75)/arc-anglerfish-arc2-prod-elcomercio.s3.amazonaws.com/public/FBBY2KCIANH3ZELMSEPJSEJ7DE.jpg',
    desc:
        'Los Eternos son una raza de seres inmortales con poderes sobrehumanos que han vivido en secreto en la Tierra durante miles de años. Aunque nunca han intervenido, ahora una amenaza se cierne sobre la humanidad.',
    rating: 'TV-14',
    targs: [
      'Aventura',
      'Acción',
    ],
  ),
  Movie(
    categMenu: 'Lanzamientos del último año',
    year: '2021',
    time: '1h 38min',
    titulo: 'Arcane',
    imgPortada:
        'https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/1200/public/media/image/2021/11/arcane-2520777.jpg?itok=BwLqAODb',
    img:
        'https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/1200/public/media/image/2021/11/arcane-2520777.jpg?itok=BwLqAODb',
    desc:
        'Los Eternos son una raza de seres inmortales con poderes sobrehumanos que han vivido en secreto en la Tierra durante miles de años. Aunque nunca han intervenido, ahora una amenaza se cierne sobre la humanidad.',
    rating: 'TV-14',
    targs: [
      'Aventura',
      'Acción',
    ],
  ),
  Movie(
    categMenu: 'Lanzamientos del último año',
    year: '2021',
    time: '1h 38min',
    titulo: 'La casa de papel',
    imgPortada:
        'https://phantom-marca.unidadeditorial.es/ca8ebbfaa8eb053a92f64124cc38a1af/resize/414/f/jpg/assets/multimedia/imagenes/2021/09/02/16305820546830.jpg',
    img:
        'https://phantom-marca.unidadeditorial.es/ca8ebbfaa8eb053a92f64124cc38a1af/resize/414/f/jpg/assets/multimedia/imagenes/2021/09/02/16305820546830.jpg',
    desc:
        'Los Eternos son una raza de seres inmortales con poderes sobrehumanos que han vivido en secreto en la Tierra durante miles de años. Aunque nunca han intervenido, ahora una amenaza se cierne sobre la humanidad.',
    rating: 'TV-14',
    targs: [
      'Thrillers',
      'Sobre crímenes',
    ],
  ),
  Movie(
    categMenu: 'Tendencias',
    year: '2014',
    time: '1h 38min',
    titulo: 'Donde esta Martha?',
    imgPortada:
        'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/donde-esta-marta02-1636381386.jpg?resize=480:*',
    img:
        'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/donde-esta-marta02-1636381386.jpg?resize=480:*',
    desc:
        'La película, que está basada en la novela gráfica de Steve Moore, narra la historia de Hércules, hijo de Zeus, que no es ni dios ni mortal y esta situación le ha llevado a estar sufriendo siempre. Después de doce dificultosas labores y la pérdida de los miembros de la familia, toma la determinación de no obedecer más a los dioses y encontrar refugio en brutales acciones.',
    rating: 'TV-14',
    targs: [
      'Acción',
      'Épico',
    ],
  ),
  Movie(
    categMenu: 'Tendencias',
    year: '2014',
    time: '1h 38min',
    titulo: 'Hércules',
    imgPortada:
        'https://es.web.img2.acsta.net/pictures/14/06/12/15/44/475686.jpg',
    img: 'https://es.web.img2.acsta.net/pictures/14/06/12/15/44/475686.jpg',
    desc:
        'La película, que está basada en la novela gráfica de Steve Moore, narra la historia de Hércules, hijo de Zeus, que no es ni dios ni mortal y esta situación le ha llevado a estar sufriendo siempre. Después de doce dificultosas labores y la pérdida de los miembros de la familia, toma la determinación de no obedecer más a los dioses y encontrar refugio en brutales acciones.',
    rating: 'TV-14',
    targs: [
      'Acción',
      'Fantasía',
      'Épico',
      'Fantasía',
      'Épico',
    ],
  ),
  Movie(
    categMenu: 'Crimenes Reales',
    year: '2012',
    time: '1h 38min',
    titulo: 'Pablo Excobar',
    imgPortada:
        'https://spoilertime.com/wp-content/uploads/2016/09/narcos-1-426x597.jpg',
    img:
        'https://spoilertime.com/wp-content/uploads/2016/09/narcos-1-426x597.jpg',
    desc:
        'Esta fascinante serie narra la vida del infame Pablo Escobar, desde sus días como ratero hasta convertirse en el jefe de un imperio del narcotráfico.',
    rating: 'TV-14',
    targs: [
      'Acción',
      'Épico',
    ],
  ),
  Movie(
    categMenu: 'Crimenes Reales',
    year: '2012',
    time: '1h 38min',
    titulo: 'Narcos',
    imgPortada:
        'https://www.formulatv.com/images/series/posters/1800/1878/dest_1.jpg',
    img: 'https://www.formulatv.com/images/series/posters/1800/1878/dest_1.jpg',
    desc:
        'Esta fascinante serie narra la vida del infame Pablo Escobar, desde sus días como ratero hasta convertirse en el jefe de un imperio del narcotráfico.',
    rating: 'TV-14',
    targs: [
      'Acción',
      'Épico',
    ],
  )
];

List<Movie> containerMovieProximamente = [
  Movie(
    year: '10 de noviembre de 2021',
    video: 'DlEOr3hsGhs',
    time: '1h 38min',
    titulo: 'Tick, Tick... Boom!',
    desc:
        'Tick, Tick ... Boom! es una próxima película de drama musical estadounidense dirigida por Lin-Manuel Miranda en su debut como director, a partir de un guión de Steven Levenson, basado en el musical semiautobiográfico del mismo nombre de Jonathan Larson.',
    imgPortada:
        'https://pics.filmaffinity.com/tick_tick_Boom-277956454-large.jpg',
    img: 'https://pics.filmaffinity.com/tick_tick_Boom-277956454-large.jpg',
    targs: [
      'Drama',
      'Musical',
    ],
  ),
  Movie(
    year: '21 de diciembre de 2021',
    time: '1h 38min',
    titulo: 'Sing 2',
    video: '_7YRovTBEEU',
    desc:
        'Buster Moon y su elenco de artistas animales se preparan para lanzar un deslumbrante espectáculo en la capital del entretenimiento. Sin embargo, tiene que encontrar y persuadir a la estrella de rock más solitaria del mundo para que se una a ellos.',
    imgPortada:
        'https://static.wikia.nocookie.net/sing/images/9/9b/Sing_2_Poster.jpg/revision/latest?cb=20210630221331&path-prefix=es',
    img:
        'https://static.wikia.nocookie.net/sing/images/9/9b/Sing_2_Poster.jpg/revision/latest?cb=20210630221331&path-prefix=es',
    targs: [
      'Musical',
    ],
  ),
  Movie(
    year: '25 de noviembre de 2021',
    time: '1h 38min',
    titulo: 'Resident Evil',
    video: 'J9WEWSoYEY0',
    imgPortada:
        'https://es.web.img3.acsta.net/pictures/21/10/19/16/02/0444216.jpg',
    img: 'https://es.web.img3.acsta.net/pictures/21/10/19/16/02/0444216.jpg',
    desc:
        'Los supervivientes intentan descubrir la verdad detrás de la malvada Umbrella Corporation. Mientras, luchan contra zombis sedientos de sangre en los páramos de Raccoon City.',
    rating: 'TV-14',
    targs: [
      'Aventura',
      'Acción',
      'Drama',
      'Suspenso',
    ],
  ),
];
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
  directors: ['Brett Ratner'],
  writers: ['Evan Spiliotopoulos', 'Ryan J. Condal'],
  actors: ['Dwayne Johnson', 'Rufus Sewell', 'Aksel Hennie'],
);
