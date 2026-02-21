import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
        appBar:AppBar(
          title: Text("DRAWER UI"),
        ),
        body: Center(
          child: Text("Hello Everyone" , style: TextStyle(
              fontWeight: FontWeight.bold ,
              fontSize: 40),),
        ),

        drawer: Drawer(
          backgroundColor: Colors.grey[900],
          child: ListView(
            children: [
              DrawerHeader(
                margin: EdgeInsets.symmetric(horizontal: 10),
                padding: EdgeInsets.zero,
                  child: UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.grey[800]
                    ),
                      accountName: Text("NADA MOHAMMED" ,style:
                        TextStyle(fontWeight: FontWeight.bold),),
                      accountEmail: Text("nada@gmail.com") ,
                    
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: AssetImage("images/avatar.png"),
                    ),
                  )
              ) ,


              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.arrow_forward),
              ),ListTile(
                leading: Icon(Icons.mail),
                title: Text("Mail"),
                trailing: Icon(Icons.arrow_forward),
              ),ListTile(
                leading: Icon(Icons.import_contacts),
                title: Text("Contact"),
                trailing: Icon(Icons.arrow_forward),
              ),ListTile(
                leading: Icon(Icons.query_stats),
                title: Text("Stat"),
                trailing: Icon(Icons.arrow_forward),
              ),


            ],
          ),
        ),

      ),
    );
  }
}
