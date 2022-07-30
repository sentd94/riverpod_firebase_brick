import 'package:flutter/material.dart';

const bool useEmulators = true;
//on ios the local host address is 127.0.0.1, in android emulator it's 10.0.2.2
const String emulatorsLocalhostAddress = "10.0.2.2"; //"127.0.0.1";
const int emulatorsAuthenticationPort = 9099;
const int emulatorsFunctionsPort = 5001;
const int emulatorsFirestorePort = 8080;
const int emulatorsStoragePort = 9199;

const ThemeMode defaultThemeMode = ThemeMode.light;
