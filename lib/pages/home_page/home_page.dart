import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

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
      width: 250,
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
      child: ListView(
        children: [
          // CachedNetworkImage(
          //   imageUrl:
          //       'https://hdqwalls.com/wallpapers/spiderman-miles-lost-in-space-4k-0f.jpg',
          //   progressIndicatorBuilder: (context, url, progress) => Center(
          //     child: CircularProgressIndicator(
          //       value: progress.progress,
          //     ),
          //   ),
          // ),
          // Image.network(
          //     'https://hdqwalls.com/wallpapers/spiderman-miles-lost-in-space-4k-0f.jpg'),
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
              Navigator.pushNamed(context, '/login');
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
      drawer: drawer,
      context: context,
    );
  }
}
