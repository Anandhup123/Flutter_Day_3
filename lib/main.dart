import 'package:flutter/material.dart';
import 'package:flutter2/page2.dart';
import 'package:flutter2/page3.dart';

main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'page2': (context) {
          return page2();
        },
        'page3': (context) => page3()
      },
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
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          SizedBox(
            width: 10,
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.account_circle_sharp))
        ],
        title: Center(
            child: Title(color: Colors.white, child: Text("Music Media"))),
        backgroundColor: Colors.amber,
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Card(
                  elevation: 20,
                  color: Colors.blue[100],
                  shadowColor: Colors.blue,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const ListTile(
                        leading: Icon(Icons.album),
                        title: Text('The Enchanted Nightingale'),
                        subtitle: Text(
                            'Music by Julie Gable. Lyrics by Sidney Stein.'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            child: const Text('BUY TICKETS'),
                            onPressed: () {},
                          ),
                          const SizedBox(width: 8),
                          TextButton(
                            child: const Text('LISTEN'),
                            onPressed: () {},
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Card(
                  elevation: 20,
                  color: Colors.blue[100],
                  shadowColor: Colors.blue,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const ListTile(
                        leading: Icon(Icons.album),
                        title: Text('I Dont wanna Go'),
                        subtitle: Text(
                            'Music by Alan Walker. Lyrics by julie Bergan.'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            child: const Text('BUY TICKETS'),
                            onPressed: () {},
                          ),
                          const SizedBox(width: 8),
                          TextButton(
                            child: const Text('LISTEN'),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Row(
                  children: [
                    Card(
                      color: Colors.amberAccent[100],
                      elevation: 10,
                      shadowColor: Colors.amberAccent[100],
                      child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Text("malayalam"),
                              Text("Songs"),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.amberAccent[100],
                      elevation: 10,
                      shadowColor: Colors.amberAccent[100],
                      margin: EdgeInsets.only(
                        left: 10,
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 30),
                          child: Column(
                            children: [
                              Text("Telugu"),
                              Text("Songs"),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.amberAccent[100],
                      elevation: 10,
                      shadowColor: Colors.amberAccent[100],
                      margin: EdgeInsets.only(
                        left: 10,
                      ),
                      child: InkWell(
                        splashColor: const Color.fromARGB(255, 32, 24, 0),
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 40),
                          child: Column(
                            children: [
                              Text("Hindi"),
                              Text("Songs"),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Card(
                  color: Colors.green[100],
                  elevation: 10,
                  shadowColor: Colors.green[100],
                  child: InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 40),
                      child: Column(
                        children: [
                          Text("Explore with More songs & Musics with us....!"),
                          TextButton.icon(
                            onPressed: () {
                              Navigator.of(context).pushNamed('page2');
                            },
                            icon: Icon(
                              Icons.music_note_sharp,
                            ),
                            label: Text("Explore More"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
