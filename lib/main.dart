import 'package:flutter/material.dart';
import 'package:movas/config/config.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_demo/movas/ui/calendar/calendar_screen.dart';
import 'package:syncfusion_demo/movas/provider/providers.dart';

import 'movas/router/router.dart';

void main() {
  moveAss(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp(
        title: 'MOVAS Calendar',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: router.initialRoute,
        routes: router.calculateAllRoutes,
      ),
    );
  }
}