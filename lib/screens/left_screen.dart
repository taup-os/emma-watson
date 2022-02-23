import 'package:flutter/material.dart';
import 'package:fluttericon/octicons_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../data.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:fluttericon/fontelico_icons.dart';
import 'package:fluttericon/linecons_icons.dart';

final myIcons = const <Widget>[
  const Icon(Typicons.attention),
  const Icon(Fontelico.emo_wink),
  const Icon(Linecons.globe),
];

class LeftPage extends StatelessWidget {
  const LeftPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            SizedBox(
              width: 80,
              child: ListView(
                children: servers
                    .map(
                      (server) => Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 30,
                          foregroundImage: NetworkImage(server),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            Expanded(
              child: SafeArea(
                child: Container(
                  decoration: BoxDecoration(
                    // color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.grey[100]!,
                            ),
                          ),
                        ),
                        padding: const EdgeInsets.only(
                            top: 20, left: 16, right: 16, bottom: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Expanded(
                                  child: Text(
                                    "Braven\'s discord",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.more_vert,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Container(
                                width: 225,
                                // decoration: BoxDecoration(
                                //   borderRadius: BorderRadius.circular(1),
                                // ),

                                color: Color(0xFF35383f),
                                // decoration: BoxDecoration(
                                //   borderRadius: BorderRadius.circular(3),
                                // ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 15,
                                ),

                                child: const Text(
                                  'Create Instant Invite',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            // const Text(
                            //   "success is approximately equal to past good",
                            //   style: TextStyle(color: Colors.grey),
                            // )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Material(
                          // // / ////////////////////////////////////////////////////////// color

                          child: ListView(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                    Row(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.arrow_drop_down,
                                            size: 25,
                                            color: Colors.white70,
                                          ),
                                        ),
                                        const Text(
                                          'BOT-COMMANDS',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Octicons.plus,
                                        size: 25, color: Colors.white70),
                                  ),
                                ],
                              ),
                              ...[
                                "bot-commands",
                                "pokelog",
                                "spam",
                                "music",
                              ].map(
                                (channel) => ListTile(
                                  leading: const Icon(
                                    FontAwesomeIcons.hashtag,
                                    size: 20,
                                    color: Colors.white70,
                                  ),
                                  horizontalTitleGap: 0,
                                  title: Text(
                                    channel,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  onTap: () {},
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.arrow_drop_down,
                                          size: 25,
                                          color: Colors.white70,
                                        ),
                                      ),
                                      const Text(
                                        'VOICE CHANNELS',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Octicons.plus,
                                        size: 25, color: Colors.white70),
                                  ),
                                ],
                              ),
                              ...["General", "bravens chill zone"].map(
                                (channel) => ListTile(
                                  leading: const Icon(
                                    Icons.volume_up,
                                    color: Colors.white70,
                                  ),
                                  horizontalTitleGap: 0,
                                  title: Text(
                                    channel,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  onTap: () {},
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.arrow_drop_down,
                                          size: 25,
                                          color: Colors.white70,
                                        ),
                                      ),
                                      const Text(
                                        'VIDEO CRAP',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Octicons.plus,
                                      size: 25,
                                      color: Colors.white70,
                                    ),
                                  ),
                                ],
                              ),
                              ...[
                                "meme",
                              ].map(
                                (channel) => ListTile(
                                  leading: const Icon(
                                    FontAwesomeIcons.hashtag,
                                    size: 20,
                                    color: Colors.white70,
                                  ),
                                  horizontalTitleGap: 0,
                                  title: Text(
                                    channel,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  onTap: () {},
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: 50,
            ),
          ],
        ),
      ),
    );
  }
}
