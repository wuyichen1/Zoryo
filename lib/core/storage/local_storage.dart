import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/string_encryption.dart';

class LocalStorageService {
  LocalStorageService({
    this.fileName = 'app_data.json',
    this.assetPath = 'assets/jsons/initial_data.json',
    this.useEncryptedAsset = false,
  });
  final String fileName;
  final String assetPath;
  final bool useEncryptedAsset;

  File? _file;
  SharedPreferences? _prefs;

  Future<void> ensureInitialized() async {
    if (_prefs == null) {
      _prefs = await SharedPreferences.getInstance();
    }
    final dir = await getApplicationDocumentsDirectory();
    _file = File('${dir.path}/$fileName');
    final exists = await _file!.exists();
    if (!exists) {
      await _seedFromAsset();
    }
  }

  Future<void> _seedFromAsset() async {
    String data = await rootBundle.loadString(assetPath);
    
    // 如果使用加密的 asset，先解密
    if (useEncryptedAsset) {
      try {
        data = data.decrypt();
      } catch (e) {
        debugPrint('解密 asset 失败: $e');
        rethrow;
      }
    }
    
    await _file!.writeAsString(data, flush: true);
  }

  Future<Map<String, dynamic>> load() async {
    if (_file == null) await ensureInitialized();
    String raw = await _file!.readAsString();
    
    // 尝试解密（如果文件是加密的）
    // 通过检查是否为有效的 JSON 格式来判断是否需要解密
    try {
      // 先尝试直接解析 JSON
      return jsonDecode(raw) as Map<String, dynamic>;
    } catch (e) {
      // 如果不是有效的 JSON，尝试解密
      try {
        raw = raw.decrypt();
        return jsonDecode(raw) as Map<String, dynamic>;
      } catch (decryptError) {
        debugPrint('加载数据失败，既不是有效的 JSON，也无法解密: $e');
        rethrow;
      }
    }
  }

  Future<void> save(Map<String, dynamic> data) async {
    if (_file == null) await ensureInitialized();
    final raw = const JsonEncoder.withIndent('  ').convert(data);
    await _file!.writeAsString(raw, flush: true);
  }

  // EULA agreement status
  Future<bool> getEulaAgreed() async {
    await ensureInitialized();
    return _prefs!.getBool('eula_agreed') ?? false;
  }

  Future<void> setEulaAgreed(bool agreed) async {
    await ensureInitialized();
    final success = await _prefs!.setBool('eula_agreed', agreed);
    if (!success) {
      debugPrint('Failed to save EULA agreement status');
    }
  }

  // Login status
  Future<bool> getIsLoggedIn() async {
    if (_prefs == null) await ensureInitialized();
    return _prefs!.getBool('is_logged_in') ?? false;
  }

  Future<void> setIsLoggedIn(bool loggedIn) async {
    if (_prefs == null) await ensureInitialized();
    await _prefs!.setBool('is_logged_in', loggedIn);
  }

  // Quick login user ID
  Future<String?> getQuickLoginUserId() async {
    if (_prefs == null) await ensureInitialized();
    return _prefs!.getString('quick_login_user_id');
  }

  Future<void> setQuickLoginUserId(String? userId) async {
    if (_prefs == null) await ensureInitialized();
    if (userId == null) {
      await _prefs!.remove('quick_login_user_id');
    } else {
      await _prefs!.setString('quick_login_user_id', userId);
    }
  }

  // Current logged in user ID
  Future<String?> getCurrentLoggedInUserId() async {
    if (_prefs == null) await ensureInitialized();
    return _prefs!.getString('current_logged_in_user_id');
  }

  Future<void> setCurrentLoggedInUserId(String? userId) async {
    if (_prefs == null) await ensureInitialized();
    if (userId == null) {
      await _prefs!.remove('current_logged_in_user_id');
    } else {
      await _prefs!.setString('current_logged_in_user_id', userId);
    }
  }

  // Current route location
  Future<String?> getCurrentRouteLocation() async {
    if (_prefs == null) await ensureInitialized();
    return _prefs!.getString('current_route_location');
  }

  Future<void> setCurrentRouteLocation(String? location) async {
    if (_prefs == null) await ensureInitialized();
    if (location == null) {
      await _prefs!.remove('current_route_location');
    } else {
      await _prefs!.setString('current_route_location', location);
    }
  }
}

