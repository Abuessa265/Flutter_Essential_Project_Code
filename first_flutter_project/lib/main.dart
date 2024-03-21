import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.green),
        darkTheme: ThemeData(primarySwatch: Colors.amber),
        color: Colors.blue,
        debugShowCheckedModeBanner: false,
        home: HomeActivity());
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  MyAlertDialog(context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Expanded(
              child: AlertDialog(
            title: Text("Alert !"),
            content: Text("Do you want to delete"),
            actions: [
              TextButton(
                  onPressed: () {
                    MySnackBar('Delete Success', context);
                    Navigator.of(context).pop();
                  },
                  child: Text("Yes")),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("No"))
            ],
          ));
        });
  }

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
        padding: EdgeInsets.all(15),
        backgroundColor: Colors.yellow,
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))));

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Basic App",
          style: TextStyle(color: Colors.white),
        ),
        titleSpacing: 10,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 4,
        backgroundColor: Colors.green,
        actions: [
          IconButton(
              onPressed: () {
                MySnackBar("Comments section", context);
              },
              icon: Icon(
                Icons.comment,
                color: Colors.amberAccent,
              )),
          IconButton(
              onPressed: () {
                MySnackBar("Search section", context);
              },
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {
                MySnackBar("Setting section", context);
              },
              icon: Icon(
                Icons.settings,
                color: Colors.red,
              )),
          IconButton(
              onPressed: () {
                MySnackBar("Email section", context);
              },
              icon: Icon(
                Icons.email,
                color: Colors.cyanAccent,
              )),
          IconButton(
              onPressed: () {
                MySnackBar("Facebook section", context);
              },
              icon: Icon(
                Icons.facebook,
                color: Colors.blue,
              )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
        onPressed: () {
          MySnackBar("I am a floating button", context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.green,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.message,
                color: Colors.green,
              ),
              label: "Contact"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.green,
              ),
              label: "Profile")
        ],
        onTap: (int index) {
          if (index == 0) {
            MySnackBar("I am home bottom menu", context);
          }
          if (index == 1) {
            MySnackBar("I am contact bottom menu", context);
          }
          if (index == 2) {
            MySnackBar("I am profile bottom menu", context);
          }
        },
      ),
      drawer: Drawer(
          child: ListView(
        children: [
          DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.green),
                accountName: Text(
                  "MD.Abu essa",
                  style: TextStyle(color: Colors.black),
                ),
                accountEmail: Text(
                  "abuessa@gmail.com",
                  style: TextStyle(color: Colors.black),
                ),
                currentAccountPicture: Image.network(
                    "https://avatars.githubusercontent.com/u/76743694?s=400&u=69f90b0d7ef2b116b4cf692a406bf5a56d3bfa17&v=4"),
                onDetailsPressed: () {
                  MySnackBar("This is profile", context);
                },
              )),
          ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.blue,
              ),
              title: Text("Home"),
              onTap: () {
                MySnackBar("Home Here", context);
              }),
          ListTile(
              leading: Icon(
                Icons.contact_mail,
                color: Colors.green,
              ),
              title: Text("Contact"),
              onTap: () {
                MySnackBar("Email here", context);
              }),
          ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.red,
              ),
              title: Text("Profile"),
              onTap: () {
                MySnackBar("Profile Here", context);
              }),
          ListTile(
              leading: Icon(
                Icons.email,
                color: Colors.amber,
              ),
              title: Text("Email"),
              onTap: () {
                MySnackBar("Email here", context);
              }),
          ListTile(
              leading: Icon(
                Icons.phone,
                color: Colors.brown,
              ),
              title: Text("Phone"),
              onTap: () {
                MySnackBar("Phone here", context);
              }),
        ],
      )),
      endDrawer: Drawer(
          child: ListView(
        children: [
          DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.green),
                accountName: Text(
                  "MD.Abu essa",
                  style: TextStyle(color: Colors.black),
                ),
                accountEmail: Text(
                  "abuessa@gmail.com",
                  style: TextStyle(color: Colors.black),
                ),
                currentAccountPicture: Image.network(
                    "https://media.licdn.com/dms/image/D5635AQGD4F7Nt5vutQ/profile-framedphoto-shrink_200_200/0/1699693499633?e=1711170000&v=beta&t=u6_Ag2UHyr3fW5xCcbbbmI-EJxaj5ovZs7-kX6MhVdc"),
                onDetailsPressed: () {
                  MySnackBar("This is profile", context);
                },
              )),
          ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                MySnackBar("Home Here", context);
              }),
          ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text("Contact"),
              onTap: () {
                MySnackBar("Email here", context);
              }),
          ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: () {
                MySnackBar("Profile Here", context);
              }),
          ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              onTap: () {
                MySnackBar("Email here", context);
              }),
          ListTile(
              leading: Icon(Icons.phone),
              title: Text("Phone"),
              onTap: () {
                MySnackBar("Phone here", context);
              }),
        ],
      )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 90,
            width: 100,
            child: Image.network(
                "https://media.licdn.com/dms/image/D5635AQGD4F7Nt5vutQ/profile-framedphoto-shrink_200_200/0/1699693499633?e=1711170000&v=beta&t=u6_Ag2UHyr3fW5xCcbbbmI-EJxaj5ovZs7-kX6MhVdc"),
          ),
          OutlinedButton(
            onPressed: () {
              MyAlertDialog(context);
            },
            child: Text("Cleck me"),
          ),
          TextButton(
              onPressed: () {
                MySnackBar("I am text button", context);
              },
              child: Text(
                'Text Button',
                style: TextStyle(color: Colors.red),
              )),
          ElevatedButton(
            onPressed: () {
              MySnackBar("I am elevated button", context);
            },
            child: Text("Elevsted Button"),
            style: buttonStyle,
          ),
          Row(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                      onPressed: () {
                        MyAlertDialog(context);
                      },
                      child: Text(
                        "Click again",
                        style: TextStyle(color: Colors.green),
                      ))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
