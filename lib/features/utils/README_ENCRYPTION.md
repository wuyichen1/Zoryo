# JSON 数据加密说明

## 概述

为了保护 `initial_data.json` 文件中的数据，项目支持对 JSON 文件进行加密。加密后的文件可以在运行时自动解密。

## 使用方法

### 1. 加密 JSON 文件

使用提供的加密工具对 JSON 文件进行加密：

```bash
dart run lib/core/utils/json_encryption_tool.dart encrypt assets/jsons/initial_data.json assets/jsons/initial_data.encrypted.json
```

### 2. 解密 JSON 文件（用于验证）

如果需要验证加密是否正确，可以解密文件：

```bash
dart run lib/core/utils/json_encryption_tool.dart decrypt assets/jsons/initial_data.encrypted.json assets/jsons/initial_data.decrypted.json
```

### 3. 在应用中使用加密文件

修改 `lib/main.dart` 中的 `LtFQAFrj0VRpIL8RLocalstore` 初始化，指定使用加密文件：

```dart
final storage = LtFQAFrj0VRpIL8RLocalstore(
  assetPath: 'assets/jsons/initial_data.encrypted.json',
  useEncryptedAsset: true,
);
```

或者，如果希望自动检测（先尝试解密，失败则按普通 JSON 解析），可以保持默认配置：

```dart
final storage = LtFQAFrj0VRpIL8RLocalstore();
```

`LtFQAFrj0VRpIL8RLocalstore` 会自动检测文件是否为加密格式，如果是加密的会自动解密。

## 加密原理

- 使用项目中的 `StringEncryption` 扩展进行加密
- 采用流式 XOR 加密算法
- 每次加密都会生成随机 IV（初始化向量），相同内容加密结果不同
- 加密结果使用 Base64URL 编码

## 注意事项

1. **备份原始文件**：加密前请备份原始的 `initial_data.json` 文件
2. **版本控制**：建议将加密后的文件也加入版本控制，但不要提交原始未加密文件
3. **密钥安全**：加密密钥硬编码在 `string_encryption.dart` 中，如需更高安全性，建议从环境变量或安全存储中读取
4. **性能影响**：解密操作在应用启动时执行一次，对性能影响很小

## 文件说明

- `initial_data.json` - 原始未加密的 JSON 文件
- `initial_data.encrypted.json` - 加密后的 JSON 文件（已生成）
- `json_encryption_tool.dart` - 加密/解密工具脚本

