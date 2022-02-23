import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:fluttericon/octicons_icons.dart';

import '../data.dart';

class RightPage extends StatelessWidget {
  const RightPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        child: Row(
          children: [
            Container(
              width: 50,
            ),
            Expanded(
              child: SafeArea(
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: Colors.grey[100]!),
                          ),
                        ),
                        padding: const EdgeInsets.only(
                          left: 16,
                          right: 16,
                          bottom: 8,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  FontAwesome5.hashtag,
                                  size: 20,
                                  color: Colors.white70,
                                ),
                                const Expanded(
                                  child: Text(
                                    " основной",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.more_horiz),
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: Row(
                          children: [
                            const Expanded(child: SizedBox()),
                            Column(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Octicons.pin,
                                      size: 28,
                                      color: Colors.white70,
                                    )),
                                const Text(
                                  "Закреплённые",
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 12,
                                  ),
                                )
                              ],
                            ),
                            const Expanded(child: SizedBox()),
                            Column(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.notifications,
                                      size: 28,
                                      color: Colors.white70,
                                    )),
                                const Text(
                                  "Уведомления",
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 12,
                                  ),
                                )
                              ],
                            ),
                            const Expanded(child: SizedBox()),
                            Column(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.settings,
                                      size: 28,
                                      color: Colors.white70,
                                    )),
                                const Text(
                                  "Настройки",
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 12,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                          ],
                        ),
                      ),
                      Material(
                        child: ListTile(
                          leading: Container(
                            child: const Icon(
                              FontAwesome.user_plus,
                              size: 25,
                              color: Colors.white,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                color: Colors.black54),
                            padding: const EdgeInsets.all(7),
                          ),
                          title: const Text(
                            "Пригласить участников",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.grey[100],
                          child: Material(
                            child: ListView(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(
                                    top: 16,
                                    left: 16,
                                    right: 16,
                                    bottom: 16,
                                  ),
                                  child: Text(
                                    'В СЕТИ — 6',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                ...users.map(
                                  (user) => ListTile(
                                    leading: CircleAvatar(
                                        radius: 22,
                                        foregroundImage: NetworkImage(
                                          user["avatar"]!,
                                        )),
                                    horizontalTitleGap: 0,
                                    title: Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Text(
                                        user["name"]!,
                                        style: TextStyle(
                                          color: Colors.white70,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                    onTap: () {},
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                    top: 16,
                                    left: 16,
                                    right: 16,
                                    bottom: 16,
                                  ),
                                  child: Text(
                                    'НЕ В СЕТИ — 3',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                ...users.map(
                                  (user) => ListTile(
                                    leading: CircleAvatar(
                                        radius: 22,
                                        foregroundImage: NetworkImage(
                                          user["avatar"]!,
                                        )),
                                    horizontalTitleGap: 0,
                                    title: Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Text(
                                        user["name"]!,
                                        style: TextStyle(color: Colors.white70, fontSize: 16,),
                                      ),
                                    ),
                                    onTap: () {},
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
