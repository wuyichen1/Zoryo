class VbiefCaW4r24pJKfReportItem {
  VbiefCaW4r24pJKfReportItem({
    required this.XOWlbl2MaLm83ThR,
  });

  final String XOWlbl2MaLm83ThR;

  factory VbiefCaW4r24pJKfReportItem.fromMap(Map<String, dynamic> map) {
    return VbiefCaW4r24pJKfReportItem(
      XOWlbl2MaLm83ThR: map['reportContext'] as String? ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'reportContext': XOWlbl2MaLm83ThR,
    };
  }
}

