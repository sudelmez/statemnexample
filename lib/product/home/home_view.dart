import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextField(
            controller: controller,
          ),
          ElevatedButton(
              onPressed: () {},
              child: _button())
        ],
      ),
    );
  }

  SizedBox _button() {
    return const SizedBox(
              width: 150,
              height: 50,
              child: Align(alignment: Alignment.center, child: Text("Gönder Datayı")),
            );
  }
}
