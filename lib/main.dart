import 'package:flutter/material.dart';
import 'package:newsapp/veiws/change_contry.dart';
import 'package:newsapp/veiws/homeview.dart';
import 'package:newsapp/widget/newslistview.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeView.id: (context) => const HomeView(),
        FlagPage.id: (context) => const FlagPage(),
      },
      initialRoute: HomeView.id,
    );
  }
}
