import 'dart:ffi';

import 'package:flutter/material.dart';

import 'home_page.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: (ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.blue,
                Colors.red,
              ],
            )),
            accountName: Text("murotov azizbek"),
            accountEmail: Text("azizmurotov1272@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  "assets/images/6.jpg",
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.favorite,color: Colors.red,),
            title: const Text('Favorites'),
            onTap: () {
              Navigator.pushReplacementNamed(context, HomePage.id);
            },
          ),
          ListTile(
            leading: const Icon(Icons.share,color: Colors.blue,),
            title: const Text('Share'),
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(Icons.notifications, color:Colors.amber),
            title: Text('Request'),
            trailing: ClipOval(
              child: Container(
                color: Colors.red,
                height: 20,
                width: 20,
                child: Center(
                  child: Text(
                    "11",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ),
            ),
          ),
          const Divider(color: Colors.amber,),
          const ListTile(
            leading: Icon(Icons.lock_outline_sharp,color: Colors.amber,),
            title: Text("yangi maxfiy chat"),
            onTap: null,
          ),
          const ListTile(
            leading: Icon(Icons.supervisor_account,color: Colors.amber,),
            title: Text("yangi guruh"),
          ),
          const ListTile(
            leading: Icon(Icons.location_on,color:Colors.amber,),
            title: Text("Yaqin-atrofdagi odamlar"),
          ),
          const ListTile(
            leading: Icon(Icons.folder_outlined,color: Colors.amber,),
            title: Text("Chat jildlari"),
          ),
          const ListTile(
            title: Text("Saqlangan xabarlar"),
            leading: Icon(Icons.change_history,color: Colors.amber,),
          ),
          const ListTile(
            leading: Icon(Icons.phone,color: Colors.amber,),
            title: Text("Chaqiruvlar"),
          ),
          const ListTile(
            leading: Icon(Icons.settings,color: Colors.amber,),
            title: Text("Sozlamalar"),
          ),
          const Divider(color: Colors.amber,),
          const ListTile(
            leading: Icon(Icons.add_circle_outline,color: Colors.amber,),
            title: Text("Plus sozlamalar"),
          ),
          const ListTile(
            leading: Icon(Icons.folder_open,color: Colors.amber,),
            title: Text("Toifalar"),
          ),
          const ListTile(
            leading: Icon(Icons.color_lens_outlined,color: Colors.amber,),
            title: Text("Mavzularni yuklab olish"),
          ),
          const ListTile(
            leading: Icon(Icons.brush,color: Colors.amber,),
            title: Text("Dizayn"),
          ),
          const ListTile(
            leading: Icon(Icons.people,color: Colors.amber,),
            title: Text("Qo'llab-quvvatlash guruhi"),
          ),
          const ListTile(
            leading: Icon(Icons.storage_sharp,color: Colors.amber,),
            title: Text("Chat hisoblagichlari"),
          ),
        ],
      )),
    );
  }
}
