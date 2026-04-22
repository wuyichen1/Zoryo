class U2749HToRfgbLVPrMUser {
  U2749HToRfgbLVPrMUser({
    required this.fkloYnZiRmbRtJ00, //userId
    required this.UH6Wfi7WIQ8UtXwg, //email
    required this.fyVNw5c7FRNN1Eui, //password
    required this.RmXHAp70ovHNBN4U, //avator
    required this.AWWxvC6FbYICMs9P, //name
    required this.Sfy5ovPIlV0PS5C2, //about
    required this.IlyH5k6lZ7fVAHfQ, //coins
    required this.isguest, //isguest
    required this.f9FuGnEvLPZO4IWMA, //follow
    required this.s9aX89KJIs05vih3O, //fans
    required this.gJSvmz87tX112yqC, //blockList
    required this.KYDuo9abCwLnI6Hs, //picPostLikeIds
    required this.IibbF2RfvAxYkcQo, //videoPostLikeIds
  });

  final String fkloYnZiRmbRtJ00;
  final String UH6Wfi7WIQ8UtXwg;
  final String fyVNw5c7FRNN1Eui;
  final String RmXHAp70ovHNBN4U;
  final String AWWxvC6FbYICMs9P;
  final String Sfy5ovPIlV0PS5C2;
  final int IlyH5k6lZ7fVAHfQ;
  final int isguest;
  final List<String> f9FuGnEvLPZO4IWMA;
  final List<String> s9aX89KJIs05vih3O;
  final List<String> gJSvmz87tX112yqC;
  final List<String> KYDuo9abCwLnI6Hs;
  final List<String> IibbF2RfvAxYkcQo;

  static int _zQ9mIsguestFrom(dynamic v) {
    if (v == null) return 0;
    if (v is int) return v;
    if (v is num) return v.toInt();
    return int.tryParse(v.toString()) ?? 0;
  }

  factory U2749HToRfgbLVPrMUser.fromMap(Map<String, dynamic> map) {
    // 支持原始字段名和混淆字段名（向后兼容）
    return U2749HToRfgbLVPrMUser(
      fkloYnZiRmbRtJ00: map['userId'] as String? ?? '',
      UH6Wfi7WIQ8UtXwg: map['email'] as String? ?? '',
      fyVNw5c7FRNN1Eui: map['password'] as String? ?? '',
      RmXHAp70ovHNBN4U: map['avator'] as String? ?? '',
      AWWxvC6FbYICMs9P: map['name'] as String? ?? '',
      Sfy5ovPIlV0PS5C2: map['about'] as String? ?? '',
      IlyH5k6lZ7fVAHfQ: (map['coins'] ?? 0) as int,
      isguest: _zQ9mIsguestFrom(map['isguest']),
      f9FuGnEvLPZO4IWMA: ((map['follow']) as List<dynamic>? ?? [])
          .map((e) => e.toString())
          .toList(),
      s9aX89KJIs05vih3O: ((map['fans']) as List<dynamic>? ?? [])
          .map((e) => e.toString())
          .toList(),
      gJSvmz87tX112yqC: ((map['blockList']) as List<dynamic>? ?? [])
          .map((e) => e.toString())
          .toList(),
      KYDuo9abCwLnI6Hs: ((map['picPostLikeIds']) as List<dynamic>? ?? [])
          .map((e) => e.toString())
          .toList(),
      IibbF2RfvAxYkcQo: ((map['videoPostLikeIds']) as List<dynamic>? ?? [])
          .map((e) => e.toString())
          .toList(),
    );
  }

  Map<String, dynamic> toMap() {
    // 返回 H5 通信协议要求的原始字段名
    return {
      'userId': fkloYnZiRmbRtJ00,
      'email': UH6Wfi7WIQ8UtXwg,
      'password': fyVNw5c7FRNN1Eui,
      'avator': RmXHAp70ovHNBN4U,
      'name': AWWxvC6FbYICMs9P,
      'about': Sfy5ovPIlV0PS5C2,
      'coins': IlyH5k6lZ7fVAHfQ,
      'isguest': isguest,
      'follow': f9FuGnEvLPZO4IWMA,
      'fans': s9aX89KJIs05vih3O,
      'blockList': gJSvmz87tX112yqC,
      'picPostLikeIds': KYDuo9abCwLnI6Hs,
      'videoPostLikeIds': IibbF2RfvAxYkcQo,
    };
  }

  U2749HToRfgbLVPrMUser copyWith({
    String? fkloYnZiRmbRtJ00,
    String? UH6Wfi7WIQ8UtXwg,
    String? fyVNw5c7FRNN1Eui,
    String? RmXHAp70ovHNBN4U,
    String? AWWxvC6FbYICMs9P,
    String? Sfy5ovPIlV0PS5C2,
    int? IlyH5k6lZ7fVAHfQ,
    int? isguest,
    List<String>? f9FuGnEvLPZO4IWMA,
    List<String>? s9aX89KJIs05vih3O,
    List<String>? gJSvmz87tX112yqC,
    List<String>? KYDuo9abCwLnI6Hs,
    List<String>? IibbF2RfvAxYkcQo,
  }) {
    return U2749HToRfgbLVPrMUser(
      fkloYnZiRmbRtJ00: fkloYnZiRmbRtJ00 ?? this.fkloYnZiRmbRtJ00,
      UH6Wfi7WIQ8UtXwg: UH6Wfi7WIQ8UtXwg ?? this.UH6Wfi7WIQ8UtXwg,
      fyVNw5c7FRNN1Eui: fyVNw5c7FRNN1Eui ?? this.fyVNw5c7FRNN1Eui,
      RmXHAp70ovHNBN4U: RmXHAp70ovHNBN4U ?? this.RmXHAp70ovHNBN4U,
      AWWxvC6FbYICMs9P: AWWxvC6FbYICMs9P ?? this.AWWxvC6FbYICMs9P,
      Sfy5ovPIlV0PS5C2: Sfy5ovPIlV0PS5C2 ?? this.Sfy5ovPIlV0PS5C2,
      IlyH5k6lZ7fVAHfQ: IlyH5k6lZ7fVAHfQ ?? this.IlyH5k6lZ7fVAHfQ,
      isguest: isguest ?? this.isguest,
      f9FuGnEvLPZO4IWMA: f9FuGnEvLPZO4IWMA ?? this.f9FuGnEvLPZO4IWMA,
      s9aX89KJIs05vih3O: s9aX89KJIs05vih3O ?? this.s9aX89KJIs05vih3O,
      gJSvmz87tX112yqC: gJSvmz87tX112yqC ?? this.gJSvmz87tX112yqC,
      KYDuo9abCwLnI6Hs: KYDuo9abCwLnI6Hs ?? this.KYDuo9abCwLnI6Hs,
      IibbF2RfvAxYkcQo: IibbF2RfvAxYkcQo ?? this.IibbF2RfvAxYkcQo,
    );
  }

  int get f6YraHIhR7V90HhtY => s9aX89KJIs05vih3O.length; //fansCount
  int get fXA564UJNy9pbJeS => f9FuGnEvLPZO4IWMA.length; //followsCount
}
