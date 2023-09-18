import 'package:d_pet_app/Screens/Auth/homePage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: size.height * 0.941,
                width: size.width,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black,
                        Colors.white,
                      ]),
                  image: DecorationImage(
                    image: AssetImage("lib/assets/R1.png"),
                    alignment: Alignment.bottomCenter,
                    fit: BoxFit.contain,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          SizedBox(
                            height: 80,
                          ),
                          Text(
                            "WELCOME BACK",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white70,
                              fontSize: 24,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              label: Text(
                                "Email",
                                style: TextStyle(color: Colors.white),
                              ),
                              prefixIcon: Icon(
                                Icons.mail,
                                color: Colors.white,
                              )),
                        ),
                      ),
                      const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              label: Text(
                                "Password",
                                style: TextStyle(color: Colors.white),
                              ),
                              prefixIcon: Icon(
                                Icons.key,
                                color: Colors.white,
                              ),
                              suffixIcon: Icon(Icons.remove_red_eye,
                                  color: Colors.white),
                            ),
                          )),
                      const SizedBox(
                        height: 60,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          child: Container(
                            height: 75,
                            width: size.width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40)),
                            child: const Row(children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "LogIn",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 35,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  SizedBox(
                                    width: 230,
                                  ),
                                  Icon(
                                    Icons.face_sharp,
                                    color: Colors.white,
                                    size: 55,
                                  )
                                ],
                              )
                            ]),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HomePage(),
                                ));
                          },
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
