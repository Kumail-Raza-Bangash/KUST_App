import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'web_view/web_view_stack.dart';
// import 'web_view/menu.dart';
// import 'web_view/navigation_controls.dart';

class KustCMS extends StatefulWidget {
  const KustCMS({super.key});

  @override
  State<KustCMS> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<KustCMS> {
  // Add from here...
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();

    controller = WebViewController()
      ..loadRequest(
        Uri.parse('http://www.kohat.edu.pk/auth'),
      );
  }

  // ...to here.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('  '),
      //   // Add from here...
      //   actions: [
      //     NavigationControls(controller: controller),
      //     Menu(controller: controller),
      //   ],
      //   // ...to here.
      // ),
      body: WebViewStack(controller: controller),
    );
  }
}
