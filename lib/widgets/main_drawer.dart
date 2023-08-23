import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key, required this.onSelectedScreen});

  final void Function(String identifier) onSelectedScreen;

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var colorScheme = Theme.of(context).colorScheme;

    return Drawer(
      child: Column(children: [
        DrawerHeader(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              colorScheme.primaryContainer,
              colorScheme.primaryContainer.withOpacity(0.8),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: Row(
            children: [
              Icon(
                Icons.fastfood,
                size: 48,
                color: colorScheme.primary,
              ),
              Text(
                'Cooking Up!',
                style: textTheme.titleLarge!.copyWith(
                  color: colorScheme.primary,
                ),
              )
            ],
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.restaurant,
            size: 26,
            color: colorScheme.onBackground,
          ),
          title: Text(
            'Meals',
            style: textTheme.titleSmall!
                .copyWith(color: colorScheme.onBackground, fontSize: 24),
          ),
          onTap: () {
            onSelectedScreen('meals');
          },
        ),
        ListTile(
          leading: Icon(
            Icons.settings,
            size: 26,
            color: colorScheme.onBackground,
          ),
          title: Text(
            'Filters',
            style: textTheme.titleSmall!
                .copyWith(color: colorScheme.onBackground, fontSize: 24),
          ),
          onTap: () {
            onSelectedScreen('filters');
          },
        ),
      ]),
    );
  }
}
