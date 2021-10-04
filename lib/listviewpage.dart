import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    final ScrollController _controller = ScrollController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('List View'),
      ),
      body: Scrollbar(
        isAlwaysShown: true,
        thickness: 5,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.builder(
            controller: _controller,
            itemCount: 100,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('$index.satır'),
              );
            },
          ),
        ),
      ),
    );
  }
}
