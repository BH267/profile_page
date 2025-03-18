import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 178,
                    width: 128,
                    decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Image(
                      image: AssetImage("Asset/images/doctor_image.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(width: 34),
                  Column(
                    children: [
                      Text("Dr. hiya", style: TextStyle(fontSize: 34)),
                      Text(
                        "Heart Specialist",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[700],
                        ),
                      ),
                      SizedBox(height: 12),
                      Row(
                        children: [
                          CostomIconStyle(icon: Icons.mail),
                          SizedBox(width: 8),
                          CostomIconStyle(icon: Icons.phone),
                          SizedBox(width: 8),
                          CostomIconStyle(icon: Icons.video_call),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 32),
              Text(
                "About",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 8),
              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
              ),
              SizedBox(height: 64),
              Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [],
                      ),
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image(
                      image: AssetImage("Asset/images/map_image.JPG"),
                      height: 200,
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CostomIconStyle extends StatelessWidget {
  const CostomIconStyle({super.key, required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 48,
      decoration: BoxDecoration(
        color: Colors.deepOrange[50],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Icon(icon, color: Colors.orangeAccent, size: 32),
    );
  }
}
