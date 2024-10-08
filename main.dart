import 'package:flutter/material.dart';


class MyColors {
 static const Color azul_fundo = rgba(10,14,33,255),

azul button press = rgba(17,19,40,255),

azul button no press = rgba(29,30,48,255),

rosa = rgba(235,21,85,255),
}

void main() {
  runApp(
    const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       scaffoldBackgroundColor: Colors.grey.shade900,
        primarySwatch: Colors.blue,
        primaryColor: Colors.blue.shade900,
      ),
      
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(widget.title),
      ),
      body: Center(
      
        child: Column(
         
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
            Flexible(
              child: Row(
                children: [
                  

              ],
              ) 
              ),
            Flexible(
              child: Container(
                child:PesoSlider() ,),
              
              ),
            Flexible(
              child: 
              Row(
                

              )
              ),
              TextButton(
                style: ButtonStyle(
                  
                ),
                onPressed: () {}, 
                child: Text( 'oi',))
            
          ],
        ),
      ),

    );
  }
}


class IconButton extends StatelessWidget {
  const IconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        children: [
          
      ]),
    );
  }
}



class PesoSlider extends StatefulWidget {
  const PesoSlider({super.key});

  @override
  State<PesoSlider> createState() => _PesoSliderState();
}


class _PesoSliderState extends State<PesoSlider> {
  double _currentSliderValue = 100;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body:
      Column(
        children: [
          Text(
            'oooi',
          ),
          Slider(
        value: _currentSliderValue,
        max: 250,
        label: _currentSliderValue.toString(),
        onChanged: (double value) {
          setState(() {
            _currentSliderValue = value;
          });
        }),
      ],
      ),
    );
  } 
}

