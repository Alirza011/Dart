import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(List<String> args) {
  runApp(WidgetDet());
}

class WidgetDet extends StatefulWidget {//statful vidget yaratma ve statelessii statefula cevirme

  @override
  State<WidgetDet> createState() => _WidgetDetState();
}

class _WidgetDetState extends State<WidgetDet> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          //app in headeridir
          title: Text(
            "Salam",
          ),
          centerTitle: true, //basligin yerini mueyyyen edir
          backgroundColor: Color.fromARGB(255, 211, 60, 15),
          leading: Text("Menu"), //solda acilan menu uchun istafde olunur
        ),
        body: Center(
          child: Text(value.toString()),
        ),
        floatingActionButton: FloatingActionButton(
          //Asagda tek istifade duymesi yaratmag ucun olan widgetdir
          onPressed: () {
            setState(() {
              value = value + 1;
            });
            
          }, //button bu formada yaranir
          child: const Icon(Icons.search),
        ),
      ),
    );
  }
}

/*class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(value.toString()),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  value = value + 1;
                });
  
              },
              child: Text('KLIKLE'),
            )
          ],
        )),
      ),
    );
  }
}*/
