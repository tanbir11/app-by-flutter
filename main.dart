//adb tcpip 5555
//adb connect 192.98.1.166

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeActivity());
  }
}

class HomeActivity extends StatelessWidget {
  HomeActivity({super.key});

  // ignore: non_constant_identifier_names
  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }


  var MyItems = [
    {"img": "https://scontent.fdac135-1.fna.fbcdn.net/v/t39.30808-6/271957082_415808273662455_1933150069016434784_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=1b51e3&_nc_eui2=AeE-DYnXel0AFZQT618tl32snspgR0ESSdeeymBHQRJJ19cGYpY8lShoiP3JQn_m912wCTyW0WJn3dxdGqmfguf7&_nc_ohc=82mExLJYpm8AX-ZhKsR&_nc_ht=scontent.fdac135-1.fna&oh=00_AfDijGI9fVLIzaAzc4EbgnLnmMJFkhFNJDUVUcZbtgPrkA&oe=65245181", },
  
  ];

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(20),
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30))),
        minimumSize: const Size(double.infinity, 50));

    return Scaffold(
        appBar: AppBar(
          title: const Text("My App"),
          // centerTitle: true,
          titleSpacing: 20,
          elevation: 0,
          toolbarHeight: 50,
          toolbarOpacity: 1,
          backgroundColor: const Color(0xFF006064),
          actions: [
            IconButton(
                onPressed: () {
                  MySnackBar("Search Button is clicked", context);
                },
                icon: const Icon(Icons.search)),
            IconButton(
                onPressed: () {
                  
                  MySnackBar("Home Button is clicked", context);
                },
                icon: const Icon(Icons.home)),
            IconButton(
                onPressed: () {
                  MySnackBar("contact Button is clicked", context);
                },
                icon: const Icon(Icons.contact_page)),
            IconButton(
                onPressed: () {
                  MySnackBar("email Button is clicked", context);
                },
                icon: const Icon(Icons.email)),
            //IconButton(
                // onPressed: () {
                //   MySnackBar("settings Button is clicked", context);
                // },
                // icon: const Icon(Icons.settings))
          ],
        ),
      
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                padding: const EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                    decoration: const BoxDecoration(color: Colors.black),
                    accountName: const Text("Md. Tanbirul Haq"),
                    accountEmail: const Text("tanbirul15-3940@diu.edu.bd"),
                    currentAccountPicture: Image.network(
                        "https://scontent.fdac135-1.fna.fbcdn.net/v/t39.30808-6/271957082_415808273662455_1933150069016434784_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=1b51e3&_nc_eui2=AeE-DYnXel0AFZQT618tl32snspgR0ESSdeeymBHQRJJ19cGYpY8lShoiP3JQn_m912wCTyW0WJn3dxdGqmfguf7&_nc_ohc=82mExLJYpm8AX-ZhKsR&_nc_ht=scontent.fdac135-1.fna&oh=00_AfDijGI9fVLIzaAzc4EbgnLnmMJFkhFNJDUVUcZbtgPrkA&oe=65245181")),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Home'),
                onTap: () {

                  
                  MySnackBar("Home Index", context);
                  Navigator.pop(context);
                },
              ),
               ListTile(
                leading: const Icon(Icons.abc),
                title: const Text('About me'),
                onTap: () {
                  MySnackBar("Home Index", context);
                  Navigator.pop(context);
                },
              ),
               ListTile(
                 leading: const Icon(Icons.abc),
                title: const Text('skills'),
                onTap: () {
                  MySnackBar("Home Index", context);
                  Navigator.pop(context);
                },
              ),
               ListTile(
                 leading: const Icon(Icons.abc),
                title: const Text('Experiences'),
                onTap: () {
                  MySnackBar("Home Index", context);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.contact_page),
                title: const Text('Contact me'),
                onTap: () {
                  MySnackBar("Home Index", context);
                  Navigator.pop(context);
                },
              ),
              
            ],
          ),
        ),
        
        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 0,
                mainAxisSpacing: 0,
                crossAxisCount: 1,
                childAspectRatio: 1.5),
            //ListView.builder(
            itemCount: MyItems.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                // onTap: () {
                //   // MyAlertBox(context);

                //   MySnackBar(MyItems[index]["title"], context);
                // },
                child: Container(
                  margin: EdgeInsets.all(8),
                  width: double.infinity,
                  height: 500,
                  child: Image.network(
                    MyItems[index]["img"]!,
                    fit: BoxFit.fill,
                  ),
                ),
              );
            })
        );
  }
}
