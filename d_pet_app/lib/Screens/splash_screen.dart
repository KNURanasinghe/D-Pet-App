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
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(
              height: 150,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Image(
                  image: NetworkImage(
                      "https://th.bing.com/th/id/OIP.hFv5_TIBLZtmi3twmHkv9AAAAA?pid=ImgDet&rs=1")),
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
