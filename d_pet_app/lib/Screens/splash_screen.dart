import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.black, Colors.white])),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "D Pet",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: AutofillHints.addressCityAndState,
                      color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Image(
              image: NetworkImage(
                  "https://th.bing.com/th/id/R.0d35df89233dc69b03e3978ef8464cb7?rik=locuh62ApckHdA&riu=http%3a%2f%2fwww.pngmart.com%2ffiles%2f8%2fGolden-Retriever-PNG-Transparent-Background.png&ehk=IJcM2nUMbujLgN7VnQ472i5%2bho9Ngga5cQxu55WGFAU%3d&risl=&pid=ImgRaw&r=0"),
              fit: BoxFit.contain,
            ),
            SizedBox(
              height: 10,
            ),
            CircularProgressIndicator()
          ],
        ),
      ),
    );
  }
}
