import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mongo_dart/mongo_dart.dart' show Db, DbCollection;

void databaseHandler  (title, content) async {
  const url = 'mongodb+srv://Yoshi:ndcDluxfygty9Mu@cluster1.mkycnbd.mongodb.net/?retryWrites=true&w=majority';
  var db = await Db.create(url);
  await db.open();

  var coll = db.collection('Note');
  var userNote = {"title": title.text, "content": content.text};

  coll.insertOne(userNote);
  print("Inserted");
}

class DocumentPage extends StatefulWidget {
  const DocumentPage({super.key});

  @override
  State<DocumentPage> createState() => _DocumentPageState();
}

class _DocumentPageState extends State<DocumentPage> {
  final myTitle = TextEditingController();
  final myContent = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      backgroundColor: Colors.white,
      
    );
  }
}
