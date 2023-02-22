import 'package:flutter/material.dart';
void main(){
  runApp(
    const MyApp()
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigoAccent,
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                  image: NetworkImage('https://www.pngitem.com/pimgs/m/595-5957085_instagram-logo-and-name-hd-png-download.png'),
                ),
                const SizedBox(
                  height: 100.0,
                ),
                const CircleAvatar(
                  radius: 60.0,
                  backgroundImage: AssetImage('images/moumen.jpg'),
                ),
                const Text(
                  'moumen_qx',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'Julee',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 45.0,
                ),
                const Card(
                  color: Colors.deepOrange,
                  margin: EdgeInsets.only(left: 25.0,right: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    title: Text(
                      'momenhamo79@gmail.com',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(bottom: 100.0),
                ),
                const Text(
                  'instagram',
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
        ),
      ),
    );
  }
}
