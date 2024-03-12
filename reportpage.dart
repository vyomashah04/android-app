import 'package:flutter/material.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Lost items'),
        Padding(
          padding: const EdgeInsets.all(12),
          child: Container(
            height: 675,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 10,
              itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    height: 120,
                    width: 80,
                    child: const Text('Product image'),
                  ),
                );
              },

            ),
          ),
        )
      ],
    );
  }
}
