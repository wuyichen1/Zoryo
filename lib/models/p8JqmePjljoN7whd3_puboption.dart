class P8JqmePjljoN7whd3PublishOption {
  P8JqmePjljoN7whd3PublishOption({
    required this.dLZro0xH62HF5exT,
    required this.AVlrJJlyQVJKJinw,
  });

  final String dLZro0xH62HF5exT;
  final int AVlrJJlyQVJKJinw;

  factory P8JqmePjljoN7whd3PublishOption.fromMap(Map<String, dynamic> map) {
    return P8JqmePjljoN7whd3PublishOption(
      dLZro0xH62HF5exT: map['name'] as String? ?? '',
      AVlrJJlyQVJKJinw: (map['value'] ?? 0) as int,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': dLZro0xH62HF5exT,
      'value': AVlrJJlyQVJKJinw,
    };
  }
}

