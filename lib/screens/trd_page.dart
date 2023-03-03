import 'package:flutter/material.dart';
import 'package:qntrl/widgets/appBar.dart';

class TrdPage extends StatelessWidget {
  const TrdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Jobs'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Icon(
                  Icons.cancel,
                  color: Colors.grey[300],
                ),
                const SizedBox(
                  width: 20.0,
                ),
                const Text(
                  'QUAL - 7',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15.0,
                  ),
                ),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.delete_outline),
                  onPressed: () {},
                  color: Theme.of(context).primaryColor.withOpacity(0.7),
                ),
                IconButton(
                  icon: Icon(Icons.edit_outlined),
                  onPressed: () {},
                  color: Theme.of(context).primaryColor.withOpacity(0.7),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              'Quality audit for Projects',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
