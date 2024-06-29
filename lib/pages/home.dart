// Import necessary libraries
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gap/gap.dart';

// Define the home page widget
class HomePage extends StatelessWidget {
  // Define the app name and menu icon images
  final String appName = 'DISCOVER';
  final Image menuIcon = Image.asset('assets/images/menu_icon.png');
  final Image searchIcon = Image.asset('assets/images/search_icon.png');

  // Define button labels
  final List<String> buttonLabels = ['New Release', 'Men', 'Women', 'Kids', 'Sports', 'Home', 'Beauty', 'Technology'];

  // Build the home page
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Create a horizontal layout for the app name and menu icon
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              appName,
              style: GoogleFonts.rubik( // Use your 'Freeman-Regular' font
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(
              // Add SizedBox to control the size of the menuIcon
              height: 30,
              width: 30,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          // Create a clickable search bar with the search icon
          GestureDetector(
            onTap: () {
              // Handle search bar click
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Search'),
                  SizedBox(
                    height: 24,
                    width: 24,
                    child: searchIcon,
                  ),
                ],
              ),
            ),
          ),

          // Add scrollable buttons
          Container(
            height: 50, // Adjust height as needed
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: buttonLabels.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: TextButton(
                    onPressed: () {
                      // Handle button click for each label
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.black, backgroundColor: Colors.white, // Background color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(buttonLabels[index]),
                  ),
                );
              },
            ),
          ),

          // Rest of your content
        ],
      ),
    );
  }
}
