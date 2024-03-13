import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});
  static const routeName = '/login';

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool _isObscure = true;
  bool _toRemember = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    hintText: 'Username',
                    hintStyle: TextStyle(fontFamily: 'Montserrat'),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextField(
                  obscureText: _isObscure,
                  obscuringCharacter: '-',
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    hintText: 'Password',
                    hintStyle: const TextStyle(fontFamily: 'Montserrat'),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                      icon: Icon(
                          _isObscure ? Icons.visibility_off : Icons.visibility),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: const Center(
                    child: Text(
                      'Remember Me',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Color.fromARGB(255, 120, 120, 118),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Switch(
                      inactiveTrackColor: const Color.fromARGB(255, 60, 60, 59),
                      // This bool value toggles the switch.
                      value: _toRemember,
                      activeColor: Colors.yellow,
                      onChanged: (bool value) {
                        // This is called when the user toggles the switch.
                        setState(() {
                          _toRemember = !_toRemember;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            ),
            Center(
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(
                      const Color.fromARGB(255, 225, 206, 36)),
                  fixedSize: MaterialStateProperty.all(
                    Size(
                      MediaQuery.of(context).size.width * 0.8,
                      MediaQuery.of(context).size.height * 0.1,
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/gs');
                },
                child: Center(
                  child: Text(
                    'Log In',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: const Color.fromARGB(255, 60, 60, 59),
                      fontSize: MediaQuery.of(context).size.height * 0.034,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
