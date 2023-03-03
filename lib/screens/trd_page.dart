import 'package:flutter/material.dart';
import 'package:qntrl/widgets/appBar.dart';

class TrdPage extends StatelessWidget {
  const TrdPage({super.key});

  chip({
    required String data,
    IconData? icon,
    Color? iconColor,
    FontWeight? dataWeight,
  }) {
    return Container(
      margin: const EdgeInsets.only(right: 15.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          icon == null
              ? SizedBox.shrink()
              : Icon(
                  icon,
                  color: iconColor ?? Colors.grey,
                  size: 17.0,
                ),
          icon == null ? SizedBox.shrink() : const SizedBox(width: 5.0),
          Text(
            data,
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: dataWeight ?? FontWeight.normal,
            ),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 7.5, vertical: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: const Color.fromARGB(255, 224, 224, 224),
        ),
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
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 7.0),
            child: Row(
              children: [
                const Text(
                  'Quality audit Request | ',
                  style: TextStyle(
                    fontSize: 12.0,
                  ),
                ),
                Text(
                  'Quality audit Blueprint',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              'We are planning to perform our next roiund of audit in the coming week.',
              style: TextStyle(
                fontSize: 13.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              'Show More',
              style: TextStyle(
                fontSize: 13.0,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.symmetric(horizontal: 12.0),
            decoration: ShapeDecoration(
              color: Colors.grey[200],
              shape: const StadiumBorder(side: BorderSide.none),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 8.0,
                  width: 8.0,
                  decoration: BoxDecoration(
                    color: Colors.green[300],
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                const Text(
                  'Begin Testing',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Container(
            padding: const EdgeInsets.all(12.0),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              border: const Border(
                top: BorderSide(
                  color: Color.fromARGB(255, 224, 224, 224),
                ),
                bottom: BorderSide(
                  color: Color.fromARGB(255, 224, 224, 224),
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Next Transactions',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 13.0,
                  ),
                ),
                const SizedBox(height: 10.0),
                Row(
                  children: const [
                    Icon(
                      Icons.info_outline,
                      size: 15.0,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 5.0),
                    Text(
                      '3 more parallel transactions are pending',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                Wrap(
                  runSpacing: 10.0,
                  children: [
                    chip(
                      data: 'Put on hold',
                      icon: Icons.done,
                      iconColor: Colors.green[200],
                    ),
                    chip(
                      data: 'File bugs',
                      icon: Icons.done,
                      dataWeight: FontWeight.bold,
                    ),
                    chip(
                      data: 'Outgoing | 00:13:53',
                      icon: Icons.timer_outlined,
                      dataWeight: FontWeight.bold,
                    ),
                    chip(
                      data: 'Bug Fixes',
                      icon: Icons.done,
                      dataWeight: FontWeight.bold,
                    ),
                    chip(
                      data: 'Build code Review',
                      dataWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          color: Theme.of(context).primaryColor, width: 2.0),
                    ),
                  ),
                  child: Text(
                    'DETAILS',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Text(
                    'RELATED',
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Text('ACTIVITIES'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
