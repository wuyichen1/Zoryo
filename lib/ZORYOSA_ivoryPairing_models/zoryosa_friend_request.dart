import 'package:zoryo/ZORYOSA_etherealGlow_features/ZORYOSA_lookFinalizer_utils/style_narrative_codec.dart';

class ZoryosaFriendRequest {
  ZoryosaFriendRequest({
    required this.ZORYOSA_requestId,
    required this.ZORYOSA_fromUserId,
    required this.ZORYOSA_toUserId,
    required this.status,
    this.createTime,
  });

  final String ZORYOSA_requestId;
  final String ZORYOSA_fromUserId;
  final String ZORYOSA_toUserId;
  final String status;
  final String? createTime;

  factory ZoryosaFriendRequest.fromMap(Map<String, dynamic> map) {
    return ZoryosaFriendRequest(
      ZORYOSA_requestId: map['LPF3rvQChknSKnsLsg'.styleNarrative()]?.toString() ?? '',
      ZORYOSA_fromUserId: map['hpJW-IZ6uetEiYv-eS4'.styleNarrative()]?.toString() ?? '',
      ZORYOSA_toUserId: map['ZIbd8sqTCPOKnDzi'.styleNarrative()]?.toString() ?? '',
      status: map['19UXK0I_9s0XTg'.styleNarrative()]?.toString() ?? 'pending',
      createTime: map['b4mdW6qNeIiOlGGGdCQ'.styleNarrative()]?.toString(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'LPF3rvQChknSKnsLsg'.styleNarrative(): ZORYOSA_requestId,
      'hpJW-IZ6uetEiYv-eS4'.styleNarrative(): ZORYOSA_fromUserId,
      'ZIbd8sqTCPOKnDzi'.styleNarrative(): ZORYOSA_toUserId,
      '19UXK0I_9s0XTg'.styleNarrative(): status,
      if (createTime != null)
        'b4mdW6qNeIiOlGGGdCQ'.styleNarrative(): createTime,
    };
  }
}
