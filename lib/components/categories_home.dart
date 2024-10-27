import 'package:flutter/material.dart';

class CategoriesHome extends StatelessWidget {
  const CategoriesHome({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> options = [
      {"icon": Icons.local_cafe, "title": "Cafe"},
      {"icon": Icons.fastfood, "title": "Fast Food"},
      {"icon": Icons.local_pizza, "title": "Pizza"},
      {"icon": Icons.local_bar, "title": "Bar"},
      {"icon": Icons.local_dining, "title": "Dining"},
      {"icon": Icons.local_drink, "title": "Drink"},
      {"icon": Icons.local_pizza, "title": "Pizza"},
    ];

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Categories',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => CategoriesScreen(),
                  //   ),
                  // );
                },
                child: Text(
                  'See all',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: options.length,
              itemBuilder: (context, int i) {
                return CatagoryButton(
                  iconrecieved: options[i]["icon"],
                  title: options[i]["title"],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CatagoryButton extends StatelessWidget {
  final IconData iconrecieved;
  final String title;

  const CatagoryButton(
      {super.key, required this.iconrecieved, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 224, 224, 224),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconrecieved,
            color: Theme.of(context).colorScheme.secondary,
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
