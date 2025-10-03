import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GridView Avatares',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const CriaGridAvatar(),
    );
  }
}

class CriaGridAvatar extends StatelessWidget {
  const CriaGridAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    final faker = Faker();
    final List<Map<String, String>> data = List.generate(
      6,
      (index) => {
        "name": faker.person.name(),
        "image": "https://picsum.photos/200?random=$index",
      },
    );

    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.white),
        title: Text(
          "Responsáveis",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      body: GridView.builder(
        itemCount: data.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // número de colunas
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 2 / 2, // proporção do card
        ),
        itemBuilder: (context, index) {
          final item = data[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsetsGeometry.all(10),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(item["image"]!),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  item["name"]!,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
          // return Container(
          //   color: Colors.white,
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       CircleAvatar(
          //         radius: 50,
          //         backgroundImage: NetworkImage(item["image"]!),
          //       ),
          //       const SizedBox(height: 10),
          //       Text(
          //         item["name"]!,
          //         style: const TextStyle(
          //           fontSize: 16,
          //           fontWeight: FontWeight.w500,
          //         ),
          //         textAlign: TextAlign.center,
          //       ),
          //     ],
          //   ),
          // );
        },
      ),
    );
  }
}
