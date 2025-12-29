class PublishOption {
  PublishOption({
    required this.name,
    required this.value,
  });

  final String name; // 帖子选项文案
  final int value; // 下标

  factory PublishOption.fromMap(Map<String, dynamic> map) {
    return PublishOption(
      name: map['name'] as String? ?? '',
      value: (map['value'] ?? 0) as int,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'value': value,
    };
  }
}

