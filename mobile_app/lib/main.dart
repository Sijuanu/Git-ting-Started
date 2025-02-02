import"package:flutter/material.dart";
import"package:url_launcher/url_launcher.dart";

final url1 = "https://github.com/Sijuanu/Git-ting-Started";
final url2 = "https://hng.tech/hire/flutter-developers";
final uri1 = Uri.parse(url1);
final uri2 = Uri.parse(url2);

void main()=> runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Git-ting_App",style: TextStyle(color: Colors.white,fontSize: 25)),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Github Repository:",style: TextStyle(fontSize: 20)),
                SizedBox(width: 55,),
                Container(
                  width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue
                    ),
                    child: TextButton(onPressed: githubRepo, child: Text("Click me",style: TextStyle(color: Colors.white,fontSize: 19),))),
              ],
            ),
            SizedBox(height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("HNG Flutter Developers Link:",style: TextStyle(fontSize: 20)),
                Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blue
                    ),
                    child: TextButton(onPressed: flutterDev, child: Text("Click me",style: TextStyle(color: Colors.white,fontSize: 19),))),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> githubRepo() async {
    if (!await launchUrl(uri1)) {
      throw Exception('Could not launch $uri1');
    }
  }
  Future<void> flutterDev() async{
    if (!await launchUrl(uri2)) {
      throw Exception('Could not launch $uri2');
    }
  }
}