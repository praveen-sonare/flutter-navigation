// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_navigation/config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


import 'kuksa/config.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpClient client = await initializeClient();


  runApp(
    ProviderScope(
      child: MaterialApp(
        home: GetConfig(client: client),
      ),
    ),
  );
}



