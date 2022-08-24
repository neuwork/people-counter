import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'People Counter',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              // Top-Navbar
              Container(
                padding: EdgeInsets.fromLTRB(70, 8, 70, 8),
                color: Color(0xffFFFFFF),
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Title of the Navbar
                    Container(
                      child: Row(children: [
                        Icon(
                          Icons.people,
                          size: 50,
                          color: Colors.indigo,
                        ),
                        const Text(
                          " People Counter",
                          style: TextStyle(
                            fontSize: 36,
                            color: Colors.indigo,
                            fontFamily: 'Eczar',
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ]),
                    ),

                    // Nav-Links
                    Container(
                      child: Row(
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: const Text("Home",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.indigo,
                                    fontFamily: 'Merriweather',
                                  ))),
                          TextButton(
                              onPressed: () {
                                // Navigator.push(
                                //     context, ContactScreen.getRoute());
                              },
                              child: const Text("Contact",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.indigo,
                                      fontFamily: 'Merriweather'))),
                          TextButton(
                              onPressed: () {
                                // Navigator.push(context, AboutScreen.getRoute());
                              },
                              child: const Text("About",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.indigo,
                                      fontFamily: 'Merriweather'))),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.fromLTRB(350, 0, 350, 0),
                color: Colors.indigo,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "People Counter: A Neuwork Solutions Software",
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontFamily: 'Eczar',
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
                    const Text(
                      "People Counter uses ML and NLP techniques to count the number of people present in the image/video.",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontFamily: 'Merriweather'),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),

              // Upload image/video...!
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                color: Color(0xffE8E8E8),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 232,
                        width: 867,
                        color: Color(0xffFBFDF7),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              "Drag and Drop Images/Videos",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                                fontFamily: 'Eczar',
                              ),
                              textAlign: TextAlign.center,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xff4D6658),
                                  onPrimary: Colors.white,
                                  textStyle: TextStyle(fontSize: 16),
                                  minimumSize: Size(60, 50),
                                  elevation: 10,
                                ),
                                onPressed: () async {
                                  // final List<PdfFile> files =
                                  //     await getFilesBytes();

                                  // if (files.isNotEmpty) {
                                  //   ParsedInformationScreen.addFiles(files);

                                  //   Navigator.push(
                                  //       context,
                                  //       MaterialPageRoute(
                                  //           builder: (context) =>
                                  //               const ParsedInformationScreen()));
                                  // }
                                },
                                child: const Text("Add Images/Videos",
                                    style: TextStyle(
                                        fontFamily: 'Eczar',
                                        fontWeight: FontWeight.w700)))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),

              // Blank Rectangle
              Container(
                height: 85,
              ),

              Container(
                height: 58,
                width: MediaQuery.of(context).size.width,
                color: Colors.indigo,
                padding: EdgeInsets.fromLTRB(70, 20, 70, 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("© People Counter 2022",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontFamily: 'Archivo',
                          )),
                      const Text("Made with ❤ by Neuwork Dev Team",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontFamily: 'Archivo',
                          )),
                    ]),
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Uploaded Videos'),
            ),
            ListTile(
              title: const Text('Video 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Video 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
    );
  }
}
