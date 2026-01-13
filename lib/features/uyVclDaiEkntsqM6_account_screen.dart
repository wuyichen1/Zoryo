import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:zoryo/models/tdpFegrWPc3sjlaQ_post.dart';
import 'package:zoryo/models/u2749HToRfgbLVPrM_user.dart';

import '../models/p8JqmePjljoN7whd3_puboption.dart';
import '../zzokdet_fangfa/app_state.dart';
import '../zzokdet_fangfa/h71YrziMFtWP6pMg_image.dart';

class UyVclDaiEkntsqM6AccountScreen extends StatelessWidget {
  const UyVclDaiEkntsqM6AccountScreen({super.key, this.Gx36y4u0jtoFWw8G});
  final String? Gx36y4u0jtoFWw8G;

  String lRG45IrTUKLY2W0x(int iQaE16skPtoq6hDY,
      List<P8JqmePjljoN7whd3PublishOption> vgk5xTvKYljV9z9v) {
    try {
      final MYyiD2A120pOCo8a = vgk5xTvKYljV9z9v.firstWhere(
        (opt) => opt.AVlrJJlyQVJKJinw == iQaE16skPtoq6hDY,
      );
      return MYyiD2A120pOCo8a.dLZro0xH62HF5exT;
    } catch (e) {
      return 'Theme';
    }
  }

  @override
  Widget build(BuildContext context) {
    final CHNKDOsza1mQBmav = context.watch<AppState>();
    final mK8mzJaKsXTrtvBk = Gx36y4u0jtoFWw8G == null
        ? CHNKDOsza1mQBmav.NLbGEpZKzMfAbV3k
        : CHNKDOsza1mQBmav.IyC8CUrMp1zDTN8h(Gx36y4u0jtoFWw8G!);
    final s8Nr1MwxZaX9dmPPZ = mK8mzJaKsXTrtvBk.fkloYnZiRmbRtJ00 ==
        CHNKDOsza1mQBmav.NLbGEpZKzMfAbV3k.fkloYnZiRmbRtJ00;
    final vdZiFVMVMRihJLVO =
        CHNKDOsza1mQBmav.p23esqfVUGjNMLsVG(mK8mzJaKsXTrtvBk.fkloYnZiRmbRtJ00)
            .where((p) => p.ocN7sEFUY2qW0Zgr == 1)
            .toList();

    return Scaffold(
      backgroundColor: Color(0xFF0E080F),
      body: Stack(
        children: [
          Stack(
            children: [
              Container(
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image:
                        UPClh6pI9Z9yX3xQ(mK8mzJaKsXTrtvBk.RmXHAp70ovHNBN4U),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.4),
                      BlendMode.darken,
                    ),
                  ),
                ),
              ),
              Container(
                height: 300,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Color(0xFF0E080F),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 50),
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white70,
                          width: 2,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: UPClh6pI9Z9yX3xQ(
                            mK8mzJaKsXTrtvBk.RmXHAp70ovHNBN4U),
                      ),
                    ),
                    if (s8Nr1MwxZaX9dmPPZ)
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: GestureDetector(
                          onTap: () {
                            context.push('/h5/edit-info');
                          },
                          child: Image.asset(
                            'assets/images/NpRm3VLh4uF56aw1.png',
                            width: 24,
                            height: 24,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 12),
                Text(
                  mK8mzJaKsXTrtvBk.AWWxvC6FbYICMs9P,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 1,
                        color: Colors.white,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              SizedBox(height: 9),
                              Text(
                                '${vdZiFVMVMRihJLVO.length}',
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 4),
                              const Text(
                                'works',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white70,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: 1,
                            height: 55,
                            color: Colors.white,
                            margin: const EdgeInsets.symmetric(horizontal: 16),
                          ),
                          GestureDetector(
                            onTap: () => context.push(
                                '/h5/fans?id=${mK8mzJaKsXTrtvBk.fkloYnZiRmbRtJ00}'),
                            child: Column(
                              children: [
                                SizedBox(height: 8),
                                Text(
                                  '${mK8mzJaKsXTrtvBk.f6YraHIhR7V90HhtY}',
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  mK8mzJaKsXTrtvBk.f6YraHIhR7V90HhtY > 1
                                      ? 'Fans'
                                      : 'Fan',
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.white70,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 1,
                            height: 55,
                            color: Colors.white,
                            margin: const EdgeInsets.symmetric(horizontal: 16),
                          ),
                          GestureDetector(
                            onTap: () => context.push(
                                '/h5/follow?id=${mK8mzJaKsXTrtvBk.fkloYnZiRmbRtJ00}'),
                            child: Column(
                              children: [
                                SizedBox(height: 8),
                                Text(
                                  '${mK8mzJaKsXTrtvBk.fXA564UJNy9pbJeS}',
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                const Text(
                                  'Follow',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white70,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                if (s8Nr1MwxZaX9dmPPZ)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            mK8mzJaKsXTrtvBk.Sfy5ovPIlV0PS5C2.isNotEmpty
                                ? mK8mzJaKsXTrtvBk.Sfy5ovPIlV0PS5C2
                                : 'Life is a journey, embrace it.',
                            style: const TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        GestureDetector(
                          onTap: () => context.push('/h5/gold-coin'),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 12),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              'Balance: ${CHNKDOsza1mQBmav.NLbGEpZKzMfAbV3k.IlyH5k6lZ7fVAHfQ}',
                              style: const TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                else
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          final c0fFUockhBu76lufa =
                              CHNKDOsza1mQBmav.g91zzufhoBusla1N4(
                                  mK8mzJaKsXTrtvBk.fkloYnZiRmbRtJ00);
                          if (c0fFUockhBu76lufa != null) {
                            context.push(
                                '/h5/private-chat?id=${c0fFUockhBu76lufa.c5sk5SraIUZ47JRVo}');
                          }
                        },
                        child: const Text('Chat'),
                      ),
                    ),
                  ),
                const SizedBox(height: 32),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: const [
                      Text(
                        'Works',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: vdZiFVMVMRihJLVO.isEmpty
                      ? Padding(
                          padding: EdgeInsets.only(top: 32.0, bottom: 130),
                          child: Image.asset(
                            'assets/images/Ub0NxSu42HA1fLtP.png',
                            width: 200,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        )
                      : ListView.builder(
                          padding: const EdgeInsets.only(bottom: 100, top: 8),
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: vdZiFVMVMRihJLVO.length,
                          itemBuilder: (context, index) {
                            final p3SClBtTYf61FL5B = vdZiFVMVMRihJLVO[index];
                            final eaon3XCUFMd1dPnA = lRG45IrTUKLY2W0x(
                              p3SClBtTYf61FL5B.Q5NZavasJD1R1f99,
                              CHNKDOsza1mQBmav.p1BbHOzt95PwWRrUg,
                            );
                            return V3AS6r2Px2546dkda(
                              p6vB6CxItETghrzTb: p3SClBtTYf61FL5B,
                              CIs93t2DJA3Wi2IK: mK8mzJaKsXTrtvBk,
                              eaon3XCUFMd1dPnA: eaon3XCUFMd1dPnA,
                              TZ43NPuGtKOxIFBr: () {
                                context.push(
                                    '/h5/short-video?id=${p3SClBtTYf61FL5B.qCzdv3cLqVGfralN}');
                              },
                            );
                          },
                        ),
                ),
                const SizedBox(height: 32),
              ],
            ),
          ),
          Positioned(
            right: 20,
            top: 50,
            child: GestureDetector(
              onTap: () => context.push('/h5/setup-page'),
              child: Image.asset(
                'assets/images/QCSjqmRHBZ4WlARW.png',
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class V3AS6r2Px2546dkda extends StatelessWidget {
  const V3AS6r2Px2546dkda({
    super.key,
    required this.p6vB6CxItETghrzTb,
    required this.CIs93t2DJA3Wi2IK,
    required this.eaon3XCUFMd1dPnA,
    this.TZ43NPuGtKOxIFBr,
  });

  final TdpFegrWPc3sjlaQPost p6vB6CxItETghrzTb;
  final U2749HToRfgbLVPrMUser CIs93t2DJA3Wi2IK;
  final String eaon3XCUFMd1dPnA;
  final VoidCallback? TZ43NPuGtKOxIFBr;

  @override
  Widget build(BuildContext context) {
    final aGVzKphSMYXsk8Ae = context.watch<AppState>();
    final PQZn4CdRh4Qd7Fha = aGVzKphSMYXsk8Ae.NLbGEpZKzMfAbV3k;

    final Ut6AWW7DNHvp6YTd = PQZn4CdRh4Qd7Fha.IibbF2RfvAxYkcQo.contains(
        p6vB6CxItETghrzTb.qCzdv3cLqVGfralN);

    return GestureDetector(
      onTap: TZ43NPuGtKOxIFBr,
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          color: const Color(0xFF011733),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 18,
                    backgroundImage:
                        UPClh6pI9Z9yX3xQ(CIs93t2DJA3Wi2IK.RmXHAp70ovHNBN4U),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    CIs93t2DJA3Wi2IK.AWWxvC6FbYICMs9P,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Color(0xFF4F4B50),
                      borderRadius: BorderRadius.circular(38),
                    ),
                    child: Text(
                      '# $eaon3XCUFMd1dPnA',
                      style: const TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: AspectRatio(
                      aspectRatio: 16 / 10,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          SnLjQVJIDwvDQeiSMimg(
                            dIJEHnEuK8jQOYZ6: p6vB6CxItETghrzTb.DFaJPr04YQi08GFg.isNotEmpty
                                ? p6vB6CxItETghrzTb.DFaJPr04YQi08GFg.first
                                : '',
                          ),
                          const Center(
                            child: Icon(
                              Icons.play_arrow_rounded,
                              color: Colors.white,
                              size: 48,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: Container(
                      padding: EdgeInsets.only(right: 12, top: 8, bottom: 8),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset(
                            Ut6AWW7DNHvp6YTd
                                ? 'assets/images/imUilxE1Sy10vMHMpink.png'
                                : 'assets/images/imUilxE1Sy10vMHMhui.png',
                            width: 35,
                            height: 35,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            p6vB6CxItETghrzTb.jShz1CDkEjVxqPS0 > 1000
                                ? '${(p6vB6CxItETghrzTb.jShz1CDkEjVxqPS0 / 1000).toStringAsFixed(p6vB6CxItETghrzTb.jShz1CDkEjVxqPS0 % 1000 == 0 ? 0 : 1)}k'
                                : '${p6vB6CxItETghrzTb.jShz1CDkEjVxqPS0}',
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
