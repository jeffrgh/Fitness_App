import 'package:flutter/material.dart';

class WeightGS extends StatefulWidget {
  const WeightGS({super.key});

  static const routeName = '/weight';

  @override
  State<WeightGS> createState() => _WeightGSState();
}

class _WeightGSState extends State<WeightGS> {
  bool _changeUnits = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.025,
                left: MediaQuery.of(context).size.width * 0.1,
                right: MediaQuery.of(context).size.width * 0.1,
              ),
              child: const LinearProgressIndicator(
                color: Color.fromARGB(255, 225, 206, 36),
                backgroundColor: Color.fromARGB(255, 157, 157, 157),
                borderRadius: BorderRadius.all(
                  Radius.circular(100),
                ),
                value: 0.5,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                // left: MediaQuery.of(context).size.width * 0.1,
                top: MediaQuery.of(context).size.height * 0.05,
              ),
              child: Text(
                'Weight',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: MediaQuery.of(context).size.height * 0.05,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.1,
                right: MediaQuery.of(context).size.width * 0.1,
                top: MediaQuery.of(context).size.height * 0.05,
                // bottom: MediaQuery.of(context).size.height * 0.05,
              ),
              child: TextField(
                keyboardType: TextInputType.number,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: MediaQuery.of(context).size.height * 0.025,
                ),
                decoration: InputDecoration(
                  hintText: _changeUnits
                      ? 'Enter your weight (pounds)'
                      : 'Enter your weight (kg)',
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                // left: MediaQuery.of(context).size.width * 0.1,
                top: MediaQuery.of(context).size.height * 0.05,
              ),
              child: Text(
                'Height',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: MediaQuery.of(context).size.height * 0.05,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.1,
                right: MediaQuery.of(context).size.width * 0.1,
                top: MediaQuery.of(context).size.height * 0.05,
                bottom: MediaQuery.of(context).size.height * 0.05,
              ),
              child: TextField(
                keyboardType: TextInputType.number,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: MediaQuery.of(context).size.height * 0.025,
                ),
                decoration: InputDecoration(
                  hintText: _changeUnits
                      ? 'Enter your height (feet)'
                      : 'Enter your height (cm)',
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.075,
                    right: MediaQuery.of(context).size.width * 0.2,
                  ),
                  child: Text(
                    'Change to pounds/feet',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: MediaQuery.of(context).size.height * 0.025,
                    ),
                  ),
                ),
                Switch(
                  inactiveTrackColor: const Color.fromARGB(255, 60, 60, 59),
                  // This bool value toggles the switch.
                  value: _changeUnits,
                  activeColor: Colors.yellow,
                  onChanged: (bool value) {
                    // This is called when the user toggles the switch.
                    setState(() {
                      _changeUnits = !_changeUnits;
                    });
                  },
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.17,
                left: MediaQuery.of(context).size.width * 0.8,
              ),
              child: IconButton.filled(
                style: ButtonStyle(
                  iconSize: MaterialStateProperty.all(35),
                  backgroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 225, 206, 36),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/place');
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
    );
  }
}
