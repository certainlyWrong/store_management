import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ReservAI'),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration:
                  BoxDecoration(color: Theme.of(context).colorScheme.tertiary),
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
      ),
      body: Column(
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
    );
  }
}
