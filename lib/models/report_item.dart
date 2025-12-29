class ReportItem {
  ReportItem({
    required this.reportContext,
  });

  final String reportContext; // 选项内容文案

  factory ReportItem.fromMap(Map<String, dynamic> map) {
    return ReportItem(
      reportContext: map['reportContext'] as String? ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'reportContext': reportContext,
    };
  }
}

