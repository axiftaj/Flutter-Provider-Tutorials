import 'package:flutter/material.dart';


class StateFullWidgetScreen extends StatefulWidget {
  const StateFullWidgetScreen({Key? key}) : super(key: key);

  @override
  _StateFullWidgetScreenState createState() => _StateFullWidgetScreenState();
}

class _StateFullWidgetScreenState extends State<StateFullWidgetScreen> {

  int _counter = 0;

  void _incrementCounter() {
    _counter++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateless widget'),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

}
