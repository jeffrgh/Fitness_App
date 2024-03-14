import 'package:flutter/material.dart';

enum Gender { male, female, other }

class GenderGS extends StatefulWidget {
  const GenderGS({super.key});
  static const routeName = '/gender';

  @override
  State<GenderGS> createState() => _GenderGSState();
}

class _GenderGSState extends State<GenderGS> {
  Gender _gender = Gender.male;
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
                value: 0.33,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                // left: MediaQuery.of(context).size.width * 0.1,
                top: MediaQuery.of(context).size.height * 0.05,
              ),
              child: Text(
                'Gender',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: MediaQuery.of(context).size.height * 0.05,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.25,
                right: MediaQuery.of(context).size.width * 0.2,
                top: MediaQuery.of(context).size.height * 0.015,
              ),
              child: RadioListTile<Gender>(
                title: Text(
                  "Male",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                  ),
                ),
                activeColor: const Color.fromARGB(255, 225, 206, 36),
                value: Gender.male,
                groupValue: _gender,
                onChanged: (_) {
                  setState(() {
                    _gender = Gender.male;
                  });
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.25,
                right: MediaQuery.of(context).size.width * 0.2,
              ),
              child: RadioListTile<Gender>(
                title: Text(
                  "Female",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                  ),
                ),
                activeColor: const Color.fromARGB(255, 225, 206, 36),
                value: Gender.female,
                groupValue: _gender,
                onChanged: (_) {
                  setState(() {
                    _gender = Gender.female;
                  });
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.25,
                right: MediaQuery.of(context).size.width * 0.2,
              ),
              child: RadioListTile<Gender>(
                title: Text(
                  "Other",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                  ),
                ),
                activeColor: const Color.fromARGB(255, 225, 206, 36),
                value: Gender.other,
                groupValue: _gender,
                onChanged: (_) {
                  setState(() {
                    _gender = Gender.other;
                  });
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                // left: MediaQuery.of(context).size.width * 0.1,
                top: MediaQuery.of(context).size.height * 0.05,
              ),
              child: Text(
                'Age',
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
                decoration: const InputDecoration(
                  hintText: 'Enter your age',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
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
                  // Navigator.of(context).pushNamed('');
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
