import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile',
      theme: ThemeData(primaryColor: Colors.grey),
      home: homepage(),
    );
  }
}

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      drawer:Drawer(
        backgroundColor: Color.fromRGBO(230, 255, 255, 1),
        child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.circular(12),
                      boxShadow: [BoxShadow(
                        color: Colors.black,
                        offset: Offset(0, 4),
                        blurRadius: 16,
                        blurStyle: BlurStyle.solid,
                        spreadRadius: 1,
                      ),]
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Rahul Kumar ",
                                  style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                Text("rahul@gamail.com",
                                  style: GoogleFonts.poppins(
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                "https://cdn-icons-png.flaticon.com/512/3135/3135715.png",
                              ),

                            ),
                          ],
                        )

                      ],
                    ),

                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        menuItem(Icons.person, "Profile"),
                        Divider(

                        ),

                        menuItem(Icons.group, "Community"),
                        Divider(),
                        menuItem(Icons.subscriptions, "Subscription"),
                        Divider(),
                        menuItem(Icons.settings, "Settings"),
                        Divider(),
                        menuItem(Icons.help_center, "Help Center"),
                        Divider(),
                        menuItem(Icons.logout, "Sign out"),
                        Divider(),

                      ],
                    ),
                  ),
                ],
              ),
            ),
        ),
      ),

    );
  }
  Widget menuItem(IconData icon , String text ){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(width: 12),
          Text(text),
        ],
      ),
    );
  }
}
