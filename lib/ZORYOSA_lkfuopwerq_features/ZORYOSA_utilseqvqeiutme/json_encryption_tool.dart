import 'dart:convert';
import 'dart:io';

import 'sT4Ixl4VDmBmLyF0_encryption.dart';

void main(List<String> args) async {
  if (args.length < 3) {
    print('用法:');
    // dart run lib/features/utils/json_encryption_tool.dart encrypt assets/jsons/initial_data.json assets/jsons/initial_data.encrypted.json
    // dart run lib/features/utils/json_encryption_tool.dart decrypt assets/jsons/initial_data.encrypted.json assets/jsons/initial_data.json
    print(
        '  加密: dart run lib/features/utils/json_encryption_tool.dart encrypt <输入文件> <输出文件>');
    print(
        '  解密: dart run lib/features/utils/json_encryption_tool.dart decrypt <输入文件> <输出文件>');
    exit(1);
  }

  final command = args[0];
  final inputFile = args[1];
  final outputFile = args[2];

  try {
    if (command == 'encrypt') {
      await encryptJsonFile(inputFile, outputFile);
      print('✅ 加密完成: $inputFile -> $outputFile');
    } else if (command == 'decrypt') {
      await decryptJsonFile(inputFile, outputFile);
      print('✅ 解密完成: $inputFile -> $outputFile');
    } else {
      print('❌ 未知命令: $command');
      exit(1);
    }
  } catch (e) {
    print('❌ 错误: $e');
    exit(1);
  }
}

/// 加密 JSON 文件
Future<void> encryptJsonFile(String inputPath, String outputPath) async {
  final inputFile = File(inputPath);
  if (!await inputFile.exists()) {
    throw Exception('输入文件不存在: $inputPath');
  }

  final jsonContent = await inputFile.readAsString();

  try {
    jsonDecode(jsonContent);
  } catch (e) {
    throw Exception('输入文件不是有效的 JSON: $e');
  }

  // 加密
  final encrypted = jsonContent.g0Y1pioMFKQyUlwL();

  final outputFile = File(outputPath);
  await outputFile.writeAsString(encrypted, flush: true);
}

/// 解密 JSON 文件
Future<void> decryptJsonFile(String inputPath, String outputPath) async {
  final inputFile = File(inputPath);
  if (!await inputFile.exists()) {
    throw Exception('输入文件不存在: $inputPath');
  }

  final encryptedContent = await inputFile.readAsString();
  // 解密
  final decrypted = encryptedContent.cx3hpvXCSg6mF();

  try {
    jsonDecode(decrypted);
  } catch (e) {
    throw Exception('解密后的内容不是有效的 JSON: $e');
  }

  final outputFile = File(outputPath);
  await outputFile.writeAsString(decrypted, flush: true);
}
