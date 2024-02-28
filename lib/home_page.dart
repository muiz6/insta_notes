import 'package:flutter/material.dart';
import 'package:appinio_social_share/appinio_social_share.dart';

class HomePage extends StatelessWidget {
  final appinioSocialShare =  AppinioSocialShare();
  
  HomePage({super.key});

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
        child: Icon(Icons.share, color: Colors.white),
        backgroundColor: Colors.black,
        onPressed: () async {
          print('here');
          await appinioSocialShare.shareToInstagramStory(
            '1501833310374580',
            backgroundImage: 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAIAAAC0Ujn1AAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAEDSURBVEhLtZJBEoMwDAP7lr6nn+0LqUGChsVOwoGdvTSSNRz6Wh7jxvT7+wn9Y4LZae0e+rXLeBqjh45rBtOYgy4V9KYxlOpqRjmNiY4+uJBP41gOI5BM40w620AknTVwGgfSWQMK0tnOaRpV6ewCatLZxn8aJemsAGXp7JhGLBX1wYlUtE4jkIpnwKGM9xeepG7mwblMpl2/CUbCJ7+6CnQzAw5lvD/8DxGIpbMClKWzdjpASTq7gJp0tnGaDlCVzhpQkM52OB3gQDrbQCSdNSTTAc7kMAL5dIDjjj64UE4HmEh1NaM3HWAIulQwmA4wd+i4ZjwdYDR00GqWsyPrizLD76QCPOHqP2cAAAAAElFTkSuQmCC',
          );
          print('here');
        },
      ),
    );
  }
}
