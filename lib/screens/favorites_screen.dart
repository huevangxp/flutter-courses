import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

class FavoritesScreen extends StatelessWidget {
  QuillController _controller = QuillController.basic();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Favorites'),
        ),
        body: SafeArea(
            child: Column(
          children: [
            QuillToolbar.simple(
                configurations: QuillSimpleToolbarConfigurations(
                    controller: _controller,
                    sharedConfigurations: const QuillSharedConfigurations(
                      locale: Locale('de'),
                    ))),
            Expanded(
                child: QuillEditor.basic(
                    configurations: QuillEditorConfigurations(
              controller: _controller,
              // readOnly: false,
              sharedConfigurations: const QuillSharedConfigurations(locale: Locale('de'))
            )))
          ],
        )));
  }
}
