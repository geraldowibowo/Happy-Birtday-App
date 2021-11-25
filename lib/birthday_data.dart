import 'package:flutter/material.dart';

//Nama yang ulang tahun
String birthdayName = 'George';
String birthdayShortName = 'George';
String completeName = 'George Juan Susanto';
String instagram = '@georgejuans';

//Ucapan ulang tahun
String headerUcapan = 'HAPPY BIRTHDAY $birthdayShortName';
String profilePicture = 'assets/profilepic.jpeg';
String ucapan =
    '"Hari ini aku diomelin bos, dikomplain klien, macet di jalan, mobil mogok, semuanya tidak membuatku lupa menyatakan met ultah, Sobat"';
String appCredits =
    'App Developer: Geraldo\nPhoto Hunter and Editor: Christian';

String quizPicture = 'assets/quizPhoto/9.jpeg';
String quizResultPicture = 'assets/quizPhoto/hbd.gif';

String wallpaperBG1 = 'assets/wallpapers/black.jpg';
Color whiteningColorBG1 = Colors.white.withAlpha(0);
String wallpaperBG2 = 'assets/wallpapers/teal.png';
Color whiteningColorBG2 = Colors.white.withAlpha(0);
String wallpaperBG3 = 'assets/wallpapers/dark.jpg';
Color whiteningColorBG3 = Colors.white.withAlpha(0);

int jumlahGambarDiGalleries = 17;

List<String> ngetesDoang = [
  'assets/galleries/2.gif',
  'assets/galleries/3.jpeg',
  'assets/galleries/4.jpeg',
  'assets/galleries/5.jpeg',
  'assets/galleries/6.jpeg',
  'assets/galleries/7.jpeg',
  'assets/galleries/8.jpeg',
  'assets/galleries/9.jpeg',
];

final questions = const [
  {
    'questionText': 'Kapan George Lahir?',
    'answers': [
      {'text': '23 Agustuz 1999', 'score': 2},
      {'text': '26 Agustuz 1999', 'score': 2},
      {'text': '29 Agustuz 1999', 'score': 10},
      {'text': 'Gw bukan temen george', 'score': 1}
    ],
  },
  {
    'questionText': 'Kapan George Washinton Lahir?',
    'answers': [
      {'text': '22 Febuari 1732', 'score': 10},
      {'text': '22 Febuari 1832', 'score': 5},
      {'text': '29 Agustuz 1999', 'score': 2},
      {'text': 'Gw bukan temen george washinton', 'score': 1}
    ],
  },
  {
    'questionText': 'Kapan George lahir',
    'answers': [
      {'text': 'Tangerang', 'score': 2},
      {'text': 'Jakarta', 'score': 2},
      {'text': 'ya sekitaran itulah waktunya', 'score': 10},
    ],
  },
  {
    'questionText': 'Kapan Christian Citra terlahir?',
    'answers': [
      {'text': 'ya sekitaran itu lah mana gua kenal anjirzzzzzz', 'score': 10},
      {'text': '17 Agustus 1945', 'score': 2},
      {'text': '20 July 2017', 'score': 2},
      {'text': '30 Januari 1928', 'score': 2}
    ],
  },
  {
    'questionText': 'Apa ciri khas orang ganteng',
    'answers': [
      {'text': 'pengen dipijet', 'score': 2},
      {'text': 'pengen dielus', 'score': 2},
      {'text': 'pengen dipeluk', 'score': 2},
      {'text': 'pengen dibelay', 'score': 10}
    ],
  },
  {
    'questionText': 'Dimana washinton Lahir',
    'answers': [
      {'text': 'texas', 'score': 6},
      {'text': 'washinton', 'score': 10},
      {'text': 'california', 'score': 2},
    ],
  },
  {
    'questionText': 'Kapan kamu lahir?',
    'answers': [
      {'text': 'jam makan siang', 'score': 3},
      {'text': 'papa harusnya tau', 'score': 2},
      {'text': 'gatau tiba2 udah brojol aja dah', 'score': 8},
      {'text': 'mama harusnya tau', 'score': 6}
    ],
  },
  {
    'questionText': 'Apa pizza kesukaan messi',
    'answers': [
      {'text': 'PHD', 'score': 10},
      {
        'text': 'siape dah aloy dah lama ga ngobrol kok munculzzzz',
        'score': 10
      },
      {'text': 'aloy makan siput', 'score': 10},
      {'text': 'Pizza Hot', 'score': 10}
    ],
  },
  {
    'questionText': 'Dimana domba Lahir',
    'answers': [
      {'text': 'kandang', 'score': 10},
      {'text': 'surga', 'score': 5},
      {'text': 'Tanah Abang', 'score': 5},
    ],
  },
  {
    'questionText': 'apakah george bakal teraktir',
    'answers': [
      {'text': 'gak lah', 'score': 3},
      {'text': 'HARUS', 'score': 10},
    ],
  },
  {
    'questionText': 'Club messi terlama',
    'answers': [
      {'text': 'PSG', 'score': 2},
      {'text': 'arsenal', 'score': 5},
      {'text': 'barca', 'score': 10},
      {'text': 'mancity', 'score': 1}
    ],
  },
  {
    'questionText': 'makanan favorit christiano ronaldo',
    'answers': [
      {'text': 'pizza', 'score': 2},
      {'text': 'coca cola', 'score': 2},
      {'text': 'makanan portugal', 'score': 10},
    ],
  },
  {
    'questionText': 'film favorit christian?',
    'answers': [
      {'text': 'lgbt', 'score': 10},
      {'text': 'homosexual', 'score': 10},
      {'text': 'porno', 'score': 10},
      {'text': 'bokep', 'score': 10}
    ],
  },
  {
    'questionText': 'Apa aktivitas kesukaan george saat ultah',
    'answers': [
      {'text': 'traktiran', 'score': 2},
      {'text': 'nikahan', 'score': 5},
      {'text': 'tidur', 'score': 2},
      {'text': 'ancurin kue', 'score': 10}
    ],
  },
  {
    'questionText': 'Dimana chris Lahir',
    'answers': [
      {'text': 'neraka', 'score': 6},
      {'text': 'langit lain', 'score': 10},
      {'text': 'bumi lain', 'score': 2},
    ],
  },
  {
    'questionText': 'jarak jakarta surabaya',
    'answers': [
      {'text': '90m', 'score': 1},
      {'text': '900m', 'score': 2},
      {'text': '9000m', 'score': 2},
      {'text': '90000m', 'score': 3},
      {'text': '900000m', 'score': 10}
    ],
  },
  {
    'questionText': 'Apa first impression indra terhapda geroge',
    'answers': [
      {'text': 'hhaduh', 'score': 10},
      {'text': '....', 'score': 7},
      {'text': 'ganteng bet jir', 'score': 10},
      {'text': 'ASIKK SEKALI', 'score': 10}
    ],
  },
  {
    'questionText': 'tbh george menurut lala',
    'answers': [
      {'text': 'autis, lucu, aneh', 'score': 10},
      {'text': 'aneh, lucu, autis', 'score': 10},
      {'text': 'aneh, autis, autis', 'score': 5},
    ],
  },
  {
    'questionText': 'pendapat teman menurut kehidupan geroge?',
    'answers': [
      {'text': 'berdampak ke panti asuhan', 'score': 5},
      {'text': 'berdampak ke panti presiden', 'score': 3},
      {'text': 'berdampak ke panti masyarakat', 'score': 10},
      {'text': 'berdampak ke panti pribadi', 'score': 2}
    ],
  },
  {
    'questionText': 'Apakah geroge akan sukses menurut teman2?',
    'answers': [
      {'text': 'apapun keyakinan masing2', 'score': 10},
      {'text': 'pasti lah gak mungkin nggak', 'score': 2},
      {'text': 'ya fifty-fifty lah', 'score': 2},
      {'text': 'hayo gimana', 'score': 1}
    ],
  },
  {
    'questionText': 'Kapan geroge akan nikah menurut teman2?',
    'answers': [
      {'text': 'jones slamanya', 'score': 10},
      {'text': 'nikah tapi ama cowo', 'score': 2},
      {'text': 'cowo nikah sama george', 'score': 2},
    ],
  },
  {
    'questionText': 'ultah terakhir geroge?',
    'answers': [
      {
        'text': 'tidak ada ultah terakhir untuk seorang legenda geroge',
        'score': 2
      },
      {'text': 'sesuai takdir christian', 'score': 2},
      {'text': 'sampai kuntilanak menjemput', 'score': 2},
      {'text': 'jawaban di atas typo', 'score': 10}
    ],
  },
];
