import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Insta Notes'),),
      backgroundColor: Colors.grey.shade800,
      body: Center(
        child: AspectRatio(
          aspectRatio: 9/16,
          child: Container(
            margin: EdgeInsets.all(24),
            child: TextFormField(
              textAlign: TextAlign.center,
              maxLines: null,
              maxLength: 280,
              decoration: InputDecoration(
                counter: SizedBox.shrink(),
                border: InputBorder.none,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Theme.of(context).colorScheme.primary, width: 1.5),
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
              style: TextStyle(
                fontSize: 28
              ),
              onTapOutside: (e) => FocusScope.of(context).unfocus(),
            ),
            decoration: BoxDecoration(
              color: Colors.grey.shade900,
            ),
            alignment: Alignment.center,
            padding: EdgeInsets.all(24),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.share),
        onPressed: () {},
      ),
    );
  }
}
