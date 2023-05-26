// ignore_for_file: depend_on_referenced_packages

import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart' show rootBundle;

import 'package:path_provider/path_provider.dart';

Future<String> getImageFilePathFromAssets(String asset, String filename) async {
  final byteData = await rootBundle.load(asset);

  final file =
      File('${(await getTemporaryDirectory()).path}/${asset.split('/').last}');
  await file.writeAsBytes(byteData.buffer
      .asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));

  return file.path;
}
