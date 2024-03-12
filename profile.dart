import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('My Profile'),
        ),
        body:
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const ListTile(
                    title: Text('Vyoma Shah', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                    leading: Icon(Icons.person_2,color: Colors.blueGrey,),
                    //trailing: Icon(Icons.edit, color: Colors.blueGrey,),
                  )
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const ListTile(
                    title: Text('Sap id: 40315220040', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                    leading: Icon(Icons.favorite,color: Colors.blueGrey,),
                    //trailing: Icon(Icons.edit, color: Colors.blueGrey,),
                  )
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const ListTile(
                    title: Text('Items', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                    leading: Icon(Icons.square_outlined,color: Colors.blueGrey,),
                    //trailing: Icon(Icons.edit, color: Colors.blueGrey,),
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
