import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  void _incrementCounter() {
    print("Apertou o botãozeidre");
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("widget.title"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              AppLocalizations.of(context)?.helloWorld,
            ),
            Text(
              'Você apertou o botão esse tantão aqui:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(
              child: Text('Navegar'),
              onPressed: () {
                debugPrint("Navega!");
                Navigator.pushNamed(context, '/login');
              },
            ),
            ElevatedButton(
              child: Text('Entrar'),
              onPressed: () {
                AlertDialog(
                  title: Text('Faça o login'),
                );
                debugPrint("Troca a linguagem para en!");
                AppLocalizations.delegate.load(Locale("en"));
              },
            ),
            ElevatedButton(
              child: Text('Português'),
              onPressed: () {
                debugPrint("Troca a linguagem para pt!");
                AppLocalizations.delegate.load(Locale("pt"));
              },
            ),
            ElevatedButton(
              child: Text('Espanhol'),
              onPressed: () {
                debugPrint("Troca a linguagem para es!");
                AppLocalizations.delegate.load(Locale("es"));
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
