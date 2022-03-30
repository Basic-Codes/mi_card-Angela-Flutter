import 'package:flutter/material.dart';

void main() {
  // runApp(BasicLayout());
  // runApp(LayoutChallenge());
  runApp(Micard());
}

// =============================
//     ☠️ Main MiCard
// =============================
class Micard extends StatelessWidget {
  const Micard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black12,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/ME.jpg'),
              ),
              Text(
                'Rifat Noor',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                'TEAM OPARTHIB',
                style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.white54,
                    letterSpacing: 4),
              ),
              SizedBox(
                height: 20,
                width: 170,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              new CustomeCard("+8801799555154", Icons.phone),
              new CustomeCard("Rifatnoor92@gmail.com", Icons.email),
              new MaterialCard("Mirpur-14, Dhaka", Icons.location_on),
              new MaterialCard(
                  "Unity, React, Laravel, Flutter", Icons.fingerprint),
            ],
          ),
        ),
      ),
    );
  }
}

// =============================
//     Card From Material
// =============================
class MaterialCard extends StatelessWidget {
  // const MaterialCard({Key? key}) : super(key: key);

  String text = "";
  IconData icon = Icons.android;
  MaterialCard(this.text, this.icon);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.black87,
        ),
        title: Text(
          text,
          style: TextStyle(color: Colors.black87, fontSize: 15),
        ),
      ),
    );
  }
}

// =============================
//       Card Made by me
// =============================
class CustomeCard extends StatelessWidget {
  // const CustomeCard({Key? key}) : super(key: key);

  String text = "";
  IconData icon = Icons.android;
  CustomeCard(this.text, this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.black87,
          ),
          SizedBox(
            width: 35,
          ),
          Text(
            text,
            style: TextStyle(color: Colors.black87, fontSize: 15),
          )
        ],
      ),
    );
  }
}

// =============================
//     ☠️Basic Layout
// =============================
class BasicLayout extends StatelessWidget {
  const BasicLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [box(), box(), box()],
          ),
        ),
      ),
    );
  }
}

class box extends StatelessWidget {
  const box({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      color: Colors.red[300],
      child: Center(
        child: Text('Hello'),
      ),
    );
  }
}

// =============================
//     ☠️Layout Challenge
// =============================
class LayoutChallenge extends StatelessWidget {
  const LayoutChallenge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: double.infinity,
                width: 100,
                color: Colors.red,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.yellow,
              ),
              Container(
                height: double.infinity,
                width: 100,
                color: Colors.blue,
              )
            ],
          ),
        ),
      ),
    );
  }
}
