import 'package:flutter/material.dart';
import 'package:flutter_100_screens/common/constants.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('30 Days UI Challenge'),
      ),
      body: ListView.builder(
        itemCount: days.length,
        itemBuilder: (context, index) => ListTile(
          onTap: () =>
              Navigator.pushNamed(context, days[index]['route'] ?? '/'),
          title: Text(
            days[index]['name'] ?? '',
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
