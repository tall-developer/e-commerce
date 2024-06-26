// Import necessary libraries
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

              style: GoogleFonts.aBeeZee( // Use your 'Freeman-Regular' font
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              // Add SizedBox to control the size of the menuIcon
              height: 30, // Set the desired height
              width: 30, // Set the desired width
              child: menuIcon,
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
            child: SizedBox(
              height: 50, // Set the desired height of the search bar
              width: 300,  // Set the desired width of the search bar
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.grey
,
                    width: 1.0,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        Text('Search'),

        SizedBox(
          height: 24,
          width: 24,
          child: searchIcon,
        ),
      ],
    ),
  ),
),
          ),
        ],
      ),
    );
  }
}
