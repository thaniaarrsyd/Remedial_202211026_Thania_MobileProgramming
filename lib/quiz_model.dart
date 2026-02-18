class QuizItem {
  final String title;
  final String content;
  final String icon;

  QuizItem({required this.title, required this.content, required this.icon});
}

class ThaniaData {
  static const String name = "Thania";
  static const String nim = "202211026";
  static const String kelas = "TI22K1";

  static List<QuizItem> items = [
    QuizItem(
      title: "DART vs FLUTTER",
      icon: "⚡",
      content:
          "Dart adalah bahasa yang dioptimalkan untuk klien, sedangkan Flutter adalah framework UI untuk membangun aplikasi dari satu basis kode.",
    ),
    QuizItem(
      title: "Sejarah Flutter",
      icon: "📜",
      content:
          "Dimulai dari proyek 'Sky' (2015), dikembangkan Google untuk performa tinggi, mencapai versi stabil 1.0 pada akhir 2018.",
    ),
    QuizItem(
      title: "Layout Flutter",
      icon: "🏗️",
      content:
          "Menggunakan sistem Widget. Populer: Row, Column, Stack, dan Container untuk mengatur posisi dan dekorasi elemen.",
    ),
    QuizItem(
      title: "Child pada List",
      icon: "📑",
      content:
          "Biasanya berisi ListTile, Card, atau Container. Dalam ListView, 'children' menampung array dari widget tersebut.",
    ),
    QuizItem(
      title: "Desain Mobile",
      icon: "🎨",
      content:
          "Fokus pada 'User Experience'. Perhatikan ukuran tombol (hit area), kontras warna, dan kemudahan navigasi satu jempol.",
    ),
    QuizItem(
      title: "Menu Mobile",
      icon: "📱",
      content:
          "Navigation Drawer, Bottom Navigation, Tab Bar, dan Floating Action Button untuk aksi utama.",
    ),
    QuizItem(
      title: "Jenis Layout",
      icon: "📐",
      content:
          "Flex Layout (Row/Column), Box Layout (Container), dan Scrollable Layout (ListView/CustomScrollView).",
    ),
  ];
}
