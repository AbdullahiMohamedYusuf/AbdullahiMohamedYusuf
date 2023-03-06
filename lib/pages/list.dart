import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mongo_dart/mongo_dart.dart' show Db, DbCollection;
import './playground.dart';
import './drawer.dart';

class Tasks extends StatefulWidget {
  const Tasks({super.key});

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  bool isSwitched = false;

  TextStyle getNormalStyle() => const TextStyle(
      color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 25);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
        backgroundColor: Colors.white,
        drawer: Navbar(),
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          actions: [
            Container(
              padding: const EdgeInsets.all(10),
              child: const CircleAvatar(
                backgroundColor: Colors.white,
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => null,
          backgroundColor: Colors.redAccent.shade400,
          child: const Icon(Icons.shopping_bag_rounded),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          //bottom navigation bar on scaffold
          color: Colors.black,
          shape: const CircularNotchedRectangle(), //shape of notch
          notchMargin: 2, //notche margin between floating button and bottom appbar
          child: Row(
            //children inside bottom appbar
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: const Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.favorite,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.file_copy,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  
                  Icons.person,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ));
  }
}

SizedBox box() => SizedBox(
      height: 80,
      width: 80,
      child: Container(
        decoration: const BoxDecoration(color: Colors.red),
      ),
    );
