import 'package:flutter/material.dart';
import 'package:news_app/models/articles_model.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ViewNewsDetails extends StatefulWidget {
  const ViewNewsDetails({super.key, required this.article});
  final ArticlesModel article;
  @override
  State<ViewNewsDetails> createState() => _ViewNewsDetailsState();
}

class _ViewNewsDetailsState extends State<ViewNewsDetails> {
  late String url = widget.article.url ?? 'https://www.google.com';
  late final WebViewController webViewController;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(url))
      ..setOnConsoleMessage((_) {})
      ..enableZoom(false)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageFinished: (_) => setState(() => isLoading = false),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 50),
        child: isLoading
            ? const LinearProgressIndicator(minHeight: 10)
            : WebViewWidget(controller: webViewController),
      ),
    );
  }
}
