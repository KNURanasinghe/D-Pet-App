import 'package:d_pet_app/Screens/Auth/loginScreen.dart';
import 'package:flutter/material.dart';

import '../../Components/textFeildWid.dart';
import '../../Components/textStyle.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black,
                Colors.white,
              ]),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextStyle1(
                color: Colors.white70,
                fw: FontWeight.bold,
                fz: 24,
                text: "Just ones more step to pet",
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TextfeildWid(
                      icon: Icons.email,
                      text: "Email",
                      col: Colors.white,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextfeildWid(
                      icon: Icons.email,
                      text: "Password",
                      icon1: Icons.remove_red_eye,
                      col: Colors.white,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextfeildWid(
                      icon: Icons.email,
                      text: "Conform Password",
                      icon1: Icons.remove_red_eye,
                      col: Colors.white,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    GestureDetector(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextStyle1(
                            fz: 45,
                            fw: FontWeight.bold,
                            text: "Register",
                            color: Colors.white,
                          ),
                          const Icon(
                            Icons.face,
                            color: Colors.white,
                            size: 40,
                          )
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginPage(),
                            ));
                      },
                    ),
                  ],
                ),
              ),
              Container(
                width: size.width,
                height: size.height * 0.46,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  image: DecorationImage(
                    image: AssetImage("lib/assets/11.png"),
                    alignment: Alignment.bottomCenter,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
