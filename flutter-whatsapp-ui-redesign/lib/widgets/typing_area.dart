import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets/voice_preview.dart';

Widget typingArea(BuildContext context) {
  return Container(
    color: Theme.of(context).appBarTheme.color,
    child: Row(
      children: [
        IconButton(icon: Icon(Icons.emoji_emotions), onPressed: null),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
                border: InputBorder.none, hintText: 'Type a message'),
          ),
        ),
        IconButton(icon: Icon(Icons.attachment_outlined), onPressed: null),
        IconButton(icon: Icon(Icons.camera_alt_outlined), onPressed: null),
        IconButton(
          icon: Icon(Icons.mic_outlined),
          onPressed: () => showDialog(
              context: context,
              builder: (BuildContext context) => Dialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0)),
                    child: Container(
                      height: 188,
                      width: 400,
                      child: voicePreview(context),
                    ),
                  )),
        )
      ],
    ),
  );
}
