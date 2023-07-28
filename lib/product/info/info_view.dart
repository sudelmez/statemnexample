import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemnexample/modules/provider/provider_manager.dart';

class InfoView extends StatelessWidget {
  const InfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provide = Provider.of<ProviderManager>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: provide.color,
      body: Align(
        alignment: Alignment.center,
        child: Text(provide.text),
      ),
    );
  }
}
