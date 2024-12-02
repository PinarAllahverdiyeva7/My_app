import 'package:flutter/material.dart';
import 'package:my_app/Widgets/image_network_url.dart';

class FoodBurgers extends StatelessWidget {
  const FoodBurgers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFECF0F4),
            shape: const StadiumBorder(),
          ),
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'BURGER',
                  style: TextStyle(
                      color: Color(0xFF181C2E),
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Image.asset('assets/icons/polygon.png'),
              )
            ],
          ),
        ),
        leading: IconButton(
            onPressed: () {},
            icon: const Center(child: Icon(Icons.chevron_left))),
        actions: [
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/icons/search.png')),
              IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/icons/filter.png'))
            ],
          )
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  children: [
                    const Text(
                      'Popular Burgers',
                      style: TextStyle(
                          color: Color(0xFF32343E),
                          fontSize: 20,
                          letterSpacing: 2),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        children: [
                          Container(
                            width: 122,
                            height: 84,
                            child: Image.network(
                              ImageNetworkUrl().imageUrl,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Burger Bistro',
                              style: TextStyle(
                                  color: Color(0xFF32343E),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const Text(
                            'Rose Garden',
                            style: TextStyle(
                                color: Color(0xFF646982), fontSize: 13),
                          ),
                          const Text(
                            "  ₼40",
                            style: TextStyle(
                                color: Color(0xFF32343E),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          width: 122,
                          height: 84,
                          child: Image.network(ImageNetworkUrl().imageUrl2),
                        ),
                        const Text(
                          'Buffalo Burgers',
                          style: TextStyle(
                              color: Color(0xFF32343E),
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          'Kaji Firm Kitchen ',
                          style:
                              TextStyle(color: Color(0xFF646982), fontSize: 13),
                        ),
                        const Text(
                          "  ₼75",
                          style: TextStyle(
                              color: Color(0xFF32343E),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  const Text(
                    '',
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        Container(
                          width: 122,
                          height: 84,
                          child: Image.network(
                            ImageNetworkUrl().imageUrl3,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Smokin Burger',
                            style: TextStyle(
                                color: Color(0xFF32343E),
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Text(
                          'Cafenio Restaurant',
                          style:
                              TextStyle(color: Color(0xFF646982), fontSize: 13),
                        ),
                        const Text(
                          "  ₼60",
                          style: TextStyle(
                              color: Color(0xFF32343E),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        width: 122,
                        height: 84,
                        child: Image.network(ImageNetworkUrl().imageUrl4),
                      ),
                      const Text(
                        'Bullseye Burgers',
                        style: TextStyle(
                            color: Color(0xFF32343E),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'Kabab restaurant',
                        style:
                            TextStyle(color: Color(0xFF646982), fontSize: 13),
                      ),
                      const Text(
                        "  ₼94",
                        style: TextStyle(
                            color: Color(0xFF32343E),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 32),
            child: Text(
              'Open Resturants',
              style: TextStyle(
                  fontSize: 20, color: Color(0xFF32343E), letterSpacing: 2),
            ),
          ),
          Container(
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(100))),
              child: Image.network(
                ImageNetworkUrl().imageUrl5,
                width: 327,
                height: 140,
              ))
        ],
      ),
    );
  }
}
