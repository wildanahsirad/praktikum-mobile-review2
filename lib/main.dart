import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> titles = ['Bike', 'Boat', 'Bus', 'Car'];
  @override
  Widget build(BuildContext context) {
    // final titles = ['Bike', 'Boat', 'Bus', 'Car'];
    // final icons = [
    //   Icons.directions_bike,
    //   Icons.directions_boat,
    //   Icons.directions_bus,
    //   Icons.directions_car,
    // ];

    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
        backgroundColor: Colors.deepOrange[300],
      ),
      body: ListView.builder(
        itemCount: titles.length,
        // itemBuilder: (context, index) {
        itemBuilder: (context, nomor) {
          return Card(
            child: ListTile(
              // leading: Icon(icons[index]),
              // title: Text(titles[index]),
              // trailing: Icon(Icons.keyboard_arrow_right),

              leading: CircleAvatar(
                backgroundImage:
                    NetworkImage("https://picsum.photos/200/300?images=$nomor"),
              ),
              title: Text(titles[nomor]),

              // kalau itemnya di tap bakal ke hapus
              onTap: () {
                setState(() {
                  titles.removeAt(nomor);
                });
              },
            ),
          );
        },
      ),

      // BUAT ICON
      // children: [
      //   ListTile(
      //     leading: Icon(Icons.sunny),
      //     title: Text("Sun"),
      //     trailing: Icon(Icons.keyboard_arrow_right),
      //   ),
      //   ListTile(
      //     leading: Icon(Icons.brightness_3),
      //     title: Text("Moon"),
      //     trailing: Icon(Icons.keyboard_arrow_right),
      //   ),
      //   ListTile(
      //     leading: Icon(Icons.star),
      //     title: Text("Star"),
      //     trailing: Icon(Icons.keyboard_arrow_right),
      //   )
      // ],

      // BUAT NAMBAH  GAMBAR DI ICON
      // children: [
      //   ListTile(
      //     leading: CircleAvatar(
      //       backgroundImage: AssetImage("sun.jpg")
      //       ),
      //     title: Text("Sun"),
      //     trailing: Icon(Icons.keyboard_arrow_right),
      //   ),
      //   ListTile(
      //     leading: Icon(Icons.brightness_3),
      //     title: Text("Moon"),
      //     trailing: Icon(Icons.keyboard_arrow_right),
      //   ),
      //   ListTile(
      //     leading: Icon(Icons.star),
      //     title: Text("Star"),
      //     trailing: Icon(Icons.keyboard_arrow_right),
      //   )
      // ],
    );

    // body: GridView(
    //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    //     crossAxisCount: 3,
    //   ),
    //   padding: const EdgeInsets.all(10),
    //   children: [
    //     Container(
    //         width: double.infinity,
    //         height: 250,
    //         margin: const EdgeInsets.only(bottom: 10),
    //         decoration: BoxDecoration(
    //             color: Colors.red,
    //             image: DecorationImage(image: AssetImage("download-1.webp")))),
    //     Container(
    //       width: double.infinity,
    //       height: 250,
    //       margin: const EdgeInsets.only(bottom: 10),
    //       color: Colors.blue,
    //       child: const Image(image: AssetImage("images.jpeg")),
    //     ),
    //     Container(
    //         width: double.infinity,
    //         height: 250,
    //         margin: const EdgeInsets.only(bottom: 10),
    //         color: Colors.green,
    //         child: Image.network("https://picsum.photos/200")
    //     ),
    //     Container(
    //         width: double.infinity,
    //         height: 250,
    //         margin: const EdgeInsets.only(bottom: 10),
    //         color: Colors.black,
    //     ),
    //   ],
    // ),

    // body: Column(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: [
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         Container(
    //           width: 50,
    //           height: 50,
    //           margin: const EdgeInsets.all(10),
    //           color: Colors.orange,
    //         ),
    //         Container(
    //           width: 50,
    //           height: 50,
    //           margin: const EdgeInsets.all(10),
    //           color: Colors.red,
    //         ),
    //         Container(
    //           width: 50,
    //           height: 50,
    //           margin: const EdgeInsets.all(10),
    //           color: Colors.blue,
    //         ),
    //       ],
    //     ),
    //     const SizedBox(height: 20),
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         Container(
    //           width: 50,
    //           height: 50,
    //           margin: const EdgeInsets.all(10),
    //           color: Colors.purple,
    //         ),
    //         Container(
    //           width: 50,
    //           height: 50,
    //           margin: const EdgeInsets.all(10),
    //           color: Colors.green,
    //         ),
    //         Container(
    //           width: 50,
    //           height: 50,
    //           margin: const EdgeInsets.all(10),
    //           color: Colors.yellow,
    //         ),
    //       ],
    //     ),
    //   ],
    // ),
    // );
  }
}
