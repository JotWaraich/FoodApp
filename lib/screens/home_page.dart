import 'package:flutter/material.dart';
import 'package:foodapp/components/categories_home.dart';
import 'package:foodapp/components/restorents_home.dart';
import 'package:foodapp/components/search_bar.dart';
import 'package:foodapp/components/top_bar_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Column(
            children: [
              const TopBarHome(),
              const SearchBarHome(),
              const CategoriesHome(),
              const OpenRestorentsHome(),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, int i) {
                  return const RestorentCard();
                  // RestorentCard is in the OpenRestorentsHome i make this listview.builder in the OpenRestorentsHome but to make the pace scrollable i has to put it in here
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
