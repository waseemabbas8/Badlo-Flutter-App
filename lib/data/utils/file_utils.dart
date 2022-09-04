import 'dart:io';

import 'package:dio/dio.dart';

class FileUtil {
  FileUtil._();

  static Future<MultipartFile> fileToMultipartFile(File file, String field) =>
      MultipartFile.fromFile(file.path, filename: field);
}
