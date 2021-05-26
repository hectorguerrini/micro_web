import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:micro_web/home_repository.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var controller = HomeController(repository: HomeRepository());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 1000),
          child: Column(
            children: [
              Container(
                child: Card(
                  child: Observer(builder: (_) {
                    if (controller.log == null) {
                      return Center(child: CircularProgressIndicator());
                    }
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Data e Hora: ${controller.log!.dateTime.toString()}',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Center(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Temperatura: ${controller.log!.dht.temperatura}ºC',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      Text(
                                        'Umidade: ${controller.log!.dht.umidade}%',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      Text(
                                        'Luminosidade: ${controller.log!.ldr.getPercentLuminosidade}%',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Center(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Ar-Condicionado',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16)),
                                      Text(
                                        'Estado: ${controller.log!.ac.estado}',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      Text(
                                        'Automático: ${controller.log!.ac.controleAutomatico}',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Center(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Lâmpada',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16)),
                                      Text(
                                        'Estado: ${controller.log!.lampada.estado}',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      Text(
                                        'Automático: ${controller.log!.lampada.controleAutomatico}',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  }),
                ),
              ),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 4,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 1.5,
                children: [
                  Container(
                    child: TextButton.icon(
                      style: TextButton.styleFrom(primary: Colors.green),
                      icon: Icon(Icons.power_settings_new, size: 72),
                      label: Text('Ligar Lampada'),
                      onPressed: () => controller.buttomLampada(false, true),
                    ),
                  ),
                  Container(
                    child: TextButton.icon(
                      style: TextButton.styleFrom(primary: Colors.red),
                      icon: Icon(Icons.power_settings_new, size: 72),
                      label: Text('Desligar Lampada'),
                      onPressed: () => controller.buttomLampada(false, false),
                    ),
                  ),
                  Container(
                    child: TextButton.icon(
                      style: TextButton.styleFrom(primary: Colors.white),
                      icon: Icon(Icons.power_settings_new, size: 72),
                      label: Text('Toggle Lampada'),
                      onPressed: () => controller.buttomLampada(true, false),
                    ),
                  ),
                  Container(
                    child: Observer(builder: (_) {
                      if (controller.flags == null) {
                        return CircularProgressIndicator();
                      }

                      return TextButton.icon(
                        style: TextButton.styleFrom(
                            primary: controller.flags!.lampada == 1
                                ? Colors.green
                                : Colors.red),
                        icon: Icon(Icons.power_settings_new, size: 72),
                        label: Text('Lampada Automatica'),
                        onPressed: controller.changeStatusLampadaAutomatico,
                      );
                    }),
                  ),
                  Container(
                    child: TextButton.icon(
                      style: TextButton.styleFrom(primary: Colors.green),
                      icon: Icon(Icons.ac_unit_rounded, size: 72),
                      label: Text('Ligar Ar-Condicionado'),
                      onPressed: () => controller.buttomAC(false, true),
                    ),
                  ),
                  Container(
                    child: TextButton.icon(
                      style: TextButton.styleFrom(primary: Colors.red),
                      icon: Icon(Icons.ac_unit_rounded, size: 72),
                      label: Text('Desligar Ar-Condicionado'),
                      onPressed: () => controller.buttomAC(false, false),
                    ),
                  ),
                  Container(
                    child: TextButton.icon(
                      style: TextButton.styleFrom(primary: Colors.white),
                      icon: Icon(Icons.ac_unit_rounded, size: 72),
                      label: Text('Toggle Ar-Condicionado'),
                      onPressed: () => controller.buttomAC(true, false),
                    ),
                  ),
                  Container(
                    child: Observer(builder: (_) {
                      if (controller.flags == null) {
                        return CircularProgressIndicator();
                      }

                      return TextButton.icon(
                        style: TextButton.styleFrom(
                            primary: controller.flags!.arcondicionado == 1
                                ? Colors.green
                                : Colors.red),
                        icon: Icon(Icons.power_settings_new, size: 72),
                        label: Text('AC Automatico'),
                        onPressed: controller.changeStatusACAutomatico,
                      );
                    }),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
