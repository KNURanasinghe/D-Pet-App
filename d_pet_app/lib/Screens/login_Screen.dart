import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: size.height,
            width: size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://th.bing.com/th/id/R.a0dbceaf90fb50b6e0cba07c3643ca56?rik=P4SRoJ1Nau1Kfw&pid=ImgRaw&r=0"),
                    alignment: Alignment.bottomCenter,
                    fit: BoxFit.fitHeight,
                    opacity: ColorFilter.mode(Colors.black12.withOpacity(0.6), ))),
          )
        ],
      ),
    );
  }
}
