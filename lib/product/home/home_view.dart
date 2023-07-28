import 'package:flutter/material.dart';
import 'package:statemnexample/counter.dart';
import 'package:statemnexample/product/info/info_view.dart';

class HomeView extends StatelessWidget {
  final Counter counter = Counter();
  final TextEditingController controller = TextEditingController();

  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [_input(controller), _chooseColor(counter), _button(counter, controller, context)],
      ),
    );
  }

  TextField _input(TextEditingController controller) {
    return TextField(
      controller: controller,
    );
  }

  Row _chooseColor(Counter counter) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InkWell(
          onTap: () {
            counter.sendColor(Colors.yellow);
          },
          child: Container(
            color: Colors.yellow,
            height: 50,
            width: 50,
          ),
        ),
        InkWell(
          onTap: () {
            counter.sendColor(Colors.red);
          },
          child: Container(
            color: Colors.red,
            height: 50,
            width: 50,
          ),
        ),
      ],
    );
  }

  ElevatedButton _button(Counter counter, TextEditingController controller, BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        counter.sendText(controller.text);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => InfoView(counter: counter), 
          ),
        );
      },
      child: const SizedBox(
        width: 150,
        height: 50,
        child: Align(alignment: Alignment.center, child: Text("Gönder Datayı")),
      ),
    );
  }
}
