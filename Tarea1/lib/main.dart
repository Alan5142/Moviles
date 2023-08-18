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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Mc Flutter'),
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
  bool _accessibilityButtonState = false;
  bool _timerButtonState = false;
  bool _androidButtonState = false;
  bool _iphoneButtonState = false;

  Color _getButtonColor(bool state) {
    return state ? Colors.indigo : Colors.black;
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Container(
        decoration: BoxDecoration(border: Border.all()),
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.account_circle,
                    size: 48,
                  ),
                  Column(
                    children: [
                      Text("Flutter McFlutter",
                          textAlign: TextAlign.left,
                          style: Theme.of(context).textTheme.titleLarge),
                      Text("Experienced App Developer",
                          textAlign: TextAlign.left,
                          style: Theme.of(context).textTheme.bodySmall),
                    ],
                  )
                ],
              ),
              Container(
                margin:
                    const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("123 Main Street"),
                    Text("(415) 555-0198"),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: const Icon(Icons.accessibility),
                    color: _getButtonColor(_accessibilityButtonState),
                    onPressed: () {
                      setState(() {
                        _accessibilityButtonState = !_accessibilityButtonState;
                      });
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("You pressed the accessibility button"),
                        ),
                      );
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.timer),
                    color: _getButtonColor(_timerButtonState),
                    onPressed: () {
                      setState(() {
                        _timerButtonState = !_timerButtonState;
                      });
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("You pressed the timer button"),
                        ),
                      );
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.phone_android),
                    color: _getButtonColor(_androidButtonState),
                    onPressed: () {
                      setState(() {
                        _androidButtonState = !_androidButtonState;
                      });
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("You pressed the android button"),
                        ),
                      );
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.phone_iphone),
                    color: _getButtonColor(_iphoneButtonState),
                    onPressed: () {
                      setState(() {
                        _iphoneButtonState = !_iphoneButtonState;
                      });
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("You pressed the iphone button"),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
