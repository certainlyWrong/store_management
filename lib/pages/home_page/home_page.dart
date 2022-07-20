import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final AppBar _appBar = AppBar(
    title: const Center(
      child: Text('ReservAI'),
    ),
  );

  Widget responsiveLayout({
    required Widget child,
    required Drawer drawer,
    required BuildContext context,
  }) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 700) {
        return Scaffold(
          appBar: _appBar,
          drawer: drawer,
          body: child,
        );
      } else {
        return Scaffold(
          appBar: _appBar,
          body: Row(
            children: [
              drawer,
              Expanded(
                child: child,
              ),
            ],
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Drawer drawer = Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
                color: Theme.of(context).appBarTheme.backgroundColor),
            child: const Text(
              'ReservAI',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            title: const Text('Reservar'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Histórico'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Sobre'),
            onTap: () {},
          ),
        ],
      ),
    );

    return responsiveLayout(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              shadowColor: Theme.of(context).shadowColor,
              child: const ListTile(
                title: Text('ReservAI'),
                subtitle: Text('ReservAI'),
              ),
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, '/splash');
              Future.delayed(const Duration(seconds: 2), () {
                Navigator.pop(context);
              });
            },
            child: const Icon(Icons.add),
          ),
          const Text('Home Page'),
        ],
      ),
      drawer: drawer,
      context: context,
    );
  }
}
