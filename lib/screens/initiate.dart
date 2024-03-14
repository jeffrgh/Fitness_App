import 'package:flutter/material.dart';

import 'gs_gender.dart';

class Initiation extends StatefulWidget {
  const Initiation({super.key});
  static const routeName = '/gs';

  @override
  State<Initiation> createState() => _InitiationState();
}

class _InitiationState extends State<Initiation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/fullbody.jpeg',
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).size.height * 0.15,
            left: MediaQuery.of(context).size.width * 0.1,
          ),
          child: Row(
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  '''Get
Started''',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: const Color.fromARGB(255, 225, 206, 36),
                    fontSize: MediaQuery.of(context).size.height * 0.05,
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: IconButton.filled(
                  style: ButtonStyle(
                    iconSize: MaterialStateProperty.all(35),
                    backgroundColor: MaterialStateProperty.all(
                      const Color.fromARGB(255, 225, 206, 36),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/gender');
                  },
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
