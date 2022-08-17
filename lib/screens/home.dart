import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_pomodoro/store/contador.store.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = ContadorStore();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contador"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            const SizedBox(
              height: 2,
            ),
            Observer(
              builder: (_) => Text(
                '${store.contador}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            ElevatedButton(
              onPressed: store.resetar,
              child: Text(
                "Reset",
                style: TextStyle(
                  color: Colors.red.shade400,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: store.incrementar,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
