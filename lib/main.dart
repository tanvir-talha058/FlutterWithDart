import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Lab Test'),
      routes: {
        '/log out': (context) => const LogoutScreen(),
      },
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
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState?.openDrawer();
  }

  void _goToPage(String pageName) => Navigator.pushNamed(context, pageName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Mobile Application Design"),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: _openDrawer,
        ),
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(Icons.person_outline, color: Colors.white),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 236, 85, 20),
              ),
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.settings, color: Colors.black),
              title: const Text("Setting", style: TextStyle(color: Colors.black)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.black),
              title: const Text("Logout", style: TextStyle(color: Colors.black)),
              onTap: () {
                Navigator.pop(context);
                _goToPage('/log out');
              },
            ),
          ],
        ),
      ),
      body: Container(
        color: const Color.fromARGB(246, 252, 254, 255),
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(4),
                      color: const Color.fromARGB(255, 46, 127, 233),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(4),
                      color: const Color.fromARGB(255, 50, 233, 126),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 4),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://images.pexels.com/photos/29078770/pexels-photo-29078770/free-photo-of-hiker-in-dramatic-trentino-alto-adige-landscape.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(4),
                      color: const Color.fromARGB(255, 46, 127, 233),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(4),
                      color: const Color.fromARGB(255, 50, 233, 126),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Click',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(width: 40, height: 1, color: Colors.grey),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 8),
              width: 120,
              height: 5,
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LogoutScreen extends StatelessWidget {
  const LogoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Logout'),
      ),
      body: const Center(
        child: Text('This is the Logout Screen'),
      ),
    );
  }
}