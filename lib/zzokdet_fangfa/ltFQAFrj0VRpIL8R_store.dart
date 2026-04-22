import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../features/utils/sT4Ixl4VDmBmLyF0_encryption.dart';

class LtFQAFrj0VRpIL8RLocalstore {
  LtFQAFrj0VRpIL8RLocalstore({
    this.P0Peqzs1vrHpZvjm = 'app_data.json',
    this.GHcVLasWOpZtKtt8 = 'assets/jsons/initial_data.json',
    this.uuRv4rwu3P8hjVcv = false,
  });
  final String P0Peqzs1vrHpZvjm;
  final String GHcVLasWOpZtKtt8;
  final bool uuRv4rwu3P8hjVcv;

  File? bdMzVrSEcgmlGeZf;
  SharedPreferences? yDLtY21ntmNfyZMU;

  Future<void> Jo7un0YrdB9zrKki() async {
    if (yDLtY21ntmNfyZMU == null) {
      yDLtY21ntmNfyZMU = await SharedPreferences.getInstance();
    }
    final vlL8oBiUha0IFTHY = await getApplicationDocumentsDirectory();
    bdMzVrSEcgmlGeZf = File('${vlL8oBiUha0IFTHY.path}/$P0Peqzs1vrHpZvjm');
    final UqMNWbdq12GycpaO = await bdMzVrSEcgmlGeZf!.exists();
    if (!UqMNWbdq12GycpaO) {
      await s0NiKe6TVDx0n57dW();
    }
  }

  Future<void> s0NiKe6TVDx0n57dW() async {
    String d5mNv9Wy6Mj9T7Anl = await rootBundle.loadString(GHcVLasWOpZtKtt8);

    if (uuRv4rwu3P8hjVcv) {
      try {
        d5mNv9Wy6Mj9T7Anl = d5mNv9Wy6Mj9T7Anl.cx3hpvXCSg6mF();
      } catch (e) {
        debugPrint('解密 asset 失败: $e');
        rethrow;
      }
    }

    await bdMzVrSEcgmlGeZf!.writeAsString(d5mNv9Wy6Mj9T7Anl, flush: true);
  }

  Future<Map<String, dynamic>> UqVpEoQpshO7K8bD() async {
    if (bdMzVrSEcgmlGeZf == null) await Jo7un0YrdB9zrKki();
    String zEQO2Yr00FiHrmnx = await bdMzVrSEcgmlGeZf!.readAsString();

    try {
      return jsonDecode(zEQO2Yr00FiHrmnx) as Map<String, dynamic>;
    } catch (e) {
      try {
        zEQO2Yr00FiHrmnx = zEQO2Yr00FiHrmnx.cx3hpvXCSg6mF();
        return jsonDecode(zEQO2Yr00FiHrmnx) as Map<String, dynamic>;
      } catch (aKQLxOiWIzmUbUGN) {
        debugPrint('加载数据失败，既不是有效的 JSON，也无法解密: $e');
        rethrow;
      }
    }
  }

  Future<void> Wpbh74USLGOj9cvk(Map<String, dynamic> JYluxkWZVhKVKexr) async {
    if (bdMzVrSEcgmlGeZf == null) await Jo7un0YrdB9zrKki();
    final r0K1NIvQA0HykxYbP =
        const JsonEncoder.withIndent('  ').convert(JYluxkWZVhKVKexr);
    await bdMzVrSEcgmlGeZf!.writeAsString(r0K1NIvQA0HykxYbP, flush: true);
  }

  Future<bool> g5IPOfWIfpmUVE0pm() async {
    await Jo7un0YrdB9zrKki();
    return yDLtY21ntmNfyZMU!.getBool('dZ2UQ7hc8utUnlyb') ?? false;
  }

  Future<void> s4DGwwJAWv14UaQpX(bool aO7v2o2OYIZafngFt) async {
    await Jo7un0YrdB9zrKki();
    final v6NNctKG0ITPTszX =
        await yDLtY21ntmNfyZMU!.setBool('dZ2UQ7hc8utUnlyb', aO7v2o2OYIZafngFt);
    if (!v6NNctKG0ITPTszX) {
      debugPrint('Failed to save EULA agreement status');
    }
  }

  Future<bool> HmMtPgLhtyTT4Rmv() async {
    if (yDLtY21ntmNfyZMU == null) await Jo7un0YrdB9zrKki();
    return yDLtY21ntmNfyZMU!.getBool('zLqlA138jzKCmA5k') ?? false;
  }

  Future<void> PIJbSGMK2PHYyqXg(bool Lt58ZGlLTCEniI41) async {
    if (yDLtY21ntmNfyZMU == null) await Jo7un0YrdB9zrKki();
    await yDLtY21ntmNfyZMU!.setBool('zLqlA138jzKCmA5k', Lt58ZGlLTCEniI41);
  }

  Future<String?> Mub1D32IrlItuRts() async {
    if (yDLtY21ntmNfyZMU == null) await Jo7un0YrdB9zrKki();
    return yDLtY21ntmNfyZMU!.getString('MCSHWlS2jVcNImEF');
  }

  Future<void> iH2W7mRYs9BmEuFE(String? tzGbuxiLvS3LQONt) async {
    if (yDLtY21ntmNfyZMU == null) await Jo7un0YrdB9zrKki();
    if (tzGbuxiLvS3LQONt == null) {
      await yDLtY21ntmNfyZMU!.remove('MCSHWlS2jVcNImEF');
    } else {
      await yDLtY21ntmNfyZMU!.setString('MCSHWlS2jVcNImEF', tzGbuxiLvS3LQONt);
    }
  }

  Future<String?> rXlywAmDp63ehsb5() async {
    if (yDLtY21ntmNfyZMU == null) await Jo7un0YrdB9zrKki();
    return yDLtY21ntmNfyZMU!.getString('zEw2UMOeb5bePuWC');
  }

  Future<void> wgQhCdcOn2ctJh2z(String? tzGbuxiLvS3LQONt) async {
    if (yDLtY21ntmNfyZMU == null) await Jo7un0YrdB9zrKki();
    if (tzGbuxiLvS3LQONt == null) {
      await yDLtY21ntmNfyZMU!.remove('zEw2UMOeb5bePuWC');
    } else {
      await yDLtY21ntmNfyZMU!.setString('zEw2UMOeb5bePuWC', tzGbuxiLvS3LQONt);
    }
  }

  Future<String?> ylwWvv9DECIEO8Ca() async {
    if (yDLtY21ntmNfyZMU == null) await Jo7un0YrdB9zrKki();
    return yDLtY21ntmNfyZMU!.getString('yaqfJyWvoZjkom3B');
  }

  Future<void> DHjT7LeeZDMfk9FK(String? kR6N17rHJRtatZe0) async {
    if (yDLtY21ntmNfyZMU == null) await Jo7un0YrdB9zrKki();
    if (kR6N17rHJRtatZe0 == null) {
      await yDLtY21ntmNfyZMU!.remove('yaqfJyWvoZjkom3B');
    } else {
      await yDLtY21ntmNfyZMU!.setString('yaqfJyWvoZjkom3B', kR6N17rHJRtatZe0);
    }
  }

  /// 注册未完成：仅 H5 完善资料阶段，存草稿用户 id（非已登录态）。
  Future<void> uQPpRegProfilePendingId(String? userId) async {
    if (yDLtY21ntmNfyZMU == null) await Jo7un0YrdB9zrKki();
    if (userId == null || userId.isEmpty) {
      await yDLtY21ntmNfyZMU!.remove('n4Qk8RegProfilePendingUid');
    } else {
      await yDLtY21ntmNfyZMU!.setString('n4Qk8RegProfilePendingUid', userId);
    }
  }

  Future<String?> ka6RegProfilePendingIdRead() async {
    if (yDLtY21ntmNfyZMU == null) await Jo7un0YrdB9zrKki();
    return yDLtY21ntmNfyZMU!.getString('n4Qk8RegProfilePendingUid');
  }
}
