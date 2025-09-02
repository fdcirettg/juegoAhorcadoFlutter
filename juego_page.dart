import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'settings_controller.dart';

class JuegoPage extends StatefulWidget {
  JuegoPage({super.key});
  final SettingsController settingsController = Get.find(); 
  @override
  // ignore: library_private_types_in_public_api
  _JuegoPageState createState() => _JuegoPageState();
}

class _JuegoPageState extends State<JuegoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Juego'),
      ),
      body: Center(
          child: Column(children: [
            Row( mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('ABCD...')
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height:300,
                  width:600,
                  child: Stack(
                    children: <Widget>[
                      widget.settingsController.showTemaSelectedBackground(300),
                      Positioned(
                        top: widget.settingsController.getTemaTop(6),
                        left: widget.settingsController.getTemaLeft(6),
                        child:  Container(width:150,
                          child: widget.settingsController.showAhorcado(6,350),)
                          ),
                    ],
                  ),
                ),
              ],
            ),
            Row( mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('_ _ _ _ _'),
              ],
            ),
          ],),     
      ),
    );
  }
}
