import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qntrl/screens/trd_page.dart';
import 'package:qntrl/widgets/appBar.dart';

class SndPage extends StatelessWidget {
  const SndPage({super.key});

  listView(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        // physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 12.0,
              vertical: 5.0,
            ),
            child: Divider(),
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => Get.to(() => TrdPage()),
            child: Container(
              height: 70.0,
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'CAMP-2 | 12-16-2018, 03:40 pm',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12.0,
                        ),
                      ),
                      const SizedBox(
                        height: 3.0,
                      ),
                      const Text(
                        'Radio Campaign - The Children Place',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 3.0,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: ShapeDecoration(
                          color: Colors.grey[200],
                          shape: const StadiumBorder(side: BorderSide.none),
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 8.0,
                              width: 8.0,
                              decoration: BoxDecoration(
                                color: Colors.red[300],
                                shape: BoxShape.circle,
                              ),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            const Text(
                              'Campaign Running',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  CircleAvatar(
                    radius: 15.0,
                    backgroundColor: Colors.grey[200],
                    backgroundImage: const NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkIOrMno5YQvnKFwQqFLegCQ5dEvFdA1ns4A&usqp=CAU',
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

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
                const Text(
                  'All Jobs',
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: Theme.of(context).primaryColor.withOpacity(0.9),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              'High',
              style: TextStyle(
                color: Theme.of(context).primaryColor.withOpacity(0.6),
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          listView(context),
          const SizedBox(
            height: 25.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              'Medium',
              style: TextStyle(
                color: Theme.of(context).primaryColor.withOpacity(0.6),
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          listView(context),
        ],
      ),
    );
  }
}
