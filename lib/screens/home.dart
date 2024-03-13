import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  static const routeName = '/home';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.5,
          decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/manpic.jpeg')),
          ),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(0, 255, 255, 255),
                  Color.fromARGB(200, 60, 60, 59),
                  Color.fromARGB(255, 60, 60, 59)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomRight,
              ),
            ),
          ),
        ),
        Center(
          child: ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                const BeveledRectangleBorder(),
              ),
              backgroundColor: MaterialStateProperty.all(
                  const Color.fromARGB(255, 225, 206, 36)),
              minimumSize: MaterialStateProperty.all(
                Size(MediaQuery.of(context).size.width,
                    MediaQuery.of(context).size.height * 0.1),
              ),
            ),
            onPressed: () {
              Navigator.of(context).pushNamed('/signup');
            },
            child: Center(
              child: Text(
                'Create Account',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  color: const Color.fromARGB(255, 60, 60, 59),
                  fontSize: MediaQuery.of(context).size.height * 0.034,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        // Center(
        //   child: Text(
        //     'or use',
        //     style: TextStyle(
        //         color: const Color.fromARGB(255, 225, 206, 36),
        //         fontSize: MediaQuery.of(context).size.height * 0.025,
        //         fontFamily: 'Montserrat'),
        //   ),
        // ),
        // Row(
        //   children: [
        //     SizedBox(
        //       width: MediaQuery.of(context).size.width * 0.5,
        //       height: MediaQuery.of(context).size.height * 0.2,
        //       child: const Center(
        //         child: Text("Hi"),
        //       ),
        //     ),
        //     SizedBox(
        //       width: MediaQuery.of(context).size.width * 0.5,
        //       height: MediaQuery.of(context).size.height * 0.2,
        //       child: const Center(
        //         child: Text("Hello"),
        //       ),
        //     ),
        //   ],
        // ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.225,
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/login');
          },
          child: Text(
            'already have an account?',
            style: TextStyle(
                color: const Color.fromARGB(255, 225, 206, 36),
                fontSize: MediaQuery.of(context).size.height * 0.025,
                fontFamily: 'Montserrat'),
          ),
        ),
      ]),
    );
  }
}
