import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:hello_world/facebook_ui/facebook_ui.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (_) => MyApp(),
      enabled: !kReleaseMode,
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(
    BuildContext context,
  ) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      home: const FacebookUi(),
      theme: ThemeData(
        fontFamily: 'Nunito',
      ),
    );
  }
}
