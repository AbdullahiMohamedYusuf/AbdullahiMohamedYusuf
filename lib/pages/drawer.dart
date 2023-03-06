import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:flutter/src/widgets/basic.dart' as Center;

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Container(
                padding: EdgeInsets.only(top: 2),
                child: const Text(
                  "John Doe",
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
              accountEmail: Text(
                "Lorem",
                style: TextStyle(
                  color: Colors.grey.shade500,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                    'https://static.generated.photos/vue-static/face-generator/landing/wall/20.jpg',
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              decoration: const BoxDecoration(color: Colors.white),
            ),
            ListTile(
              leading: const Icon(
                Icons.woman_rounded,
                color: Colors.black,
                size: 30,
              ),
              title: const Text(
                "Women",
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
              // ignore: avoid_returning_null_for_void
              onTap: (() => null),
            ),
            ListTile(
              leading: const Icon(
                Icons.man_rounded,
                color: Colors.black,
                size: 30,
              ),
              title: const Text(
                "Men",
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
              // ignore: avoid_returning_null_for_void
              onTap: (() => null),
            ),
            ListTile(
              leading: const Icon(
                Icons.child_care_rounded,
                color: Colors.black,
                size: 30,
              ),
              title: const Text(
                "Children",
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
              // ignore: avoid_returning_null_for_void
              onTap: (() => null),
            ),
            ListTile(
              leading: const Icon(
                Icons.sports_baseball_rounded,
                color: Colors.black,
                size: 30,
              ),
              title: const Text(
                "Sports",
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
              // ignore: avoid_returning_null_for_void
              onTap: (() => null),
            ),
            Divider(),
            ListTile(
                leading: const Icon(
                  Icons.card_membership_rounded,
                  color: Colors.black,
                  size: 30,
                ),
                title: const Text(
                  "purchases",
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
                // ignore: avoid_returning_null_for_void
                onTap: (() => null),
                trailing: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                  ),
                  child: Center.Center(
                    child: const Text(
                      "9",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )),
            const Divider(),
            ListTile(
              leading: const Icon(
                Icons.settings,
                color: Colors.black,
                size: 30,
              ),
              title: const Text(
                "Settings",
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
              // ignore: avoid_returning_null_for_void
              onTap: (() => null),
            )
          ],
        ),
      ),
    );
  }
}
