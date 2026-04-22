import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:zoryo/features/utils/sT4Ixl4VDmBmLyF0_encryption.dart';

import 'ltFQAFrj0VRpIL8R_store.dart';
import '../models/blaitem_5aqarrQqkyRukG3S.dart';
import '../models/zGQ5e04h9a1NvSNwChatBotDesc_chatbotdesc.dart';
import '../models/mLWrwTEsH7mWmgZP_Commt.dart';
import '../models/bJpjHVrAqvtNbCtL_diapack.dart';
import '../models/pQ3j6P8wVMgm0na7_msg.dart';
import '../models/tdpFegrWPc3sjlaQ_post.dart';
import '../models/p8JqmePjljoN7whd3_puboption.dart';
import '../models/vbiefCaW4r24pJKf_repitem.dart';
import '../models/u2749HToRfgbLVPrM_user.dart';

class Kl3bGE2D4dsgMTqGState extends ChangeNotifier {
  Kl3bGE2D4dsgMTqGState(this.sOjugDTKPqzG6mvBs);
  final LtFQAFrj0VRpIL8RLocalstore sOjugDTKPqzG6mvBs;

  bool HMAJABja8J7tdhv8 = false;
  bool vB2GTgDbdOHDxBUH = false;
  bool WMQtbwFITYixyRbr = false;
  /// 已创建账号草稿、待 H5 完善资料并完成登录态（此时 [WMQtbwFITYixyRbr] 为 false）。
  bool vbK7PendingRegProfile = false;
  String? s6LetX6FiwoOFmXwp;
  late U2749HToRfgbLVPrMUser NLbGEpZKzMfAbV3k;
  List<U2749HToRfgbLVPrMUser> EGX7N1GxSRqAoJMH = [];
  List<TdpFegrWPc3sjlaQPost> Wiv8PMkiG56nrNZf = [];
  List<RD5sxRcE0eOB932bFliao> XjnQ9Ya3GTHax5Jz = [];
  List<NakOK5d2GdM3yvGWMsg> tR0XyhJEMWYqEVcI = [];
  List<MLWrwTEsH7mWmgZPCommt> c8ZkaRw4rlzkixIFq = [];
  List<B5aqarrQqkyRukG3S> inTG1tmZGkGUPQZs = [];
  List<BJpjHVrAqvtNbCtLDiapack> d9dEr1cTYR0dnRD6v = [];
  List<VbiefCaW4r24pJKfReportItem> r8YzzvkFXPY5rzyud = [];
  List<P8JqmePjljoN7whd3PublishOption> p1BbHOzt95PwWRrUg = [];
  ZGQ5e04h9a1NvSNwChatBotDesc? c9wiGW5uJ9s1YPtXI;

  Future<void> bootstrap() async {
    final nUBG0I6DJxhYpDpY = await sOjugDTKPqzG6mvBs.UqVpEoQpshO7K8bD();

    vB2GTgDbdOHDxBUH = await sOjugDTKPqzG6mvBs.g5IPOfWIfpmUVE0pm();
    WMQtbwFITYixyRbr = await sOjugDTKPqzG6mvBs.HmMtPgLhtyTT4Rmv();
    s6LetX6FiwoOFmXwp = await sOjugDTKPqzG6mvBs.ylwWvv9DECIEO8Ca();
    EGX7N1GxSRqAoJMH = (nUBG0I6DJxhYpDpY[
                'ctSq5rk5TwaxVTEOVv8PyQ'.cx3hpvXCSg6mF()] as List<dynamic>? ??
            [])
        .map((e) => U2749HToRfgbLVPrMUser.fromMap(e as Map<String, dynamic>))
        .toList();

    if (WMQtbwFITYixyRbr) {
      final YXeG1pTQEB2m93r7 = await sOjugDTKPqzG6mvBs.rXlywAmDp63ehsb5();
      if (YXeG1pTQEB2m93r7 != null) {
        final ypSjxlxzIC3wxAti = EGX7N1GxSRqAoJMH.firstWhere(
          (u) => u.fkloYnZiRmbRtJ00 == YXeG1pTQEB2m93r7,
          orElse: () => ZUEqPPxydYoBh7Iz(),
        );
        NLbGEpZKzMfAbV3k = ypSjxlxzIC3wxAti;
      } else {
        if (nUBG0I6DJxhYpDpY['nc3VkYIwMG1iRgJL'.cx3hpvXCSg6mF()] != null) {
          NLbGEpZKzMfAbV3k = U2749HToRfgbLVPrMUser.fromMap(
              nUBG0I6DJxhYpDpY['SBnWa9f8M4uZ8gGR'.cx3hpvXCSg6mF()]
                  as Map<String, dynamic>);
        } else {
          NLbGEpZKzMfAbV3k = EGX7N1GxSRqAoJMH.isNotEmpty
              ? EGX7N1GxSRqAoJMH.first
              : ZUEqPPxydYoBh7Iz();
        }
      }
    } else {
      NLbGEpZKzMfAbV3k = ZUEqPPxydYoBh7Iz();
    }

    EGX7N1GxSRqAoJMH = (nUBG0I6DJxhYpDpY[
                'bvEe3r0U-x61MMUGUtq78Q'.cx3hpvXCSg6mF()] as List<dynamic>? ??
            [])
        .map((e) => U2749HToRfgbLVPrMUser.fromMap(e as Map<String, dynamic>))
        .toList();

    Wiv8PMkiG56nrNZf = (nUBG0I6DJxhYpDpY['mchwNZdHnqJJWWuDMO9I'.cx3hpvXCSg6mF()]
                as List<dynamic>? ??
            [])
        .map((e) => TdpFegrWPc3sjlaQPost.fromMap(e as Map<String, dynamic>))
        .toList();

    XjnQ9Ya3GTHax5Jz = (nUBG0I6DJxhYpDpY[
                'MVucC-i5fe3wqkfrkWA9og'.cx3hpvXCSg6mF()] as List<dynamic>? ??
            [])
        .map((e) => RD5sxRcE0eOB932bFliao.fromMap(e as Map<String, dynamic>))
        .toList();

    tR0XyhJEMWYqEVcI =
        (nUBG0I6DJxhYpDpY['johZo4WbqkJ4l5R7UTN7Ljg9Rw'.cx3hpvXCSg6mF()]
                    as List<dynamic>? ??
                [])
            .map((e) => NakOK5d2GdM3yvGWMsg.fromMap(e as Map<String, dynamic>))
            .toList();

    c8ZkaRw4rlzkixIFq = (nUBG0I6DJxhYpDpY[
                'xguykUPuX3I0HT5vA6wG'.cx3hpvXCSg6mF()] as List<dynamic>? ??
            [])
        .map((e) => MLWrwTEsH7mWmgZPCommt.fromMap(e as Map<String, dynamic>))
        .toList();

    inTG1tmZGkGUPQZs = (nUBG0I6DJxhYpDpY['gs01S74v2rpmeaSsWA'.cx3hpvXCSg6mF()]
                as List<dynamic>? ??
            [])
        .map((e) => B5aqarrQqkyRukG3S.fromMap(e as Map<String, dynamic>))
        .toList();

    d9dEr1cTYR0dnRD6v = (nUBG0I6DJxhYpDpY[
                'Joetj-OSRHP9hjZXmkwMPg'.cx3hpvXCSg6mF()] as List<dynamic>? ??
            [])
        .map((e) => BJpjHVrAqvtNbCtLDiapack.fromMap(e as Map<String, dynamic>))
        .toList();

    r8YzzvkFXPY5rzyud =
        (nUBG0I6DJxhYpDpY['kSCWe5nzZmZu_GJmSKwGTyGE'.cx3hpvXCSg6mF()]
                    as List<dynamic>? ??
                [])
            .map((e) =>
                VbiefCaW4r24pJKfReportItem.fromMap(e as Map<String, dynamic>))
            .toList();

    p1BbHOzt95PwWRrUg = (nUBG0I6DJxhYpDpY['LhSKo_j_aF3QD0p-ta0nAae3KSNJd1U2'
                .cx3hpvXCSg6mF()] as List<dynamic>? ??
            [])
        .map((e) =>
            P8JqmePjljoN7whd3PublishOption.fromMap(e as Map<String, dynamic>))
        .toList();

    if (nUBG0I6DJxhYpDpY['8qvVSi9JNKw_fBma-RDo'.cx3hpvXCSg6mF()] != null) {
      c9wiGW5uJ9s1YPtXI = ZGQ5e04h9a1NvSNwChatBotDesc.fromMap(
          nUBG0I6DJxhYpDpY['rWyRpGSKcEZ6u118Mlck'.cx3hpvXCSg6mF()]
              as Map<String, dynamic>);
    }

    final jPendingUid = await sOjugDTKPqzG6mvBs.ka6RegProfilePendingIdRead();
    if (jPendingUid != null &&
        jPendingUid.isNotEmpty &&
        !WMQtbwFITYixyRbr) {
      final jIdx = EGX7N1GxSRqAoJMH
          .indexWhere((u) => u.fkloYnZiRmbRtJ00 == jPendingUid);
      if (jIdx >= 0) {
        NLbGEpZKzMfAbV3k = EGX7N1GxSRqAoJMH[jIdx];
        vbK7PendingRegProfile = true;
      } else {
        await sOjugDTKPqzG6mvBs.uQPpRegProfilePendingId(null);
        vbK7PendingRegProfile = false;
      }
    }

    HMAJABja8J7tdhv8 = true;
    notifyListeners();
  }

  U2749HToRfgbLVPrMUser ZUEqPPxydYoBh7Iz() {
    return U2749HToRfgbLVPrMUser(
      fkloYnZiRmbRtJ00: 'u1',
      UH6Wfi7WIQ8UtXwg: '',
      fyVNw5c7FRNN1Eui: '',
      RmXHAp70ovHNBN4U: '',
      AWWxvC6FbYICMs9P: 'User',
      Sfy5ovPIlV0PS5C2: '',
      IlyH5k6lZ7fVAHfQ: 0,
      isguest: 1,
      f9FuGnEvLPZO4IWMA: [],
      s9aX89KJIs05vih3O: [],
      gJSvmz87tX112yqC: [],
      KYDuo9abCwLnI6Hs: [],
      IibbF2RfvAxYkcQo: [],
    );
  }

  Future<void> XPskFHZDnriIqlXv() async {
    final SxCk00k0luzD3bI1 = {
      'OMON-vFMf_qmRVHbkR4x8pE'.cx3hpvXCSg6mF():
          NLbGEpZKzMfAbV3k.fkloYnZiRmbRtJ00,
      'sfwhIH4BxNx2F9ba'.cx3hpvXCSg6mF(): NLbGEpZKzMfAbV3k.toMap(),
      'HVf2sAK-E0zk1v0wjXzDHw'.cx3hpvXCSg6mF():
          EGX7N1GxSRqAoJMH.map((e) => e.toMap()).toList(),
      'Ru4lxsQdyzW8P94Qg8m1'.cx3hpvXCSg6mF():
          Wiv8PMkiG56nrNZf.map((e) => e.toMap()).toList(),
      'Bx0zhAL70mbe7Lhs-6aGKw'.cx3hpvXCSg6mF():
          XjnQ9Ya3GTHax5Jz.map((e) => e.toMap()).toList(),
      '78NzLyRcgM4bTG6P8Ahdut_iLQ'.cx3hpvXCSg6mF():
          tR0XyhJEMWYqEVcI.map((e) => e.toMap()).toList(),
      'Ii6dhh_LcHnI-EFQv4k9'.cx3hpvXCSg6mF():
          c8ZkaRw4rlzkixIFq.map((e) => e.toMap()).toList(),
      'X2JVsNu0ul2BhoQ3fQ'.cx3hpvXCSg6mF():
          inTG1tmZGkGUPQZs.map((e) => e.toMap()).toList(),
      '2UmUSVDQfbko2F-pyXIlZA'.cx3hpvXCSg6mF():
          d9dEr1cTYR0dnRD6v.map((e) => e.toMap()).toList(),
      'Xp57JMpxi92bcl_ReyJ7lnQG'.cx3hpvXCSg6mF():
          r8YzzvkFXPY5rzyud.map((e) => e.toMap()).toList(),
      'YQ8AAcvw4uOFBPDcZqbRp1Kwo8F8jN_Y'.cx3hpvXCSg6mF():
          p1BbHOzt95PwWRrUg.map((e) => e.toMap()).toList(),
      if (c9wiGW5uJ9s1YPtXI != null)
        'UEjrt8nWCjGZ3_cPn3PC'.cx3hpvXCSg6mF(): c9wiGW5uJ9s1YPtXI!.toMap(),
    };
    await sOjugDTKPqzG6mvBs.Wpbh74USLGOj9cvk(SxCk00k0luzD3bI1);
  }

  U2749HToRfgbLVPrMUser IyC8CUrMp1zDTN8h(String cbeLymwjkFhgnpgJ) =>
      EGX7N1GxSRqAoJMH.firstWhere(
        (u) => u.fkloYnZiRmbRtJ00 == cbeLymwjkFhgnpgJ,
        orElse: () => NLbGEpZKzMfAbV3k,
      );

  bool I2va46RJYigW7cLa(String EiIPvIczoAnNWqdF) {
    return NLbGEpZKzMfAbV3k.gJSvmz87tX112yqC.contains(EiIPvIczoAnNWqdF);
  }

  List<TdpFegrWPc3sjlaQPost> f3y3eUvfmbqE4uzIF(
      List<TdpFegrWPc3sjlaQPost> NH9g7vF6SYd9U7fP) {
    return NH9g7vF6SYd9U7fP.where((p) => !I2va46RJYigW7cLa(p.nlPxQBFl8qKNMmCt))
        .toList();
  }

  List<RD5sxRcE0eOB932bFliao> r5CAO6gwc6JArwmev(
      List<RD5sxRcE0eOB932bFliao> XCrXUVSclioeCOog) {
    return XCrXUVSclioeCOog.where((zRYnMwvyPNcl4Pma) {
      return !zRYnMwvyPNcl4Pma.R1DrlWpgkNODxc7I.any((EiIPvIczoAnNWqdF) =>
          EiIPvIczoAnNWqdF != NLbGEpZKzMfAbV3k.fkloYnZiRmbRtJ00 &&
          I2va46RJYigW7cLa(EiIPvIczoAnNWqdF));
    }).toList();
  }

  List<TdpFegrWPc3sjlaQPost> fSSOym06dKmPMy5Y(String q3xOTlyrA33PtYnr,
      {bool? yozkeCEmzCeGXNNu}) {
    var OhRd9yIYxXiNc9uk = f3y3eUvfmbqE4uzIF(Wiv8PMkiG56nrNZf);

    if (yozkeCEmzCeGXNNu != null) {
      OhRd9yIYxXiNc9uk = OhRd9yIYxXiNc9uk.where((p) => yozkeCEmzCeGXNNu
          ? p.ocN7sEFUY2qW0Zgr == 0
          : p.ocN7sEFUY2qW0Zgr == 1).toList();
    }

    if (q3xOTlyrA33PtYnr == 'ALL') return OhRd9yIYxXiNc9uk;
    return OhRd9yIYxXiNc9uk.where((p) => p.INWCOb6Ba2b5lyo5 == q3xOTlyrA33PtYnr)
        .toList();
  }

  List<TdpFegrWPc3sjlaQPost> get glufK0J7UE7AEAHL =>
      f3y3eUvfmbqE4uzIF(Wiv8PMkiG56nrNZf);

  List<TdpFegrWPc3sjlaQPost> p23esqfVUGjNMLsVG(String TlIdTnzCHXHNQ1fB) {
    if (TlIdTnzCHXHNQ1fB == NLbGEpZKzMfAbV3k.fkloYnZiRmbRtJ00) {
      return Wiv8PMkiG56nrNZf.where(
          (p) => p.nlPxQBFl8qKNMmCt == TlIdTnzCHXHNQ1fB).toList();
    }
    return f3y3eUvfmbqE4uzIF(
        Wiv8PMkiG56nrNZf.where((p) => p.nlPxQBFl8qKNMmCt == TlIdTnzCHXHNQ1fB)
            .toList());
  }

  List<RD5sxRcE0eOB932bFliao> get bbZAttxRai3tdwtX =>
      r5CAO6gwc6JArwmev(XjnQ9Ya3GTHax5Jz);

  RD5sxRcE0eOB932bFliao? g91zzufhoBusla1N4(String E5TgLE9rCQKDRZX9) {
    if (I2va46RJYigW7cLa(E5TgLE9rCQKDRZX9)) {
      return null;
    }
    return XjnQ9Ya3GTHax5Jz.firstWhere(
      (c) =>
          c.R1DrlWpgkNODxc7I.contains(NLbGEpZKzMfAbV3k.fkloYnZiRmbRtJ00) &&
          c.R1DrlWpgkNODxc7I.contains(E5TgLE9rCQKDRZX9),
      orElse: () => RD5sxRcE0eOB932bFliao(
        c5sk5SraIUZ47JRVo: 'c${Random().nextInt(99999)}',
        R1DrlWpgkNODxc7I: [NLbGEpZKzMfAbV3k.fkloYnZiRmbRtJ00, E5TgLE9rCQKDRZX9],
        l46a7ZEmfVdDDNMKJ: '',
        s1x9rL9Ec2ZKZ7FwP:
            DateTime.now().toString().substring(0, 19).replaceAll('T', ' '),
        uQsMIZjDCeFbmLAP: 0,
        PydKHPzw1brLU4xy: '',
      ),
    );
  }

  void csUFs2aueMukHnHJ(BJpjHVrAqvtNbCtLDiapack dIpTKYC5OxmjpJas) {
    final TaRzhTjOyOWVIkVo = EGX7N1GxSRqAoJMH.indexWhere(
        (u) => u.fkloYnZiRmbRtJ00 == NLbGEpZKzMfAbV3k.fkloYnZiRmbRtJ00);
    if (TaRzhTjOyOWVIkVo == -1) return;
    final IkT4jG6xkIYa2fmt = NLbGEpZKzMfAbV3k.copyWith(
        IlyH5k6lZ7fVAHfQ: NLbGEpZKzMfAbV3k.IlyH5k6lZ7fVAHfQ +
            dIpTKYC5OxmjpJas.LylHtfRBcO1D0w0M);
    EGX7N1GxSRqAoJMH[TaRzhTjOyOWVIkVo] = IkT4jG6xkIYa2fmt;
    NLbGEpZKzMfAbV3k = IkT4jG6xkIYa2fmt;
    XPskFHZDnriIqlXv();
    notifyListeners();
  }

  Future<void> s4DGwwJAWv14UaQpX(bool oUCs4z6sLYWKVw9H) async {
    vB2GTgDbdOHDxBUH = oUCs4z6sLYWKVw9H;
    await sOjugDTKPqzG6mvBs.s4DGwwJAWv14UaQpX(oUCs4z6sLYWKVw9H);
    notifyListeners();
  }

  Future<void> l3lteByquzLST80Zc(
      String xu094FVRzZYjaaXA, String ohgvZZZRRGRK4zo1) async {
    final W1vhnt6ydaKPNytR = EGX7N1GxSRqAoJMH.firstWhere(
      (u) =>
          u.UH6Wfi7WIQ8UtXwg == xu094FVRzZYjaaXA &&
          u.fyVNw5c7FRNN1Eui == ohgvZZZRRGRK4zo1,
      orElse: () => ZUEqPPxydYoBh7Iz(),
    );

    if (W1vhnt6ydaKPNytR.fkloYnZiRmbRtJ00 != 'u1' ||
        EGX7N1GxSRqAoJMH.any((u) =>
            u.UH6Wfi7WIQ8UtXwg == xu094FVRzZYjaaXA &&
            u.fyVNw5c7FRNN1Eui == ohgvZZZRRGRK4zo1)) {
      NLbGEpZKzMfAbV3k = W1vhnt6ydaKPNytR;
      WMQtbwFITYixyRbr = true;
      await sOjugDTKPqzG6mvBs.PIJbSGMK2PHYyqXg(true);
      await sOjugDTKPqzG6mvBs
          .wgQhCdcOn2ctJh2z(W1vhnt6ydaKPNytR.fkloYnZiRmbRtJ00);
      notifyListeners();
    }
  }

  Future<void> lszNrddlteyGVoBP(
      String xu094FVRzZYjaaXA, String ohgvZZZRRGRK4zo1) async {
    if (EGX7N1GxSRqAoJMH.any((u) => u.UH6Wfi7WIQ8UtXwg == xu094FVRzZYjaaXA)) {
      return;
    }

    final VTb0eUWsM4LB8pWb = 'u_${DateTime.now().millisecondsSinceEpoch}';
    final VrmIKMcMY7psdbDJ = U2749HToRfgbLVPrMUser(
      fkloYnZiRmbRtJ00: VTb0eUWsM4LB8pWb,
      UH6Wfi7WIQ8UtXwg: xu094FVRzZYjaaXA,
      fyVNw5c7FRNN1Eui: ohgvZZZRRGRK4zo1,
      RmXHAp70ovHNBN4U: 'assets/images/zoryo_logo.png',
      AWWxvC6FbYICMs9P: xu094FVRzZYjaaXA.split('@').first,
      Sfy5ovPIlV0PS5C2: '',
      IlyH5k6lZ7fVAHfQ: 0,
      isguest: 0,
      f9FuGnEvLPZO4IWMA: [],
      s9aX89KJIs05vih3O: [],
      gJSvmz87tX112yqC: [],
      KYDuo9abCwLnI6Hs: [],
      IibbF2RfvAxYkcQo: [],
    );

    EGX7N1GxSRqAoJMH.add(VrmIKMcMY7psdbDJ);
    NLbGEpZKzMfAbV3k = VrmIKMcMY7psdbDJ;
    WMQtbwFITYixyRbr = false;
    vbK7PendingRegProfile = true;
    await sOjugDTKPqzG6mvBs
        .uQPpRegProfilePendingId(VrmIKMcMY7psdbDJ.fkloYnZiRmbRtJ00);
    await XPskFHZDnriIqlXv();
    notifyListeners();
  }

  Future<void> m7RegisterProfileFinalize(String name, String avator) async {
    const kDefaultAvator = 'assets/images/zoryo_defava.png';
    final id = NLbGEpZKzMfAbV3k.fkloYnZiRmbRtJ00;
    final trimmedName = name.trim();
    final trimmedAv = avator.trim();
    final nm = trimmedName.isEmpty
        ? NLbGEpZKzMfAbV3k.AWWxvC6FbYICMs9P
        : trimmedName;
    final av = trimmedAv.isEmpty ? kDefaultAvator : trimmedAv;
    final next = NLbGEpZKzMfAbV3k.copyWith(
      AWWxvC6FbYICMs9P: nm,
      RmXHAp70ovHNBN4U: av,
    );
    final idx = EGX7N1GxSRqAoJMH.indexWhere((u) => u.fkloYnZiRmbRtJ00 == id);
    if (idx >= 0) {
      EGX7N1GxSRqAoJMH[idx] = next;
    }
    NLbGEpZKzMfAbV3k = next;
    WMQtbwFITYixyRbr = true;
    vbK7PendingRegProfile = false;
    await sOjugDTKPqzG6mvBs.PIJbSGMK2PHYyqXg(true);
    await sOjugDTKPqzG6mvBs.wgQhCdcOn2ctJh2z(id);
    await sOjugDTKPqzG6mvBs.uQPpRegProfilePendingId(null);
    await XPskFHZDnriIqlXv();
    notifyListeners();
  }

  /// 用户从完善资料页返回且未完成时，移除草稿账号并清理 pending。
  Future<void> k9AbandonSignupDraftIfPending() async {
    if (!vbK7PendingRegProfile) return;
    final id = NLbGEpZKzMfAbV3k.fkloYnZiRmbRtJ00;
    EGX7N1GxSRqAoJMH =
        EGX7N1GxSRqAoJMH.where((u) => u.fkloYnZiRmbRtJ00 != id).toList();
    vbK7PendingRegProfile = false;
    await sOjugDTKPqzG6mvBs.uQPpRegProfilePendingId(null);
    NLbGEpZKzMfAbV3k = ZUEqPPxydYoBh7Iz();
    await XPskFHZDnriIqlXv();
    notifyListeners();
  }

  Future<void> sYBxKNVVyDvzxp7m() async {
    final DmBnzrztpGHF3Cuo = await sOjugDTKPqzG6mvBs.Mub1D32IrlItuRts();

    if (DmBnzrztpGHF3Cuo != null) {
      final HIztSN0h52ClnM7n = EGX7N1GxSRqAoJMH.firstWhere(
        (u) => u.fkloYnZiRmbRtJ00 == DmBnzrztpGHF3Cuo,
        orElse: () => ZUEqPPxydYoBh7Iz(),
      );

      if (HIztSN0h52ClnM7n.fkloYnZiRmbRtJ00 == DmBnzrztpGHF3Cuo) {
        NLbGEpZKzMfAbV3k = HIztSN0h52ClnM7n;
        WMQtbwFITYixyRbr = true;
        await sOjugDTKPqzG6mvBs.PIJbSGMK2PHYyqXg(true);
        await sOjugDTKPqzG6mvBs
            .wgQhCdcOn2ctJh2z(HIztSN0h52ClnM7n.fkloYnZiRmbRtJ00);
        notifyListeners();
        return;
      } else {
        await sOjugDTKPqzG6mvBs.iH2W7mRYs9BmEuFE(null);
      }
    }

    final VTb0eUWsM4LB8pWb = 'u_quick_${Random().nextInt(999999)}';
    final VrmIKMcMY7psdbDJ = U2749HToRfgbLVPrMUser(
      fkloYnZiRmbRtJ00: VTb0eUWsM4LB8pWb,
      UH6Wfi7WIQ8UtXwg: 'quick_$VTb0eUWsM4LB8pWb@quick.com',
      fyVNw5c7FRNN1Eui: '',
      RmXHAp70ovHNBN4U: 'assets/images/zoryo_defava.png',
      AWWxvC6FbYICMs9P:
          'User ${VTb0eUWsM4LB8pWb.substring(VTb0eUWsM4LB8pWb.length - 4)}',
      Sfy5ovPIlV0PS5C2: '95xKrQBno1jpJI4uxj1uTsEVfxM'.cx3hpvXCSg6mF(),
      IlyH5k6lZ7fVAHfQ: 0,
      isguest: 1,
      f9FuGnEvLPZO4IWMA: [],
      s9aX89KJIs05vih3O: [],
      gJSvmz87tX112yqC: [],
      KYDuo9abCwLnI6Hs: [],
      IibbF2RfvAxYkcQo: [],
    );

    EGX7N1GxSRqAoJMH.add(VrmIKMcMY7psdbDJ);
    NLbGEpZKzMfAbV3k = VrmIKMcMY7psdbDJ;
    WMQtbwFITYixyRbr = true;
    await sOjugDTKPqzG6mvBs.PIJbSGMK2PHYyqXg(true);
    await sOjugDTKPqzG6mvBs.wgQhCdcOn2ctJh2z(VrmIKMcMY7psdbDJ.fkloYnZiRmbRtJ00);
    await sOjugDTKPqzG6mvBs.iH2W7mRYs9BmEuFE(VrmIKMcMY7psdbDJ.fkloYnZiRmbRtJ00);
    await XPskFHZDnriIqlXv();
    notifyListeners();
  }

  Future<void> a7cngZic3wGbStpc() async {
    final H0KEGBqdGsPBB2OG = await sOjugDTKPqzG6mvBs.Mub1D32IrlItuRts() ==
        NLbGEpZKzMfAbV3k.fkloYnZiRmbRtJ00;

    WMQtbwFITYixyRbr = false;
    vbK7PendingRegProfile = false;
    await sOjugDTKPqzG6mvBs.uQPpRegProfilePendingId(null);
    await sOjugDTKPqzG6mvBs.PIJbSGMK2PHYyqXg(false);
    await sOjugDTKPqzG6mvBs.wgQhCdcOn2ctJh2z(null);

    if (H0KEGBqdGsPBB2OG) {}

    NLbGEpZKzMfAbV3k = ZUEqPPxydYoBh7Iz();
    notifyListeners();
  }

  Future<void> s8HGVKPpcO4RCTngj(String v9g97saAXcAzM96EL) async {
    s6LetX6FiwoOFmXwp = v9g97saAXcAzM96EL;
    await sOjugDTKPqzG6mvBs.DHjT7LeeZDMfk9FK(v9g97saAXcAzM96EL);
  }

  Future<void> u6nge5FH92FMre2FQ(List<dynamic> wlXYYDZ25iOMkbHM) async {
    try {
      EGX7N1GxSRqAoJMH = wlXYYDZ25iOMkbHM
          .map((e) => U2749HToRfgbLVPrMUser.fromMap(e as Map<String, dynamic>))
          .toList();

      if (WMQtbwFITYixyRbr) {
        final YXeG1pTQEB2m93r7 = await sOjugDTKPqzG6mvBs.rXlywAmDp63ehsb5();
        if (YXeG1pTQEB2m93r7 != null) {
          final OVsVMLFIdX4Aysk2 = EGX7N1GxSRqAoJMH.firstWhere(
            (u) => u.fkloYnZiRmbRtJ00 == YXeG1pTQEB2m93r7,
            orElse: () => ZUEqPPxydYoBh7Iz(),
          );
          NLbGEpZKzMfAbV3k = OVsVMLFIdX4Aysk2;
        }
      }

      await XPskFHZDnriIqlXv();
      notifyListeners();
    } catch (e) {
      debugPrint('Error updating EGX7N1GxSRqAoJMH: $e');
    }
  }

  Future<void> E7BmPQ8TmME2zbij(List<dynamic> f1DGsFZlSNYEuZkYD) async {
    try {
      Wiv8PMkiG56nrNZf = f1DGsFZlSNYEuZkYD
          .map((e) => TdpFegrWPc3sjlaQPost.fromMap(e as Map<String, dynamic>))
          .toList();
      await XPskFHZDnriIqlXv();
      notifyListeners();
    } catch (e) {
      debugPrint('${'jcy8_KIwTuVqFCHgU-UG1CTxrMANzxjC'.cx3hpvXCSg6mF()}: $e');
    }
  }

  Future<void> hosdxq6R9auF73IT(List<dynamic> ncliBL2RCRC0y1bq) async {
    try {
      c8ZkaRw4rlzkixIFq = ncliBL2RCRC0y1bq
          .map((e) => MLWrwTEsH7mWmgZPCommt.fromMap(e as Map<String, dynamic>))
          .toList();
      await XPskFHZDnriIqlXv();
      notifyListeners();
    } catch (e) {
      debugPrint(
          '${'CS8JDSbX-_Tmt9TR14bLp6ie-aKxctSnqYKO'.cx3hpvXCSg6mF()}: $e');
    }
  }

  Future<void> Tuj1rgvoEtWI61Ec(List<dynamic> CyzIonTmXIA2s1GA) async {
    try {
      XjnQ9Ya3GTHax5Jz = CyzIonTmXIA2s1GA.map(
              (e) => RD5sxRcE0eOB932bFliao.fromMap(e as Map<String, dynamic>))
          .toList();
      await XPskFHZDnriIqlXv();
      notifyListeners();
    } catch (e) {
      debugPrint(
          '${'NUgD68rM8RaykO4Pu2HNxZx18_xiWceAgWCYljw'.cx3hpvXCSg6mF()}: $e');
    }
  }

  Future<void> l83PDcafhhfvj99q(List<dynamic> EEexKHYQhmO9G0Vl) async {
    try {
      tR0XyhJEMWYqEVcI = EEexKHYQhmO9G0Vl.map(
              (e) => NakOK5d2GdM3yvGWMsg.fromMap(e as Map<String, dynamic>))
          .toList();
      await XPskFHZDnriIqlXv();
      notifyListeners();
    } catch (e) {
      debugPrint(
          '${'SC8g4OfX0gGht80EloaiyGue0Pl4bKP0YZNn'.cx3hpvXCSg6mF()}: $e');
    }
  }

  Future<void> d3CaC6Cs7ksQW10cM() async {
    try {
      final oOkaDllDznGRzvCh = NLbGEpZKzMfAbV3k.fkloYnZiRmbRtJ00;

      EGX7N1GxSRqAoJMH.removeWhere(
          (u) => u.fkloYnZiRmbRtJ00 == oOkaDllDznGRzvCh);
      Wiv8PMkiG56nrNZf.removeWhere(
          (p) => p.nlPxQBFl8qKNMmCt == oOkaDllDznGRzvCh);
      c8ZkaRw4rlzkixIFq
          .removeWhere((c) => c.YjHeuERpQWrW2rzh == oOkaDllDznGRzvCh);
      XjnQ9Ya3GTHax5Jz.removeWhere(
          (c) => c.R1DrlWpgkNODxc7I.contains(oOkaDllDznGRzvCh));
      tR0XyhJEMWYqEVcI
          .removeWhere((m) => m.Lmv7ZkAQA6R0SUkQ == oOkaDllDznGRzvCh);

      WMQtbwFITYixyRbr = false;
      await sOjugDTKPqzG6mvBs.PIJbSGMK2PHYyqXg(false);
      await sOjugDTKPqzG6mvBs.wgQhCdcOn2ctJh2z(null);
      await sOjugDTKPqzG6mvBs.iH2W7mRYs9BmEuFE(null);

      NLbGEpZKzMfAbV3k = ZUEqPPxydYoBh7Iz();

      await XPskFHZDnriIqlXv();
      notifyListeners();
    } catch (e) {
      debugPrint(
          '${'Je1snzoRnkLCdWBWo8BWCYzQHDKZvnMhjcA'.cx3hpvXCSg6mF()}: $e');
    }
  }

  // 支付
  Future<void> gtfsLkHm6MMk6spI(String mxYHrTcZZYBUGn43key) async {
    final zeKmXrHVh2MHZiJL = d9dEr1cTYR0dnRD6v.firstWhere(
      (p) => p.k4g89xQIHDro7dyFy == mxYHrTcZZYBUGn43key,
      orElse: () => d9dEr1cTYR0dnRD6v.isNotEmpty
          ? d9dEr1cTYR0dnRD6v.first
          : BJpjHVrAqvtNbCtLDiapack(
              k4g89xQIHDro7dyFy: '', LylHtfRBcO1D0w0M: 0, oY2gDyZaF80kazMx: 0),
    );

    if (zeKmXrHVh2MHZiJL.k4g89xQIHDro7dyFy.isNotEmpty) {
      csUFs2aueMukHnHJ(zeKmXrHVh2MHZiJL);
    }
  }
}
