import 'dart:io';
import 'package:string_capitalize/string_capitalize.dart';

void main() {
  print('Type your name?');

  final name = stdin.readLineSync() ?? '';

  print(name.capitalizeOrFail());
}
