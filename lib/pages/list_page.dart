import 'package:flutter/material.dart';
import 'package:flutter_100_screens/common/constants.dart';
import 'package:flutter_100_screens/common/enums.dart';

class ListPage extends StatefulWidget {
  const ListPage({
    Key? key,
  }) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('30 Days UI Challenge'),
      ),
      body: ListView.builder(
        itemCount: days.length,
        itemBuilder: (context, index) {
          final day = days[index];
          return ListTile(
            leading: Text('${day.day}'),
            onTap: () => Navigator.pushNamed(context, day.appRoutes.path),
            title: Text(day.name),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
