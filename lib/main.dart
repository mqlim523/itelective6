import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:sign_button/sign_button.dart';
void main() => runApp(
  MaterialApp(
    home: Home(),
));

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _counter = 0;
  bool checkBoxValue = false;
  TextStyle style = TextStyle(fontFamily: 'Monserrat', fontSize: 20.0);

  void _incrementCounter(){
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context){
    final ButtonStyle style = ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Scaffold(
      body: Center(
        child: Container(
          width: 2500,
          height: 3000,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/wallpaper.jpg'),
            ),
          ),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              Container(
                width: 400,
                height: 150,
               padding: EdgeInsets.only(bottom: 30, top: 10),
               decoration: BoxDecoration(
                   color: const Color(0xFFFFFF).withOpacity(0.5),
                 ),
                 child: Image.asset(
                   'assets/circle_logo.png',
                    scale: 1,
                 ),
               ),
              Container(
                width: 400,
                height: 50,
                color: const Color(0xFFFFFF).withOpacity(0.5),
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      width: 10,
                      height: 50,
                      child: Icon(
                          Icons.account_circle_rounded,
                          size: 25,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left:30, top: 10),
                      width: 300,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(labelText: 'Email'),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 400,
                height: 50,
                color: const Color(0xFFFFFF).withOpacity(0.5),
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 15),
                      width: 10,
                      height: 50,
                      child: Icon(
                        Icons.lock,
                        size: 25,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left:30, top:10),
                      width: 300,
                      height: 50,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(labelText: 'Password'),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 400,
                height: 50,
                color: const Color(0xFFFFFF).withOpacity(0.5),
                child: Row(
                  children: <Widget>[
                    Checkbox(
                        value: checkBoxValue,
                        onChanged: (value){

                          setState(() {
                            this.checkBoxValue = value!;
                          });
                        },
                      ),
                      Text ('Keep Me Logged In'), 
                  ],
                ),
              ),
              Container(
                width: 400,
                height: 50,
                color: const Color(0xFFFFFF).withOpacity(0.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(height: 30),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(380, 30),
                      ),
                      child: const Text('Login'),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (BuilderContext) => SecondRoute()),
                        );
                      },
                    ), 
                  ],
                ),
              ),
              Container(
                width: 400,
                height: 50,
                color: const Color(0xFFFFFF).withOpacity(0.5),
                child: Row(
                  children: <Widget>[
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 15),
                      primary: Colors.blueGrey,
                    ),
                    onPressed: () {},
                    child: const Text('Forgot Password?'),
                  ),  
                  Spacer(flex: 4),
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 15),
                      primary: Colors.blueGrey,
                    ),
                    onPressed:() {},
                    child: const Text('New User? Register')
                  )
                  ],
                ),
              ),
              Container(
                width: 400,
                height: 50,
                color: const Color(0xFFFFFF).withOpacity(0.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SignInButton.mini(
                      buttonType: ButtonType.google,
                      onPressed: () {},
                    ),
                    SignInButton.mini(
                      buttonType: ButtonType.facebook,
                      onPressed: () {},
                    ),
                    SignInButton.mini(
                      buttonType: ButtonType.twitter,
                      onPressed: () {},
                    ),
                    SignInButton.mini(
                      buttonType: ButtonType.instagram,
                      btnColor: Colors.white,
                      onPressed: () {},
                    ),
                  ]
                )
              )
              ], 
            ),
          ),
        ),
      ),  
    );
  }
}

class SecondRoute extends StatefulWidget {
  const SecondRoute({ Key? key,}) : super(key: key);

  @override
  _SecondRouteState createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Technewlogy'),
        backgroundColor: Colors.black,
      ),
      body: Center(
          child: Container(
            width: 2000,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('route.jpg'),
              ),
            ),
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                      child: Stack(
                        children: <Widget> [
                          Ink.image(
                            image: AssetImage('assets/5g.jpg'),
                            height: 250,
                            width: 1700,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 250, left: 16).copyWith(bottom: 0),
                            child: Text(
                              '5G is the 5th generation mobile network. It is a new global wireless standard after 1G, 2G, 3G, and 4G networks. 5G enables a new kind of network that is designed to connect virtually everyone and everything together including machines, objects, and devices. 5G capable networks are now a reality around the globe, however, these new 5G networks will co-exist side by side with 4G ones for many years, while at the same time efficiencies need to be improved in order to capture new opportunities. 5G wireless technology is meant to deliver higher multi-Gbps peak data speeds, ultra low latency, more reliability, massive network capacity, increased availability, and a more uniform user experience to more users....',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          ButtonBar(
                            alignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 305, right: 15).copyWith(bottom:0),
                                child: TextButton(
                                  child: Text('Read More'),
                                  onPressed: (){},
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Stack(
                        children: <Widget> [
                          Ink.image(
                            image: AssetImage('assets/edgecomputing.png'),
                            height: 250,
                            width: 1700,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 250, left: 16).copyWith(bottom: 0),
                            child: Text(
                              'Companies like Amazon, Microsoft, and Google have proven to us that we can trust them with our personal data. Now it’s time to reward that trust by giving them complete control over our computers, toasters, and cars.Edge is a buzzword. Like “IoT” and “cloud” before it, edge means everything and nothing. But I’ve been watching some industry experts on YouTube, listening to some podcasts, and even, on occasion, reading articles on the topic. And I think I’ve come up with a useful definition and some possible applications for this buzzword As centralized as this all sounds, the truly amazing thing about cloud computing is that a seriously large percentage of all companies in the world now rely on the infra....',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          ButtonBar(
                            alignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 305, right: 15).copyWith(bottom:0),
                                child: TextButton(
                                  child: Text('Read More'),
                                  onPressed: (){},
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Padding(
                padding: EdgeInsets.all(6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      width: 60,
                      height: 60,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/me.jpg'),
                      ),
                    ),
                    Text(
                      'Matthew Lim',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.yellow,
                      ),
                    ),
                    SizedBox(height: 3,),
                    Text(
                      'mqlim@addu.edu.ph',
                      style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              title: const Text('Profile'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Cellphones'),
              onTap:(){
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}