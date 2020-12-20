import 'package:flutter/material.dart';

class Dw extends StatelessWidget {
  final Function onTap;

  const Dw({this.onTap});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blueAccent),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Container(
                      color: Colors.red,
                      width: 60.0,
                      height: 60.0,
                      child: CircleAvatar(
                        child: Icon(
                          Icons.ac_unit,
                          size: 30.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text("Name Logo"),
                    ),
                  ],
                ),

                // First row end
                SizedBox(
                  height: 15,
                ),

                //
                Text(
                  "heaben Hami",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),

                Text(
                  "heaben Hami",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
          ),

          //

          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () {
              onTap(context, 0);
              Navigator.of(context).pop();
            },
          ),

          ListTile(
            leading: Icon(Icons.ac_unit),
            title: Text("Profile"),
            onTap: () {
              onTap(context, 1);
              Navigator.of(context).pop();
            },
          ),

          ListTile(
            leading: Icon(Icons.contact_phone),
            title: Text("Contact"),
            onTap: () {
              onTap(context, 2);
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
