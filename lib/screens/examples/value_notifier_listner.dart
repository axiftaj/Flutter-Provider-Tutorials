import 'package:flutter/material.dart';


class ValueNotifierListener extends StatelessWidget {

  ValueNotifierListener({Key? key}) : super(key: key);

  late ValueNotifier<int> _counter = ValueNotifier<int>(0) ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ValueListenableBuilder(
          valueListenable: _counter,
          builder: (context, value, child){
            return Text(
              'You had tapped $value.',
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _counter.value++,
      ),
    );
  }
}
