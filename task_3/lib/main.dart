import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Circular Conunter'),
    );
  }
}
@override
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0; 

  void _incrementCounter() {
     if (_counter >= 10){
      setState(() {
        _counter = 0;
      });
    }
    else{
      setState(() {
      _counter++;
    });
    }
  }

  void _decreamentCounter() {
    if (_counter <= 0){
      setState(() {
        _counter = 10;
      });
    }
    else{
      setState(() {
      _counter--;
    });
    }
    
    
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
       
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'you Clicked the button',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 30),
            child:  FloatingActionButton(
            onPressed: _decreamentCounter,
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          )
          )
         ,
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ),
      
      
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
