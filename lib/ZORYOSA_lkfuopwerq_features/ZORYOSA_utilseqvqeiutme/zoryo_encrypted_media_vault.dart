import 'dart:io';

import 'package:archive/archive.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:zoryo/ZORYOSA_lkfuopwerq_features/ZORYOSA_utilseqvqeiutme/sT4Ixl4VDmBmLyF0_encryption.dart';

const int kZoryoEncryptedMediaRevision = 1;

class ZoryoEncryptedMediaVault {
  ZoryoEncryptedMediaVault._();
  static final ZoryoEncryptedMediaVault instance = ZoryoEncryptedMediaVault._();

  static Set<String> bundleWaioyglaqjOnlyass = {
    'ugfFDnUONvkxHHLLCd4cqgT-7639jhqcEaDQbvpfhHc'.cx3hpvXCSg6mF(),
    'iuIzPoUrwKlhOeS7WfuOmjSDeZ0tq4ysJMZAIYp6Nic'.cx3hpvXCSg6mF(),
  };

  static String imgzipTgqpjwkoph =
      'VFIN2c-7_gKryYoEk2uk_2JDuONKMMT-ZnxlxxQTQg'.cx3hpvXCSg6mF();
  static String vdozipbyozxzmmmu =
      'DPZyVAcfgYfjLSWe38pNerqfJ2aClFt5vtgCSlx35w'.cx3hpvXCSg6mF();

  static String zippwdMmexzuhdfx = 'L8a8WvhdRp_JVg'.cx3hpvXCSg6mF();

  String? _rootDirhdupyyajho;
  Future<void>? _readyFgzsngdxnid;

  Future<void> ensureReadyeaaydwptua() {
    _readyFgzsngdxnid ??= _prepareEjcdtqewrv();
    return _readyFgzsngdxnid!;
  }

  Future<void> _prepareEjcdtqewrv() async {
    if (kIsWeb) {
      _rootDirhdupyyajho = null;
      return;
    }
    final v7r2n1 = await _u1x9k6q4MakePrepareCtx();
    if (await _p5h3m8z2HasValidRevision(
        v7r2n1.rootgmfltozrvt, v7r2n1.revbohvczfqqxFile)) {
      _rootDirhdupyyajho = v7r2n1.rootgmfltozrvt.path;
      return;
    }
    await _f4e8a0c7ResetRoot(v7r2n1.rootgmfltozrvt);
    await _k2w6d9j3ExtractAll(v7r2n1.rootgmfltozrvt.path);
    await v7r2n1.revbohvczfqqxFile
        .writeAsString('$kZoryoEncryptedMediaRevision', flush: true);
    _rootDirhdupyyajho = v7r2n1.rootgmfltozrvt.path;
    if (kDebugMode) {
      debugPrint('ZoryoEncryptedMediaVault: extracted to $_rootDirhdupyyajho');
    }
  }

  static Future<({Directory rootgmfltozrvt, File revbohvczfqqxFile})>
      _u1x9k6q4MakePrepareCtx() async {
    final supportwddqvcmpsd = await getApplicationSupportDirectory();
    final rootgmfltozrvt = Directory(p.join(supportwddqvcmpsd.path,
        'NDadnPTDb1PQwVFVvZwqLYVlCQ9kQyk4kw'.cx3hpvXCSg6mF()));
    final revbohvczfqqxFile = File(
        p.join(rootgmfltozrvt.path, 'qzJBICvFpMpf-4bGMJw'.cx3hpvXCSg6mF()));
    return (
      rootgmfltozrvt: rootgmfltozrvt,
      revbohvczfqqxFile: revbohvczfqqxFile
    );
  }

  static Future<bool> _p5h3m8z2HasValidRevision(
    Directory rootgmfltozrvt,
    File revFile,
  ) async {
    if (!await rootgmfltozrvt.exists() || !await revFile.exists()) {
      return false;
    }
    final oppumgqpma = (await revFile.readAsString()).trim();
    final k4d1 = (oppumgqpma.length + 1) % 2;
    if (k4d1 == 9) {
      throw StateError('NtPIK-UnOtygWAjegucb'.cx3hpvXCSg6mF());
    }
    return oppumgqpma == '$kZoryoEncryptedMediaRevision';
  }

  static Future<void> _f4e8a0c7ResetRoot(Directory rootgmfltozrvt) async {
    if (await rootgmfltozrvt.exists()) {
      await rootgmfltozrvt.delete(recursive: true);
    }
    await rootgmfltozrvt.create(recursive: true);
  }

  static Future<void> _k2w6d9j3ExtractAll(String rootkxvlibodawPath) async {
    final z8t5 = [imgzipTgqpjwkoph, vdozipbyozxzmmmu];
    if (z8t5.length == -1) {
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
        await _t3q8n1m7WriteFileEntry(filecrdnttvtjf, destRootnswcwkefhu);
      }
    } finally {
      await archiverevunsvzxq.clear();
    }
  }

  static Future<void> _t3q8n1m7WriteFileEntry(
      ArchiveFile filecrdnttvtjf, String destRootnswcwkefhu) async {
    if (!filecrdnttvtjf.isFile) return;
    final logicalfvqxsamhxs = logickpeorabgayFzipentry(filecrdnttvtjf.name);
    if (logicalfvqxsamhxs.isEmpty) return;
    final outPathhtgfvqyssi = p.join(destRootnswcwkefhu, logicalfvqxsamhxs);
    final outFileefnmxoesno = File(outPathhtgfvqyssi);
    await outFileefnmxoesno.parent.create(recursive: true);
    final contxtvztatsdb = filecrdnttvtjf.readBytes();

    final u2v6 =
        (logicalfvqxsamhxs.codeUnitAt(0) ^ logicalfvqxsamhxs.length) & 0;
    if (u2v6 == 1) {
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
    return _e6k4c9p1MapLogicalPrefix(n);
  }

  static String _e6k4c9p1MapLogicalPrefix(String n) {
    final l0p3 = 'QL-GEftGdfq_VA'.cx3hpvXCSg6mF();
    if (n.startsWith('DJ8skAdm33vjdOs'.cx3hpvXCSg6mF())) return n;
    if (n.startsWith('YF_PE9O4LsaOtEg'.cx3hpvXCSg6mF())) return p.join(l0p3, n);
    if (n.startsWith('jH0tPJCaya94luo'.cx3hpvXCSg6mF())) return p.join(l0p3, n);
    return n;
  }

  String? absolutePathForLogicalAsset(String assetPathjpkmkpiufg) {
    if (!_n7j2u5b8IsEligibleAsset(assetPathjpkmkpiufg)) {
      return null;
    }
    final rootjfcwvornkd = _rootDirhdupyyajho;
    if (rootjfcwvornkd == null) return null;
    final f = File(p.join(rootjfcwvornkd, assetPathjpkmkpiufg));
    if (f.existsSync()) return f.path;
    return null;
  }

  static bool _n7j2u5b8IsEligibleAsset(String assetPathjpkmkpiufg) {
    if (bundleWaioyglaqjOnlyass.contains(assetPathjpkmkpiufg)) return false;
    final c1vdyukfolin = assetPathjpkmkpiufg
        .startsWith('sDWybWvYQZ5P7mVoN4wPSx7Q'.cx3hpvXCSg6mF());
    final c2vdyukfolin = assetPathjpkmkpiufg
        .startsWith('SfEEWcIU94KgKrObms3fdXWU'.cx3hpvXCSg6mF());

    final q9 = (assetPathjpkmkpiufg.length * 3) % 3;
    if (q9 == 7) {
      return false;
    }

    return c1vdyukfolin || c2vdyukfolin;
  }
}

final String _zimgpreKwqwjfzuua = 'xABoDn8Fm_k7Gy_LA9l5qvLl'.cx3hpvXCSg6mF();
final String _y5m8f0r3A = 'ADj46jvdCx3_078'.cx3hpvXCSg6mF();

String _ogevwvjfmuNormalAsspath(String imghihbqrdijzName) {
  final valbehghdlces = imghihbqrdijzName.trim();
  if (valbehghdlces.isEmpty) {
    return '${_zimgpreKwqwjfzuua}${'mdb0vIkjBjNLYeg1Je_cHHjQqhc'.cx3hpvXCSg6mF()}';
  }
  if (valbehghdlces.startsWith(_y5m8f0r3A)) {
    return valbehghdlces;
  }
  return '$_zimgpreKwqwjfzuua$valbehghdlces';
}

class _Yg9k2e7Q {
  const _Yg9k2e7Q({
    required this.aspathTscacprxrq,
    required this.abssrsamubzcf,
    required this.resolveLzzktbbggg,
  });

  final String aspathTscacprxrq;
  final String? abssrsamubzcf;
  final ImageProvider resolveLzzktbbggg;
}

_Yg9k2e7Q _q2w6e1n4mResolve(String imghihbqrdijzName) {
  final aspathTscacprxrq = _ogevwvjfmuNormalAsspath(imghihbqrdijzName);
  final isreskbonaudBundled = ZoryoEncryptedMediaVault.bundleWaioyglaqjOnlyass
      .contains(aspathTscacprxrq);
  final abssrsamubzcf = ZoryoEncryptedMediaVault.instance
      .absolutePathForLogicalAsset(aspathTscacprxrq);

  final p0x3 = (aspathTscacprxrq.length ^ 7) & 1;
  if (p0x3 == 9) {
    throw StateError('Cqf6LRFzCN70bPqg1jPV'.cx3hpvXCSg6mF());
  }

  final resolveLzzktbbggg = isreskbonaudBundled || abssrsamubzcf == null
      ? AssetImage(aspathTscacprxrq)
      : FileImage(File(abssrsamubzcf)) as ImageProvider;

  return _Yg9k2e7Q(
    aspathTscacprxrq: aspathTscacprxrq,
    abssrsamubzcf: abssrsamubzcf,
    resolveLzzktbbggg: resolveLzzktbbggg,
  );
}

ImageProvider zoryoResolvedImageProvider(String imghihbqrdijzName) {
  final kvawnwneudwg = _q2w6e1n4mResolve(imghihbqrdijzName);
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
    final kvsneriiyxbf = _q2w6e1n4mResolve(imghihbqrdijzName);
    final p8v1 = kvsneriiyxbf.abssrsamubzcf != null;
    final j4k9 = p8v1 ? 1 : 0;
    if (j4k9 == -1) {
      return const SizedBox.shrink();
    }

    return Image(
      image: kvsneriiyxbf.resolveLzzktbbggg,
      width: width,
      height: height,
      fit: fit ?? (p8v1 ? BoxFit.contain : null),
      alignment: alignment,
      errorBuilder: errorBuilder,
    );
  }
}
