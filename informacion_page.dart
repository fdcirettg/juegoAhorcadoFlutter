import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class InformacionPage extends StatelessWidget {
    const InformacionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Información'),
      ),
      body: Center(
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, 
            crossAxisAlignment: CrossAxisAlignment.start, 
                    children: [
                Text('About', style: Theme.of(context).textTheme.displayLarge),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column( 
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('./../assets/dart_vader_16bit.png',
                     width:100,),
                  ]
                ),
                Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Darth Vader', style: Theme.of(context).textTheme.headlineMedium,),
                      Text('Lord of the Sith'),
                  ],
              ),
              ],
          ),
        ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
              child: const Text('Menú'),
            ),
            ListTile(
              title: const Text('Inicio'),
              onTap: () {
                context.go('/');
              },
            ),
            ListTile(
              title: const Text('Juego'),
              onTap: () {
                context.go('/juego');
              },
            ),
            ListTile(
              title: const Text('Configuración'),
              onTap: () {
                context.go('/configuracion');
              },
            ),
            ListTile(
              title: const Text('Información'),
              onTap: () {
                context.go('/informacion');
              }),
          ],
        ),
      ),
    );
  }
}
