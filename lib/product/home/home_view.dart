import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemnexample/modules/provider/provider_manager.dart';
import 'package:statemnexample/product/info/info_view.dart';

class HomeView extends StatelessWidget {
  final TextEditingController controller = TextEditingController();

  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final provide = Provider.of<ProviderManager>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [_input(controller), _chooseColor(provide), _button( controller, context,provide)],
      ),
    );
  }

  TextField _input(TextEditingController controller) {
    return TextField(
      controller: controller,
    );
  }

  Row _chooseColor(ProviderManager provide) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InkWell(
          onTap: () {
            provide.sendColor(Colors.yellow);
          },
          child: Container(
            color: Colors.yellow,
            height: 50,
            width: 50,
          ),
        ),
        InkWell(
          onTap: () {
            provide.sendColor(Colors.red);
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

  ElevatedButton _button( TextEditingController controller, BuildContext context,ProviderManager provide) {
    return ElevatedButton(
      onPressed: () {
        provide.sendText(controller.text);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => InfoView(), 
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
