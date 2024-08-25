import 'package:flutter/material.dart';

class TaskItemWidget extends StatelessWidget {
  const TaskItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      width: mediaQuery.size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 3, color: theme.primaryColor),
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        leading: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: theme.primaryColor),
          width: 5,
          height: 80,
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Play basket ball',
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.primaryColor,
                )),
            Row(
              children: [
                const Icon(
                  Icons.alarm,
                  size: 22,
                ),
                const SizedBox(
                  width: 6,
                ),
                Text(
                  '10:30 AM',
                  style: theme.textTheme.bodySmall
                      ?.copyWith(fontSize: 17, color: Colors.black),
                ),
              ],
            ),
          ],
        ),
        trailing: Container(
          width: 70,
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: theme.primaryColor),
          child: const ImageIcon(
            AssetImage('assets/images/icon_check.png'),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
