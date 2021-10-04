import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridViewPage extends StatefulWidget {
  const GridViewPage({Key? key}) : super(key: key);

  @override
  _GridViewPageState createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  @override
  Widget build(BuildContext context) {
    final ScrollController _controller = ScrollController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView'),
      ),
      body: Scrollbar(
        isAlwaysShown: true,
        controller: _controller,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: GridView.builder(
              controller: _controller,
              itemCount: 100,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  crossAxisCount: 3),
              itemBuilder: (BuildContext context, int index) {
                return Container(color: Colors.blue, child: Text('$index'));
              }),
        ),
      ),
    );
  }
}
