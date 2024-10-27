import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TopBarHome extends StatefulWidget {
  const TopBarHome({super.key});

  @override
  State<TopBarHome> createState() => _TopBarHomeState();
}

class _TopBarHomeState extends State<TopBarHome> {
  @override
  Widget build(BuildContext context) {
    String name = 'John Doe';
    String greeting = 'Good Afternoon';
    String selectedLocation = 'Home';

    var locations = ['Home', 'Office', 'Other', "1", "2", "3", "4", "5"];

    Future<void> showLocationDialog() {
      return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Select Location'), // Optional title
            content: SizedBox(
              height: 200,
              width: double.maxFinite,
              child: ListView.builder(
                itemCount: locations.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(locations[index]),
                    onTap: () {
                      setState(() {
                        selectedLocation = locations[index];
                      });
                      Navigator.pop(context);
                    },
                  );
                },
              ),
            ),
          );
        },
      );
    }

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 221, 229, 238),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: IconButton(
                      icon: SizedBox(
                        height: 30,
                        width: 30,
                        child: SvgPicture.asset(
                          'lib/assests/icons/menu.svg',
                          // ignore: deprecated_member_use
                          color: Colors.black,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'DELIVER TO',
                          style: GoogleFonts.sen(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            showLocationDialog();
                          },
                          child: Row(
                            children: [
                              Text(
                                selectedLocation,
                                style: GoogleFonts.sen(
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  fontSize: 18,
                                ),
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.onSurface,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: IconButton(
                          icon: SizedBox(
                            height: 30,
                            width: 30,
                            child: SvgPicture.asset(
                              'lib/assests/icons/shopping_bag.svg',
                              // ignore: deprecated_member_use
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Positioned(
                        right: 0,
                        top: 0,
                        child: Container(
                          width: 25,
                          height: 25,
                          padding: const EdgeInsets.only(top: 3),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: const Text(
                            '2',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.only(left: 5),
                child: Row(
                  children: [
                    Text("Hey " + name + ",",
                        style: GoogleFonts.sen(
                          color: Theme.of(context).colorScheme.onSurface,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        )),
                    const SizedBox(width: 5),
                    Text(greeting + '!',
                        style: GoogleFonts.sen(
                          color: Theme.of(context).colorScheme.onSurface,
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
