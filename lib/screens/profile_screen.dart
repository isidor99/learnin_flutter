import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  static const routeName = "/profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Profile")),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: const [ProfileTop(), ProfileBottom()]),
        ));
  }
}

class ProfileTop extends StatelessWidget {
  const ProfileTop({Key? key}) : super(key: key);

  void _settingsButtonPressed() {
    print("Settings!");
  }

  void _profileButtonPressed() {
    print("Profile!");
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 256,
      child: Container(
        color: Colors.purple[800],
        child: Stack(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: _profileButtonPressed,
                    icon:
                        const Icon(Icons.account_circle, color: Colors.white)),
                IconButton(
                    onPressed: _settingsButtonPressed,
                    icon: const Icon(
                      Icons.settings,
                      color: Colors.white,
                    ))
              ],
            ),
            Center(
              child: Container(
                width: 186.0,
                height: 186.0,
                decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    image: const DecorationImage(
                        image: NetworkImage(
                          "https://www.gettyimages.com/gi-resources/images/500px/983794168.jpg",
                        ),
                        fit: BoxFit.cover),
                    borderRadius: const BorderRadius.all(Radius.circular(93.0)),
                    border: Border.all(color: Colors.deepOrange, width: 2.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileBottom extends StatefulWidget {
  const ProfileBottom({Key? key}) : super(key: key);

  @override
  _ProfileBottomState createState() => _ProfileBottomState();
}

class _ProfileBottomState extends State<ProfileBottom> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _countryController = TextEditingController();

  void _onButtonPressed() {
    print(_nameController.value.text);
    print(_emailController.value.text);
    print(_cityController.value.text);
    print(_countryController.value.text);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _cityController.dispose();
    _countryController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 0.0),
      child: Column(
        children: [
          TextField(
            style: const TextStyle(fontSize: 18.0),
            controller: _nameController,
            keyboardType: TextInputType.name,
            textCapitalization: TextCapitalization.words,
            decoration: const InputDecoration(
                label: Text("Name"),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    borderSide:
                        BorderSide(color: Colors.deepOrange, width: 2.0)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    borderSide:
                        BorderSide(color: Colors.deepOrange, width: 2.0))),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: TextField(
              style: const TextStyle(fontSize: 18.0),
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                  label: Text("Email"),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide:
                          BorderSide(color: Colors.deepOrange, width: 2.0)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide:
                          BorderSide(color: Colors.deepOrange, width: 2.0))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: TextField(
              style: const TextStyle(fontSize: 18.0),
              controller: _cityController,
              keyboardType: TextInputType.name,
              textCapitalization: TextCapitalization.words,
              decoration: const InputDecoration(
                  label: Text("City"),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide:
                          BorderSide(color: Colors.deepOrange, width: 2.0)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide:
                          BorderSide(color: Colors.deepOrange, width: 2.0))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: TextField(
              style: const TextStyle(fontSize: 18.0),
              controller: _countryController,
              keyboardType: TextInputType.name,
              textCapitalization: TextCapitalization.words,
              decoration: const InputDecoration(
                  label: Text("Country"),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide:
                          BorderSide(color: Colors.deepOrange, width: 2.0)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide:
                          BorderSide(color: Colors.deepOrange, width: 2.0))),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Row(children: [
                Expanded(
                  child: TextButton(
                      onPressed: _onButtonPressed,
                      child: const Text("Submit"),
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.deepOrange,
                          textStyle: TextStyle(
                              fontSize: 20.0,
                              wordSpacing: 2,
                              color: Colors.purple[800],
                              fontWeight: FontWeight.bold),
                          primary: Colors.purple[800])),
                ),
              ]))
        ],
      ),
    );
  }
}
