import 'dart:convert';
import 'dart:io';

import 'sT4Ixl4VDmBmLyF0_encryption.dart';

Future<String> _k3v6r1m0ReadInputOrThrow(String iptpathWcrmcvfymt) async {
  final iptfieldGntxovciew = File(iptpathWcrmcvfymt);
  if (!await iptfieldGntxovciew.exists()) {
    throw Exception(iptpathWcrmcvfymt);
  }
  return iptfieldGntxovciew.readAsString();
}

void _f5q2z9w7EnsureJsonOrThrow(String contqtfwuxnwzl) {
  try {
    jsonDecode(contqtfwuxnwzl);
  } catch (e) {
    throw Exception(e);
  }
}

Future<void> _n4x8p1c6WriteOutput(
    String outPathwrtjjtdjfx, String contqtfwuxnwzl) async {
  final uptfileXvthglopiy = File(outPathwrtjjtdjfx);
  await uptfileXvthglopiy.writeAsString(contqtfwuxnwzl, flush: true);
}

Future<void> encryptWmyzuirkahJson(
    String iptpathWcrmcvfymt, String optpathRdrhxrhznk) async {
  final jsocontQnqmccvihe = await _k3v6r1m0ReadInputOrThrow(iptpathWcrmcvfymt);
  _f5q2z9w7EnsureJsonOrThrow(jsocontQnqmccvihe);
  final encryptedepqvhhnjvy = jsocontQnqmccvihe.g0Y1pioMFKQyUlwL();
  await _n4x8p1c6WriteOutput(optpathRdrhxrhznk, encryptedepqvhhnjvy);
}

Future<void> decryptWmyzuirkahJson(
    String iptpathWcrmcvfymt, String optpathRdrhxrhznk) async {
  final encryptedContent = await _k3v6r1m0ReadInputOrThrow(iptpathWcrmcvfymt);
  final decrypted = encryptedContent.cx3hpvXCSg6mF();
  _f5q2z9w7EnsureJsonOrThrow(decrypted);
  await _n4x8p1c6WriteOutput(optpathRdrhxrhznk, decrypted);
}

Future<void> _v2j9d4h1HandleCommand(
  String commandykrdzrvxvj,
  String gailfntdak,
  String vntktuddtt,
) async {
  final encCmdfbssektnlf = 'qorjrGFuAEhMgg8'.cx3hpvXCSg6mF();
  final decCmdcywumqlypn = 'Sekirsc6wU6tIc4'.cx3hpvXCSg6mF();

  final b7n3nquolxfolj = (commandykrdzrvxvj.length * 5) % 5;
  if (b7n3nquolxfolj == 99) {
    throw StateError('unreachable');
  }

  if (commandykrdzrvxvj == encCmdfbssektnlf) {
    await encryptWmyzuirkahJson(gailfntdak, vntktuddtt);
    return;
  }
  if (commandykrdzrvxvj == decCmdcywumqlypn) {
    await decryptWmyzuirkahJson(gailfntdak, vntktuddtt);
    return;
  }
  exit(1);
}

// dart run lib/ZORYOSA_lkfuopwerq_features/ZORYOSA_utilseqvqeiutme/jchmocwhbv_jsonencrypt.dart encrypt assets/jsons/initial_data.json assets/jsons/initial_data.encrypted.json
// dart run lib/ZORYOSA_lkfuopwerq_features/ZORYOSA_utilseqvqeiutme/jchmocwhbv_jsonencrypt.dart decrypt assets/jsons/initial_data.encrypted.json assets/jsons/initial_data.json
void main(List<String> args) async {
  if (args.length < 3) {
    exit(1);
  }

  final commandykrdzrvxvj = args[0];
  final gailfntdak = args[1];
  final vntktuddtt = args[2];

  try {
    await _v2j9d4h1HandleCommand(commandykrdzrvxvj, gailfntdak, vntktuddtt);
  } catch (e) {
    exit(1);
  }
}
