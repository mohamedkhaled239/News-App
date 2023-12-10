import 'package:flutter/material.dart';
import 'package:newsapp/widget/categorieslistveiw.dart';
import 'package:newsapp/widget/newslistviewbuilder.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Row(
          children: [
            Text(
              '  My',
              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
            ),
            Text(
              'News',
              style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold),
            ),
            Icon(Icons.newspaper_sharp),
          ],
          
        ),
         actions: [
            IconButton(
              icon: const Icon(Icons.language_outlined,size: 30,),
              onPressed: () {
                // Add your action here
              },
            ),
            const Text("    "),
          ],
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),

        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CategoriesListView()),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 32,
              ),
            ),
            NewsListViewBuilder(
              category: 'general',
            ),
          ],
        ),
       
      ),
    );
  }
}
