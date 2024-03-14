import 'package:flutter/material.dart';

class PlaceGS extends StatefulWidget {
  const PlaceGS({super.key});
  static const routeName = '/place';

  @override
  State<PlaceGS> createState() => _PlaceGSState();
}

class _PlaceGSState extends State<PlaceGS> {
  List<DropdownMenuItem<String>> get dropdownItems1 {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(value: "TN", child: Text("Tamil Nadu")),
      const DropdownMenuItem(value: "Kerala", child: Text("Kerala")),
      const DropdownMenuItem(value: "J&K", child: Text("Jammu and Kashmir")),
      const DropdownMenuItem(value: "Maharashtra", child: Text("Maharashtra")),
    ];
    return menuItems;
  }

  List<DropdownMenuItem<String>> get dropdownItems2 {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(value: "India", child: Text("India")),
      const DropdownMenuItem(value: "Canada", child: Text("Canada")),
      const DropdownMenuItem(value: "Australia", child: Text("Australia")),
      const DropdownMenuItem(value: "Indonesia", child: Text("Indonesia")),
    ];
    return menuItems;
  }

  List<DropdownMenuItem<String>> get dropdownItems3 {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(value: "Chennai", child: Text("Chennai")),
      const DropdownMenuItem(value: "Tambaram", child: Text("Tambaram")),
      const DropdownMenuItem(value: "Siruseri", child: Text("Siruseri")),
      const DropdownMenuItem(value: "Selayiur", child: Text("Selayiur")),
    ];
    return menuItems;
  }

  final String _selectedValue = "TN";
  final String _selectedValue2 = "India";
  String _selectedValue3 = "Chennai";
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
                value: 0.75,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                // left: MediaQuery.of(context).size.width * 0.1,
                top: MediaQuery.of(context).size.height * 0.05,
              ),
              child: Text(
                'Country',
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
              child: DropdownButton(
                disabledHint: const Text("India"),
                value: _selectedValue2,
                onChanged: null,
                //     (String? newValue) {
                //   setState(() {
                //     _selectedValue2 = newValue!;
                //   });
                // },
                items: dropdownItems2,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                // left: MediaQuery.of(context).size.width * 0.1,
                top: MediaQuery.of(context).size.height * 0.05,
              ),
              child: Text(
                'State',
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
              child: DropdownButton(
                value: _selectedValue,
                onChanged: null,
                //     (String? newValue) {
                //   setState(() {
                //     _selectedValue = newValue!;
                //   });
                // },
                items: dropdownItems1,
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
              child: DropdownButton(
                disabledHint: const Text("India"),
                value: _selectedValue3,
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedValue3 = newValue!;
                  });
                },
                items: dropdownItems3,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.02,
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
                  // Navigator.of(context).pushNamed('/');
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
