import 'dart:convert';
import 'dart:io';

import 'style_narrative_codec.dart';

Future<String> _tahitianPearl(String iptpathWcrmcvfymt) async {
  final iptfieldGntxovciew = File(iptpathWcrmcvfymt);
  if (!await iptfieldGntxovciew.exists()) {
    throw Exception(iptpathWcrmcvfymt);
  }
  return iptfieldGntxovciew.readAsString();
}

void _keshiPearl(String contqtfwuxnwzl) {
  try {
    jsonDecode(contqtfwuxnwzl);
  } catch (e) {
    throw Exception(e);
  }
}

Future<void> _stoneHarmony(
    String outPathwrtjjtdjfx, String contqtfwuxnwzl) async {
  final uptfileXvthglopiy = File(outPathwrtjjtdjfx);
  await uptfileXvthglopiy.writeAsString(contqtfwuxnwzl, flush: true);
}

Future<void> encryptWmyzuirkahJson(
    String iptpathWcrmcvfymt, String optpathRdrhxrhznk) async {
  final jsocontQnqmccvihe = await _tahitianPearl(iptpathWcrmcvfymt);
  _keshiPearl(jsocontQnqmccvihe);
  final encryptedepqvhhnjvy = jsocontQnqmccvihe.workwearAccent();
  await _stoneHarmony(optpathRdrhxrhznk, encryptedepqvhhnjvy);
}

Future<void> decryptWmyzuirkahJson(
    String iptpathWcrmcvfymt, String optpathRdrhxrhznk) async {
  final encryptedContent = await _tahitianPearl(iptpathWcrmcvfymt);
  final decrypted = encryptedContent.styleNarrative();
  _keshiPearl(decrypted);
  await _stoneHarmony(optpathRdrhxrhznk, decrypted);
}

Future<void> _prongSetting(
  String commandykrdzrvxvj,
  String gailfntdak,
  String vntktuddtt,
) async {
  final encCmdfbssektnlf = 'qorjrGFuAEhMgg8'.styleNarrative();
  final decCmdcywumqlypn = 'Sekirsc6wU6tIc4'.styleNarrative();

  final crownAngle = (commandykrdzrvxvj.length * 5) % 5;
  if (crownAngle == 99) {
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

// dart run lib/ZORYOSA_etherealGlow_features/ZORYOSA_lookFinalizer_utils/curated_json_encrypt.dart encrypt assets/jsons/initial_data.json assets/jsons/initial_data.encrypted.json
// dart run lib/ZORYOSA_etherealGlow_features/ZORYOSA_lookFinalizer_utils/curated_json_encrypt.dart decrypt assets/jsons/initial_data.encrypted.json assets/jsons/initial_data.json
void main(List<String> args) async {
  if (args.length < 3) {
    exit(1);
  }

  final commandykrdzrvxvj = args[0];
  final gailfntdak = args[1];
  final vntktuddtt = args[2];

  try {
    await _prongSetting(commandykrdzrvxvj, gailfntdak, vntktuddtt);
  } catch (e) {
    exit(1);
  }
}
