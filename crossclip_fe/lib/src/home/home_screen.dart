import 'package:crosslip_fe/src/common/constants/dev_consts.dart';
import 'package:crosslip_fe/src/common/widgets/space_chip.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Divyansh's Space"),
          centerTitle: false,
          leading: IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              icon: const Icon(Icons.menu)),
        ),
        body: const Column(
          children: [
            SpaceChip(
              chipText: "temp-space",
              chipColor: DevConsts.spaceChipColor,
              chipEmoji: "🏙️",
            ),
          ],
        ));
  }
}
