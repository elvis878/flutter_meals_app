import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String screenId;
  final void Function(String identifier) onSelectScreen;

  const DrawerItem({
    super.key,
    required this.icon,
    required this.title,
    required this.screenId,
    required this.onSelectScreen,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Theme.of(context).textTheme.bodySmall!.color,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleSmall!.copyWith(
              fontSize: 18,
            ),
      ),
      onTap: () => onSelectScreen(screenId),
    );
  }
}
