import 'package:flutter/material.dart';
import 'package:pumba/card_widget.dart';
import 'package:pumba/data.dart';

final Color mainYellow = Color(0xFFFFB02F);
final Color primaryGray = Color(0xFF313131);
final Color secondaryGray = Color(0xFF1C1C1C);
final Color lightGray = Color(0xFF3B3B3B);

void main() {
  runApp(MaterialApp(
    initialRoute: '/main',
    routes: {
      '/main': (context) => const MainPage(),
    },
    debugShowCheckedModeBanner: false,
  ));
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          "Select Your Country",
          style: TextStyle(
            fontSize: 22,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            child: TextField(
              cursorColor: Colors.pink,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 235, 235, 235),
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.pink,
                    )),
                hintText: 'Search',
                focusColor: Colors.pink,
              ),
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                ListView.builder(
                  itemCount: allData.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: CardWidget(country: allData[index]),
                    );
                  },
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('Continue'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pink,
                          shape: StadiumBorder(),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
