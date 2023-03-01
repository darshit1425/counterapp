import 'package:counterapp/screen/counter/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.black,
          title: Text(
            "counter App",
            style: TextStyle(color: Colors.white, fontSize: 22),
          ),
        ),
        body: Center(
          child: Consumer<CounterProvider>(
            builder: (context, value, child) => Text(
              "${value.i}",
              style: TextStyle(fontSize: 25),
            ),
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(80),
          child: Row(
            children: [
              FloatingActionButton(
                backgroundColor: Colors.black,
                onPressed: () {
                  Provider.of<CounterProvider>(context, listen: false)
                      .increment();
                },
                child: Icon(Icons.add),
              ),
              SizedBox(
                width: 15,
              ),
              FloatingActionButton(
                backgroundColor: Colors.black,
                onPressed: () {
                  Provider.of<CounterProvider>(context, listen: false)
                      .decrement();
                },
                child: Icon(
                  Icons.minimize_rounded,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              FloatingActionButton(
                backgroundColor: Colors.black,
                onPressed: () {
                  Provider.of<CounterProvider>(context, listen: false).multi2();
                },
                child: Text("2️⃣*"),
              ),
              SizedBox(
                width: 15,
              ),
              FloatingActionButton(
                backgroundColor: Colors.black,
                onPressed: () {
                  Provider.of<CounterProvider>(context, listen: false).multi3();
                },
                child: Text("3️⃣*"),
              ),
              SizedBox(
                width: 15,
              ),
              FloatingActionButton(
                backgroundColor: Colors.black,
                onPressed: () {
                  Provider.of<CounterProvider>(context, listen: false).multi4();
                },
                child: Text("4️⃣*"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
