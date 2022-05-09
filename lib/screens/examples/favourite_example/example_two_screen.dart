import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorials/provider/example_two_provider.dart';
import 'package:provider_tutorials/screens/examples/favourite_example/favourite_screen.dart';

class ExampleTwoScreen extends StatefulWidget {
  const ExampleTwoScreen({Key? key}) : super(key: key);

  @override
  _ExampleTwoScreenState createState() => _ExampleTwoScreenState();
}

class _ExampleTwoScreenState extends State<ExampleTwoScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example Two'),
        centerTitle: true,
        actions: [
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const FavouriteScreen() ));
              },
              child: const Icon(Icons.favorite)),
          const SizedBox(width: 20,)

        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index){
                return Card(
                  child: Consumer<ExampleTwoProvider>(builder: (context, value, child){
                    return ListTile(
                      onTap: (){
                        if(value.selectedValue.contains(index)){
                          value.removeValue(index);
                        }else {
                          value.addValue(index);
                        }
                      },
                      title: Text('item '+index.toString(),),
                      trailing: Icon( value.selectedValue.contains(index) ? Icons.favorite: Icons.favorite_border_outlined),
                    );
                  }),
                );


          }))
        ],
      ),
    );
  }
}
