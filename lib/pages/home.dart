import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  final String appName = 'DISCOVER';
  final Image menuIcon = Image.asset('assets/images/menu_icon.png');
  final Image searchIcon = Image.asset('assets/images/search_icon.png');
  final List<String> buttonLabels = [
    'New Release',
    'Men',
    'Women',
    'Kids',
    'Sports',
    'Home',
    'Beauty',
    'Toys'
  ];
  final List<Map<String, String>> products = [
    {
      'name': 'Product 1',
      'description': 'Description for Product 1',
      'image': 'assets/images/sneaker-1.png'
    },
    {
      'name': 'Product 2',
      'description': 'Description for Product 2',
      'image': 'assets/images/sneaker-1.png'
    },
    {
      'name': 'Product 3',
      'description': 'Description for Product 3',
      'image': 'assets/images/sneaker-1.png'
    },
        {
      'name': 'Product 1',
      'description': 'Description for Product 1',
      'image': 'assets/images/sneaker-1.png'
    },
    {
      'name': 'Product 2',
      'description': 'Description for Product 2',
      'image': 'assets/images/sneaker-1.png'
    },
    {
      'name': 'Product 3',
      'description': 'Description for Product 3',
      'image': 'assets/images/sneaker-1.png'
    },
        {
      'name': 'Product 1',
      'description': 'Description for Product 1',
      'image': 'assets/images/sneaker-1.png'
    },
    {
      'name': 'Product 2',
      'description': 'Description for Product 2',
      'image': 'assets/images/sneaker-1.png'
    },
    {
      'name': 'Product 3',
      'description': 'Description for Product 3',
      'image': 'assets/images/sneaker-1.png'
    },
        {
      'name': 'Product 1',
      'description': 'Description for Product 1',
      'image': 'assets/images/sneaker-1.png'
    },
    {
      'name': 'Product 2',
      'description': 'Description for Product 2',
      'image': 'assets/images/sneaker-1.png'
    },
    {
      'name': 'Product 3',
      'description': 'Description for Product 3',
      'image': 'assets/images/sneaker-1.png'
    },
    // Add more products as needed
  ];

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedButtonIndex = 0;
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.appName,
              style: GoogleFonts.aBeeZee(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 30,
              child: IconButton(
                icon: ImageIcon(widget.menuIcon.image),
                onPressed: () {
                  // Handle menu click
                },
                iconSize: 40, // Increase the icon size
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Center(
            child: FractionallySizedBox(
              widthFactor: 0.9, // width factor to control the width of the search bar
              child: Container(
                height: 40,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _searchController,
                        decoration: const InputDecoration(
                          hintText: 'Search',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(bottom: 10), // contentPadding to align the text properly
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                      width: 20,
                      child: widget.searchIcon,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.buttonLabels.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedButtonIndex = index;
                      });
                      _navigateToPage(context, widget.buttonLabels[index]);
                    },
                    style: ButtonStyle(
                      foregroundColor: WidgetStateProperty.resolveWith<Color>(
                        (Set<WidgetState> states) {
                          return selectedButtonIndex == index
                              ? Colors.white
                              : Colors.black;
                        },
                      ),
                      backgroundColor: WidgetStateProperty.resolveWith<Color>(
                        (Set<WidgetState> states) {
                          return selectedButtonIndex == index
                              ? Colors.black
                              : Colors.white;
                        },
                      ),
                      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                    ),
                    child: Text(widget.buttonLabels[index]),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: widget.products.length,
              itemBuilder: (context, index) {
                final product = widget.products[index];
                return Card(
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    leading: Image.asset(
                      product['image']!,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                    title: Text(product['name']!),
                    subtitle: Text(product['description']!),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _navigateToPage(BuildContext context, String category) {
    String routeName = '/$category';
    Navigator.pushNamed(context, routeName);
  }
}
