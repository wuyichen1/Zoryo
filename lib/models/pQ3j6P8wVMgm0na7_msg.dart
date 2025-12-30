class RD5sxRcE0eOB932bFliao {
  RD5sxRcE0eOB932bFliao({
    required this.c5sk5SraIUZ47JRVo,
    required this.R1DrlWpgkNODxc7I,
    required this.l46a7ZEmfVdDDNMKJ,
    required this.s1x9rL9Ec2ZKZ7FwP,
    required this.uQsMIZjDCeFbmLAP,
    required this.PydKHPzw1brLU4xy,
  });

  final String c5sk5SraIUZ47JRVo;
  final List<String> R1DrlWpgkNODxc7I;
  final String l46a7ZEmfVdDDNMKJ;
  final String s1x9rL9Ec2ZKZ7FwP;
  final int uQsMIZjDCeFbmLAP;
  final String PydKHPzw1brLU4xy;

  factory RD5sxRcE0eOB932bFliao.fromMap(Map<String, dynamic> map) {
    return RD5sxRcE0eOB932bFliao(
      c5sk5SraIUZ47JRVo: map['chatId'] as String,
      R1DrlWpgkNODxc7I: (map['chatUserIds'] as List<dynamic>? ?? [])
          .map((e) => e.toString())
          .toList(),
      l46a7ZEmfVdDDNMKJ: map['lastSendContent'] as String? ?? '',
      s1x9rL9Ec2ZKZ7FwP: map['lastSendTime'] as String? ?? '',
      uQsMIZjDCeFbmLAP: (map['unreadMsgCount'] ?? 0) as int,
      PydKHPzw1brLU4xy: map['lastSendUserId'] as String? ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'chatId': c5sk5SraIUZ47JRVo,
      'chatUserIds': R1DrlWpgkNODxc7I,
      'lastSendContent': l46a7ZEmfVdDDNMKJ,
      'lastSendTime': s1x9rL9Ec2ZKZ7FwP,
      'unreadMsgCount': uQsMIZjDCeFbmLAP,
      'lastSendUserId': PydKHPzw1brLU4xy,
    };
  }
}

class NakOK5d2GdM3yvGWMsg {
  NakOK5d2GdM3yvGWMsg({
    required this.m8UqGNZnoKItgfcLq,
    required this.e44rKAIyfUzMV2tu,
    required this.Lmv7ZkAQA6R0SUkQ,
    required this.maUFmMhhz9RE4MUQ,
    required this.z2fWDpFW2TnvQm2d,
    required this.DfjtwMskOAwCjPm1,
  });

  final String m8UqGNZnoKItgfcLq;
  final String e44rKAIyfUzMV2tu;
  final String Lmv7ZkAQA6R0SUkQ;
  final String maUFmMhhz9RE4MUQ;
  final String z2fWDpFW2TnvQm2d;
  final String DfjtwMskOAwCjPm1;

  factory NakOK5d2GdM3yvGWMsg.fromMap(Map<String, dynamic> map) {
    return NakOK5d2GdM3yvGWMsg(
      m8UqGNZnoKItgfcLq: map['msgId'] as String,
      e44rKAIyfUzMV2tu: map['chatId'] as String,
      Lmv7ZkAQA6R0SUkQ: map['userId'] as String,
      maUFmMhhz9RE4MUQ: map['sendContent'] as String? ?? '',
      z2fWDpFW2TnvQm2d: map['sendPicUrl'] as String? ?? '',
      DfjtwMskOAwCjPm1: map['sendTime'] as String? ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'msgId': m8UqGNZnoKItgfcLq,
      'chatId': e44rKAIyfUzMV2tu,
      'userId': Lmv7ZkAQA6R0SUkQ,
      'sendContent': maUFmMhhz9RE4MUQ,
      'sendPicUrl': z2fWDpFW2TnvQm2d,
      'sendTime': DfjtwMskOAwCjPm1,
    };
  }
}
