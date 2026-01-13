import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../models/tdpFegrWPc3sjlaQ_post.dart';
import '../zzokdet_fangfa/app_state.dart';
import 'widgets/fgS96lU0Lk2hc2aL_pocard.dart';
import '../zzokdet_fangfa/h71YrziMFtWP6pMg_image.dart';

class NigZlPuEaIKSmIsIHomeScreen extends StatefulWidget {
  const NigZlPuEaIKSmIsIHomeScreen({super.key});

  @override
  State<NigZlPuEaIKSmIsIHomeScreen> createState() =>
      _NigZlPuEaIKSmIsIHomeState();
}

class _NigZlPuEaIKSmIsIHomeState extends State<NigZlPuEaIKSmIsIHomeScreen>
    with SingleTickerProviderStateMixin {
  final yj5EEy1DWPw53TsS = const [
    'ALL',
    'Daily Glow',
    'Office Polished',
    'Travel Vibe',
    'Party Shine'
  ];
  late TabController MLKE0dGHtjhhBzE7;

  @override
  void initState() {
    super.initState();
    MLKE0dGHtjhhBzE7 =
        TabController(length: yj5EEy1DWPw53TsS.length, vsync: this);
    MLKE0dGHtjhhBzE7.addListener(KSUuZHrCscBYrzN4);
  }

  @override
  void dispose() {
    MLKE0dGHtjhhBzE7.removeListener(KSUuZHrCscBYrzN4);
    MLKE0dGHtjhhBzE7.dispose();
    super.dispose();
  }

  void KSUuZHrCscBYrzN4() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final dbppyaHLTWf6QAVD = context.watch<AppState>();
    final h2j6pBuA7KnwD51C = dbppyaHLTWf6QAVD.NLbGEpZKzMfAbV3k;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topCenter,
            fit: BoxFit.cover,
            image: Image.asset(
              'assets/images/qcGkzrBc98JyKny6.png',
            ).image,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 50, 8, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 65,
                              height: 65,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: CircleAvatar(
                                  radius: 28,
                                  backgroundImage: UPClh6pI9Z9yX3xQ(
                                      h2j6pBuA7KnwD51C.RmXHAp70ovHNBN4U),
                                ),
                              ),
                            ),
                            SizedBox(width: 12),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hello!👋',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  h2j6pBuA7KnwD51C.AWWxvC6FbYICMs9P,
                                  style: GoogleFonts.montserrat(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Your exclusive',
                              style: GoogleFonts.montserrat(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                letterSpacing: -0.8,
                              ),
                            ),
                            Text(
                              'jewelry paired ',
                              style: GoogleFonts.montserrat(
                                fontSize: 24,
                                fontStyle: FontStyle.italic,
                                letterSpacing: -0.8,
                              ),
                            ),
                            Text(
                              'with AI assistant',
                              style: GoogleFonts.montserrat(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                letterSpacing: -0.8,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    'assets/images/gYFdrTokerNA7UtH.png',
                    width: 140,
                    height: 140,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () => context.push('/h5/chat-view'),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top:
                              MediaQuery.sizeOf(context).height > 800 ? 80 : 50,
                          left: 20),
                      child: Text(
                        yj5EEy1DWPw53TsS[MLKE0dGHtjhhBzE7.index],
                        style: GoogleFonts.montserrat(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuery.sizeOf(context).height > 800 ? 25 : 0,
                      ),
                      child: Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            width: 160,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30),
                              ),
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 187, 215, 255),
                                  Color(0xFF1C7BFF),
                                ],
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Go unlock',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                    fontStyle: FontStyle.italic,
                                    letterSpacing: -0.4,
                                  ),
                                ),
                                SizedBox(width: 6),
                                Image.asset(
                                  'assets/images/JjKkUBqOxtZJlzSa.png',
                                  width: 28,
                                  height: 28,
                                ),
                                SizedBox(width: 8),
                              ],
                            ),
                          ),
                          Image.asset(
                            'assets/images/y0jTlAELxMOQxaiP.png',
                            width: 50,
                            height: 50,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Container(
              height: 1,
              color: Colors.white.withOpacity(0.8),
            ),
            C6U295KaS4SvA74fz(
              t73u5Log54hc2t6Ea: yj5EEy1DWPw53TsS,
              yZ4druC02Kkw2AHd: MLKE0dGHtjhhBzE7,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TabBarView(
                  controller: MLKE0dGHtjhhBzE7,
                  children: yj5EEy1DWPw53TsS
                      .map(
                        (c) => MYZwL8ZDFgDh9zvn(
                          hOwkQTL5CPB4SAJl: dbppyaHLTWf6QAVD.fSSOym06dKmPMy5Y(c,
                              yozkeCEmzCeGXNNu: true),
                          uIdr98APeLRw2QYS: dbppyaHLTWf6QAVD,
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class C6U295KaS4SvA74fz extends StatefulWidget {
  const C6U295KaS4SvA74fz({
    required this.t73u5Log54hc2t6Ea,
    required this.yZ4druC02Kkw2AHd,
  });

  final List<String> t73u5Log54hc2t6Ea;
  final TabController yZ4druC02Kkw2AHd;

  @override
  State<C6U295KaS4SvA74fz> createState() => _C6U295KaS4SvA74fzState();
}

class _C6U295KaS4SvA74fzState extends State<C6U295KaS4SvA74fz> {
  @override
  void initState() {
    super.initState();
    widget.yZ4druC02Kkw2AHd.addListener(KSUuZHrCscBYrzN4);
  }

  @override
  void dispose() {
    widget.yZ4druC02Kkw2AHd.removeListener(KSUuZHrCscBYrzN4);
    super.dispose();
  }

  void KSUuZHrCscBYrzN4() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: widget.t73u5Log54hc2t6Ea.asMap().entries.map((entry) {
            final enYRyfqlRnGL60JP = entry.key;
            final uuGidBSq5fZ7eaFX = entry.value;
            final s03kbT4tqG9t3dEss =
                widget.yZ4druC02Kkw2AHd.index == enYRyfqlRnGL60JP;

            return Container(
              constraints: BoxConstraints(minWidth: 80),
              child: Stack(
                children: [
                  if (enYRyfqlRnGL60JP < widget.t73u5Log54hc2t6Ea.length - 1)
                    Positioned(
                      right: 0,
                      top: 0,
                      bottom: 0,
                      child: Container(
                        width: 1,
                        color: Colors.white.withOpacity(0.8),
                      ),
                    ),
                  GestureDetector(
                    onTap: () {
                      widget.yZ4druC02Kkw2AHd.animateTo(enYRyfqlRnGL60JP);
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: enYRyfqlRnGL60JP == 0 ? 10 : 0),
                          child: Text(
                            uuGidBSq5fZ7eaFX,
                            style: GoogleFonts.montserrat(
                              fontSize: 14,
                              fontWeight: s03kbT4tqG9t3dEss
                                  ? FontWeight.w600
                                  : FontWeight.w400,
                              fontStyle: FontStyle.italic,
                              color: Colors.white,
                            ),
                            overflow: TextOverflow.visible,
                            softWrap: false,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class MYZwL8ZDFgDh9zvn extends StatelessWidget {
  const MYZwL8ZDFgDh9zvn(
      {required this.hOwkQTL5CPB4SAJl, required this.uIdr98APeLRw2QYS});
  final List<TdpFegrWPc3sjlaQPost> hOwkQTL5CPB4SAJl;
  final AppState uIdr98APeLRw2QYS;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(bottom: 120, top: 16),
      itemCount: hOwkQTL5CPB4SAJl.length,
      itemBuilder: (context, XoAVzM62ZcvpXjEj) {
        final tPcnVXlaO4IUgznx = hOwkQTL5CPB4SAJl[XoAVzM62ZcvpXjEj];
        final ituTRNLVBAFlO55r =
            uIdr98APeLRw2QYS.IyC8CUrMp1zDTN8h(tPcnVXlaO4IUgznx.nlPxQBFl8qKNMmCt);
        return FgS96lU0Lk2hc2aLPocard(
          p84Dja5VAwuAOcrSB: tPcnVXlaO4IUgznx,
          X7bbhydcsnABQBSz: ituTRNLVBAFlO55r,
          XIHEOpn9N8S2Ra4I: () {
            if (tPcnVXlaO4IUgznx.ocN7sEFUY2qW0Zgr == 0) {
              context.push(
                  '/h5/article-detail?id=${tPcnVXlaO4IUgznx.qCzdv3cLqVGfralN}');
            } else {
              context.push(
                  '/h5/short-video?id=${tPcnVXlaO4IUgznx.qCzdv3cLqVGfralN}');
            }
          },
        );
      },
    );
  }
}
