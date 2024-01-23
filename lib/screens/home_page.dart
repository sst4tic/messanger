import 'package:avatars/avatars.dart';
import 'package:flutter/material.dart';

import '../models/search_model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: searchModel(context: context, onSubmitted: (val) {}),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Чаты', style: TextStyle(fontSize: 30)),
        centerTitle: false,
      ),
      body:
        // generate list of chats
        ListView.separated(
          padding: const EdgeInsets.only(top: 8),
          itemCount: 10,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Chat $index'),
              subtitle: Text('Last message'),
              leading:    Avatar(
                placeholderColors: const [Color.fromRGBO(232, 69, 69, 1), Color.fromRGBO(69, 232, 69, 1), Color.fromRGBO(69, 69, 232, 1)],
                shape: AvatarShape.circle(20),
                name: 'a a',
                textStyle:
                const TextStyle(fontSize: 20, color: Colors.white),
                margin: const EdgeInsets.all(5),
              ),
              trailing: const Text('Вчера'),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider();
          }
        ),
    );
  }
}