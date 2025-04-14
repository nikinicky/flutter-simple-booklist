import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Map<String, String>> books = [
    {
      'title' : 'Crime and Punishment',
      'author' : 'Fyodor Dostoevsky',
      'cover': 'assets/crime_and_punishment.jpg',
    },
    {
      'title' : 'The Brothers Karamazov',
      'author' : 'Fyodor Dostoevsky',
      'cover': 'assets/the_brother_karamazov.jpg',
    },
    {
      'title' : 'White Nights',
      'author' : 'Fyodor Dostoevsky',
      'cover': 'assets/white_nights.jpg',
    },
    {
      'title' : 'The Idiot',
      'author' : 'Fyodor Dostoevsky',
      'cover': 'assets/the_idiot.jpg',
    },
    {
      'title' : 'Notes From Underground',
      'author' : 'Fyodor Dostoevsky',
      'cover': 'assets/notes_from_underground.jpg',
    },
    {
      'title' : 'The Gambler',
      'author' : 'Fyodor Dostoevsky',
      'cover': 'assets/the_gambler.jpg',
    },
    {
      'title' : 'Demons',
      'author' : 'Fyodor Dostoevsky',
      'cover': 'assets/demons.jpg',
    },
    {
      'title' : 'The Dream Of Ridiculous Man',
      'author' : 'Fyodor Dostoevsky',
      'cover': 'assets/the_dream_of_ridiculous_man.jpg',
    },
    {
      'title' : 'The Double',
      'author' : 'Fyodor Dostoevsky',
      'cover': 'assets/the_double.jpg',
    },
    {
      'title' : 'Poor Folk',
      'author' : 'Fyodor Dostoevsky',
      'cover': 'assets/poor_folk.jpg',
    },
    {
      'title' : 'The House Of The Dead',
      'author' : 'Fyodor Dostoevsky',
      'cover': 'assets/house_of_the_dead.jpg',
    },
  ];

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Simple Book List App",
            style: GoogleFonts.montserrat(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.white,
            ),
          ),
          backgroundColor: Color(0xFF638C6D),
        ),
        body: Container(
          color: Color(0xFFE7FBB4),
          child: ListView.separated(
            itemCount: books.length,
            separatorBuilder: (context, index) {
              return Divider();
            },
            itemBuilder: (context, index) {
              return ListTile(
                leading: Image.asset("${books[index]['cover']!}"),
                title: Text(
                  books[index]['title']!,
                  style: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.w800
                  ),
                ),
                subtitle: Text(
                  'By ${books[index]['author']!}',
                  style: GoogleFonts.montserrat(
                      fontSize: 12,
                      fontWeight: FontWeight.w400
                  ),
                ),
              );
            },
          )
        )
    );
  }
}