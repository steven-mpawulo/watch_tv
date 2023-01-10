import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:watch_tv/screens/channels_screen.dart';

class CountriesScreen extends StatefulWidget {
  const CountriesScreen({Key? key}) : super(key: key);

  @override
  State<CountriesScreen> createState() => _CountriesScreenState();
}

class _CountriesScreenState extends State<CountriesScreen> {
  List countriesList = [];
  int countriesListLength = 0;
  Future getCountries() async {
    var url = Uri.parse("https://iptv-org.github.io/api/countries.json");
    try {
      var response = await http.get(url);
      return response;
    } catch (e) {
      print(e);
    }
  }

  @override
  void didChangeDependencies() {
    getCountries().then((value) {
      var countries = jsonDecode(value.body);
      int length = countries.length.toInt();
      setState(() {
        countriesList = countries;
      });
      setState(() {
        countriesListLength = length;
      });
      // print(countries);
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Watch TV"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: countriesListLength,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) =>
                            ChannelsScreen(code: countriesList[index]["code"])),
                      ),
                    );
                  },
                  title: Text(
                    countriesList[index]["name"],
                  ),
                  leading: Text(
                    countriesList[index]["flag"],
                  ),
                ),
              );
            },
          )),
    );
  }
}
