import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:zoryo/models/tdpFegrWPc3sjlaQ_post.dart';
import 'package:zoryo/models/u2749HToRfgbLVPrM_user.dart';

import '../zzokdet_fangfa/app_state.dart';
import '../zzokdet_fangfa/h71YrziMFtWP6pMg_image.dart';

class GQnFc05HatX1P7DjDiscoverScreen extends StatelessWidget {
  const GQnFc05HatX1P7DjDiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final M5m3TFaFQYjAB0y6 = context.watch<AppState>();
    final s9a7WDEopR8oyCMM = M5m3TFaFQYjAB0y6.glufK0J7UE7AEAHL
        .where((p) => p.ocN7sEFUY2qW0Zgr == 1)
        .toList();
    final G9WPQG1yhP3gDhWj = 1 + s9a7WDEopR8oyCMM.length;

    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 136,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: Image.asset('assets/images/T6RnpSSbVbCaZN78.png').image,
                fit: BoxFit.fill,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  const SizedBox(width: 20),
                  const Text(
                    'Discover',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: MasonryGridView.count(
                padding: const EdgeInsets.only(bottom: 150, top: 20),
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                itemCount: G9WPQG1yhP3gDhWj,
                itemBuilder: (context, hU9nW0JGoJ406H3v) {
                  if (hU9nW0JGoJ406H3v == 0) {
                    return Rs92CVxJ3tY8zlbfH();
                  } else {
                    final p4VX3HxSp3Us5J47B =
                        s9a7WDEopR8oyCMM[hU9nW0JGoJ406H3v - 1];
                    final AVEv07PnlXoqJNp8 = M5m3TFaFQYjAB0y6.IyC8CUrMp1zDTN8h(
                        p4VX3HxSp3Us5J47B.nlPxQBFl8qKNMmCt);
                    return ZP6vWXov4x4t8hMq(
                        pQu6CNhF88ILYG6W: p4VX3HxSp3Us5J47B,
                        aFhwquwHdAO8AVPK: AVEv07PnlXoqJNp8);
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Rs92CVxJ3tY8zlbfH extends StatelessWidget {
  const Rs92CVxJ3tY8zlbfH();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push('/h5/publish-video');
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: AspectRatio(
          aspectRatio: 1.0,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color.fromARGB(255, 141, 72, 30),
                  const Color.fromARGB(255, 24, 24, 24),
                  const Color.fromARGB(255, 9, 36, 74),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/whx0uhWW7CLyGm0T.png',
                    width: 60,
                    height: 60,
                  ),
                  const SizedBox(height: 6),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                      children: [
                        TextSpan(text: 'Release '),
                        TextSpan(
                          text: 'your',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        TextSpan(
                          text: ' work',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ZP6vWXov4x4t8hMq extends StatelessWidget {
  const ZP6vWXov4x4t8hMq({
    required this.pQu6CNhF88ILYG6W,
    required this.aFhwquwHdAO8AVPK,
  });
  final TdpFegrWPc3sjlaQPost pQu6CNhF88ILYG6W;
  final U2749HToRfgbLVPrMUser aFhwquwHdAO8AVPK;

  @override
  Widget build(BuildContext context) {
    final Y5Co9BDgsV7gFhAd = context.watch<AppState>();
    final E8Kge6C0yooxRHs3 = Y5Co9BDgsV7gFhAd.NLbGEpZKzMfAbV3k;

    final ioMpsWZG5uUiLVlb = E8Kge6C0yooxRHs3.IibbF2RfvAxYkcQo.contains(
        pQu6CNhF88ILYG6W.qCzdv3cLqVGfralN);

    return GestureDetector(
      onTap: () {
        context.push('/h5/short-video?id=${pQu6CNhF88ILYG6W.qCzdv3cLqVGfralN}');
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.white,
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Stack(
                children: [
                  AspectRatio(
                    aspectRatio: 0.9,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        SnLjQVJIDwvDQeiSMimg(
                          dIJEHnEuK8jQOYZ6: pQu6CNhF88ILYG6W.kitYNCH7Xp32Jfbn,
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
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFFF8133)),
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: CircleAvatar(
                        backgroundImage: UPClh6pI9Z9yX3xQ(
                            aFhwquwHdAO8AVPK.RmXHAp70ovHNBN4U),
                        radius: 14,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      aFhwquwHdAO8AVPK.AWWxvC6FbYICMs9P,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        ioMpsWZG5uUiLVlb
                            ? 'assets/images/imUilxE1Sy10vMHMblue.png'
                            : 'assets/images/imUilxE1Sy10vMHMhui.png',
                        width: 20,
                        height: 20,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        pQu6CNhF88ILYG6W.jShz1CDkEjVxqPS0 > 1000
                            ? '${(pQu6CNhF88ILYG6W.jShz1CDkEjVxqPS0 / 1000).toStringAsFixed(pQu6CNhF88ILYG6W.jShz1CDkEjVxqPS0 % 1000 == 0 ? 0 : 1)}k'
                            : '${pQu6CNhF88ILYG6W.jShz1CDkEjVxqPS0}',
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
