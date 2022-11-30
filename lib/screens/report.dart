
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ReportScreen extends StatefulWidget {
  
  const ReportScreen({super.key});

  @override
  
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  @override

  Widget build(BuildContext context) {
    return  Scaffold(
      body: WebView(
         initialUrl: 'https://datastudio.google.com/u/0/reporting/29e5506c-0133-4aec-ac3a-e784350d62a0/page/RqC9C',
         javascriptMode: JavascriptMode.unrestricted,
       ),
    );
  }
}