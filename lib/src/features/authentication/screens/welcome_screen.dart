import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login_valid/src/constants/imgs.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('.appable/'),
          leading: const Icon(Icons.ondemand_video_outlined),
        ),
        backgroundColor: Colors.deepPurple,
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView(children: [
            Text(
              'Heading',
              style: Theme.of(context).textTheme.headline2,
            ),
            Text(
              'SubHeading',
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              'Paragraph',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            ElevatedButton(onPressed: () {}, child: const Text('Login')),
            OutlinedButton(
                onPressed: () {}, child: const Text('Esqueceu a senha?')),
            const SizedBox(
              height: 250,
              child: Image(
                image: AssetImage(tOnBoardingImg3),
                fit: BoxFit.contain,
              ),
            ),
          ]),
        ));
  }
}
