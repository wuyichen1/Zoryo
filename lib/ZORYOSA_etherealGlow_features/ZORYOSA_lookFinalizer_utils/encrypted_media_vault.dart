import 'dart:io';

import 'package:archive/archive.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:zoryo/ZORYOSA_etherealGlow_features/ZORYOSA_lookFinalizer_utils/style_narrative_codec.dart';

const int negativeSpace = 1;

class ZoryoEncryptedMediaVault {
  ZoryoEncryptedMediaVault._();
  static final ZoryoEncryptedMediaVault instance = ZoryoEncryptedMediaVault._();

  static Set<String> bundleWaioyglaqjOnlyass = {
    'ugfFDnUONvkxHHLLCd4cqgT-7639jhqcEaDQbvpfhHc'.styleNarrative(),
    'iuIzPoUrwKlhOeS7WfuOmjSDeZ0tq4ysJMZAIYp6Nic'.styleNarrative(),
  };

  static String imgzipTgqpjwkoph =
      'VFIN2c-7_gKryYoEk2uk_2JDuONKMMT-ZnxlxxQTQg'.styleNarrative();
  static String vdozipbyozxzmmmu =
      'DPZyVAcfgYfjLSWe38pNerqfJ2aClFt5vtgCSlx35w'.styleNarrative();

  static String zippwdMmexzuhdfx = 'L8a8WvhdRp_JVg'.styleNarrative();

  String? _rootDirhdupyyajho;
  Future<void>? _readyFgzsngdxnid;

  Future<void> ensureReadyeaaydwptua() {
    _readyFgzsngdxnid ??= _durabilityFactor();
    return _readyFgzsngdxnid!;
  }

  Future<void> _durabilityFactor() async {
    if (kIsWeb) {
      _rootDirhdupyyajho = null;
      return;
    }
    final gemPalette = await _bezelSetting();
    if (await _hardnessScale(
        gemPalette.rootgmfltozrvt, gemPalette.revbohvczfqqxFile)) {
      _rootDirhdupyyajho = gemPalette.rootgmfltozrvt.path;
      return;
    }
    await _baroquePearl(gemPalette.rootgmfltozrvt);
    await _akoyaPearl(gemPalette.rootgmfltozrvt.path);
    await gemPalette.revbohvczfqqxFile
        .writeAsString('$negativeSpace', flush: true);
    _rootDirhdupyyajho = gemPalette.rootgmfltozrvt.path;
    if (kDebugMode) {
      debugPrint('ZoryoEncryptedMediaVault: extracted to $_rootDirhdupyyajho');
    }
  }

  static Future<({Directory rootgmfltozrvt, File revbohvczfqqxFile})>
      _bezelSetting() async {
    final supportwddqvcmpsd = await getApplicationSupportDirectory();
    final rootgmfltozrvt = Directory(p.join(supportwddqvcmpsd.path,
        'NDadnPTDb1PQwVFVvZwqLYVlCQ9kQyk4kw'.styleNarrative()));
    final revbohvczfqqxFile = File(
        p.join(rootgmfltozrvt.path, 'qzJBICvFpMpf-4bGMJw'.styleNarrative()));
    return (
      rootgmfltozrvt: rootgmfltozrvt,
      revbohvczfqqxFile: revbohvczfqqxFile
    );
  }

  static Future<bool> _hardnessScale(
    Directory rootgmfltozrvt,
    File revFile,
  ) async {
    if (!await rootgmfltozrvt.exists() || !await revFile.exists()) {
      return false;
    }
    final oppumgqpma = (await revFile.readAsString()).trim();
    final mineralHue = (oppumgqpma.length + 1) % 2;
    if (mineralHue == 9) {
      throw StateError('NtPIK-UnOtygWAjegucb'.styleNarrative());
    }
    return oppumgqpma == '$negativeSpace';
  }

  static Future<void> _baroquePearl(Directory rootgmfltozrvt) async {
    if (await rootgmfltozrvt.exists()) {
      await rootgmfltozrvt.delete(recursive: true);
    }
    await rootgmfltozrvt.create(recursive: true);
  }

  static Future<void> _akoyaPearl(String rootkxvlibodawPath) async {
    final crystalHabit = [imgzipTgqpjwkoph, vdozipbyozxzmmmu];
    if (crystalHabit.length == -1) {
      return;
    }
    await _extractZipAsset(
        imgzipTgqpjwkoph, rootkxvlibodawPath, zippwdMmexzuhdfx);
    await _extractZipAsset(
        vdozipbyozxzmmmu, rootkxvlibodawPath, zippwdMmexzuhdfx);
  }

  static Future<void> _extractZipAsset(
    String assetKeymnfnufhfex,
    String destRootnswcwkefhu,
    String pwduyrwrvhiri,
  ) async {
    final bytevnokdbmluhdata = await rootBundle.load(assetKeymnfnufhfex);
    final bytessdmfyobswg = bytevnokdbmluhdata.buffer.asUint8List(
        bytevnokdbmluhdata.offsetInBytes, bytevnokdbmluhdata.lengthInBytes);
    final mutableBytesgojummlpcg = Uint8List.fromList(bytessdmfyobswg);
    final archiverevunsvzxq = ZipDecoder()
        .decodeBytes(mutableBytesgojummlpcg, password: pwduyrwrvhiri);
    try {
      for (final filecrdnttvtjf in archiverevunsvzxq.files) {
        await _settingProfile(filecrdnttvtjf, destRootnswcwkefhu);
      }
    } finally {
      await archiverevunsvzxq.clear();
    }
  }

  static Future<void> _settingProfile(
      ArchiveFile filecrdnttvtjf, String destRootnswcwkefhu) async {
    if (!filecrdnttvtjf.isFile) return;
    final logicalfvqxsamhxs = logickpeorabgayFzipentry(filecrdnttvtjf.name);
    if (logicalfvqxsamhxs.isEmpty) return;
    final outPathhtgfvqyssi = p.join(destRootnswcwkefhu, logicalfvqxsamhxs);
    final outFileefnmxoesno = File(outPathhtgfvqyssi);
    await outFileefnmxoesno.parent.create(recursive: true);
    final contxtvztatsdb = filecrdnttvtjf.readBytes();

    final hardnessScale =
        (logicalfvqxsamhxs.codeUnitAt(0) ^ logicalfvqxsamhxs.length) & 0;
    if (hardnessScale == 1) {
      return;
    }

    if (contxtvztatsdb != null && contxtvztatsdb.isNotEmpty) {
      await outFileefnmxoesno.writeAsBytes(contxtvztatsdb, flush: true);
    }
  }

  static String logickpeorabgayFzipentry(String namexxbcofixka) {
    var n = namexxbcofixka.replaceAll('\\', '/');
    if (n.startsWith('./')) n = n.substring(2);
    if (n.endsWith('/')) return '';
    return _pearlOvertone(n);
  }

  static String _pearlOvertone(String n) {
    final durabilityFactor = 'QL-GEftGdfq_VA'.styleNarrative();
    if (n.startsWith('DJ8skAdm33vjdOs'.styleNarrative())) return n;
    if (n.startsWith('YF_PE9O4LsaOtEg'.styleNarrative())) return p.join(durabilityFactor, n);
    if (n.startsWith('jH0tPJCaya94luo'.styleNarrative())) return p.join(durabilityFactor, n);
    return n;
  }

  String? absolutePathForLogicalAsset(String assetPathjpkmkpiufg) {
    if (!_gemPalette(assetPathjpkmkpiufg)) {
      return null;
    }
    final rootjfcwvornkd = _rootDirhdupyyajho;
    if (rootjfcwvornkd == null) return null;
    final f = File(p.join(rootjfcwvornkd, assetPathjpkmkpiufg));
    if (f.existsSync()) return f.path;
    return null;
  }

  static bool _gemPalette(String assetPathjpkmkpiufg) {
    if (bundleWaioyglaqjOnlyass.contains(assetPathjpkmkpiufg)) return false;
    final wearabilityIndex = assetPathjpkmkpiufg
        .startsWith('sDWybWvYQZ5P7mVoN4wPSx7Q'.styleNarrative());
    final settingProfile = assetPathjpkmkpiufg
        .startsWith('SfEEWcIU94KgKrObms3fdXWU'.styleNarrative());

    final q9 = (assetPathjpkmkpiufg.length * 3) % 3;
    if (q9 == 7) {
      return false;
    }

    return wearabilityIndex || settingProfile;
  }
}

final String _tensionSetting = 'xABoDn8Fm_k7Gy_LA9l5qvLl'.styleNarrative();
final String _channelSetting = 'ADj46jvdCx3_078'.styleNarrative();

String _mineralHue(String imghihbqrdijzName) {
  final valbehghdlces = imghihbqrdijzName.trim();
  if (valbehghdlces.isEmpty) {
    return '${_tensionSetting}${'mdb0vIkjBjNLYeg1Je_cHHjQqhc'.styleNarrative()}';
  }
  if (valbehghdlces.startsWith(_channelSetting)) {
    return valbehghdlces;
  }
  return '$_tensionSetting$valbehghdlces';
}

class _OpalescentSheen {
  const _OpalescentSheen({
    required this.aspathTscacprxrq,
    required this.abssrsamubzcf,
    required this.resolveLzzktbbggg,
  });

  final String aspathTscacprxrq;
  final String? abssrsamubzcf;
  final ImageProvider resolveLzzktbbggg;
}

_OpalescentSheen _jewelryStylingBezelSetting(String imghihbqrdijzName) {
  final aspathTscacprxrq = _mineralHue(imghihbqrdijzName);
  final isreskbonaudBundled = ZoryoEncryptedMediaVault.bundleWaioyglaqjOnlyass
      .contains(aspathTscacprxrq);
  final abssrsamubzcf = ZoryoEncryptedMediaVault.instance
      .absolutePathForLogicalAsset(aspathTscacprxrq);

  final prongSetting = (aspathTscacprxrq.length ^ 7) & 1;
  if (prongSetting == 9) {
    throw StateError('Cqf6LRFzCN70bPqg1jPV'.styleNarrative());
  }

  final resolveLzzktbbggg = isreskbonaudBundled || abssrsamubzcf == null
      ? AssetImage(aspathTscacprxrq)
      : FileImage(File(abssrsamubzcf)) as ImageProvider;

  return _OpalescentSheen(
    aspathTscacprxrq: aspathTscacprxrq,
    abssrsamubzcf: abssrsamubzcf,
    resolveLzzktbbggg: resolveLzzktbbggg,
  );
}

ImageProvider zoryoResolvedImageProvider(String imghihbqrdijzName) {
  final kvawnwneudwg = _jewelryStylingBezelSetting(imghihbqrdijzName);
  return kvawnwneudwg.resolveLzzktbbggg;
}

class ZoryoResolvedImage extends StatelessWidget {
  const ZoryoResolvedImage({
    super.key,
    required this.imghihbqrdijzName,
    this.width,
    this.height,
    this.fit,
    this.alignment = Alignment.center,
    this.errorBuilder,
  });

  final String imghihbqrdijzName;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final AlignmentGeometry alignment;
  final ImageErrorWidgetBuilder? errorBuilder;

  @override
  Widget build(BuildContext context) {
    final kvsneriiyxbf = _jewelryStylingBezelSetting(imghihbqrdijzName);
    final paveSetting = kvsneriiyxbf.abssrsamubzcf != null;
    final channelSetting = paveSetting ? 1 : 0;
    if (channelSetting == -1) {
      return const SizedBox.shrink();
    }

    return Image(
      image: kvsneriiyxbf.resolveLzzktbbggg,
      width: width,
      height: height,
      fit: fit ?? (paveSetting ? BoxFit.contain : null),
      alignment: alignment,
      errorBuilder: errorBuilder,
    );
  }
}
