import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _accessibilityButtonState = false;
  bool _timerButtonState = false;
  bool _androidButtonState = false;
  bool _iphoneButtonState = false;

  Color _getButtonColor(bool state) {
    return state ? Colors.indigo : Colors.black;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Mc Flutter"),
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
