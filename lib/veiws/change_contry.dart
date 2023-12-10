import 'package:flutter/material.dart';
import 'package:newsapp/services/newsservice.dart';
import 'package:newsapp/veiws/homeview.dart';

class FlagPage extends StatelessWidget {
  const FlagPage({super.key});
  static String id = 'FlagPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'press on the country you want to news it ',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),
            FlagWidget(
              ontap: () {
                
                  
                    changeCountry='eg';
                Navigator.pushNamed(context, HomeView.id); 
               
              },
              imagePath: 'assets/egyflag.jpg',
            ),
            const SizedBox(height: 20),
            FlagWidget(
              ontap: () {
                changeCountry='us';
                Navigator.pushNamed(context, HomeView.id); 

              },
              imagePath: 'assets/usaflag.jpg', 
            ),
            const SizedBox(height: 100),
          
          ],
        ),
      ),
    );
  }
}

class FlagWidget extends StatelessWidget {
  final String imagePath;
  void Function()? ontap;
  FlagWidget({required this.ontap, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: 150,
        height: 100,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
          border: Border.all(
            color: Colors.black,
            width: 2,
          ),
        ),
      ),
    );
  }
}
