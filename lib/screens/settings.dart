import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  static const routeName = '/Settings';
  final Function setFilters;
  final currentFilters;
  SettingsScreen(this.setFilters, this.currentFilters);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool fullOption = false;
  bool capacity = false;
  @override
  void initState() {
    fullOption = widget.currentFilters['fullOption'];
    capacity = widget.currentFilters['capacity'];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        actions: [
          IconButton(
              onPressed: () {
                Map<String, bool> filters = {
                  'fullOption': fullOption,
                  'capacity': capacity,
                };
                widget.setFilters(filters);
              },
              icon: Icon(Icons.save)),
        ],
      ),
      body: ListView(
        children: [
          SwitchListTile(
            title: Text("Full Option"),
            value: fullOption,
            onChanged: (newValue) {
              setState(() {
                fullOption = newValue;
              });
            },
            subtitle: Text("Display full option cars only"),
          ),
          SwitchListTile(
              title: Text("Capacity Greater than 3000cc"),
              value: capacity,
              onChanged: (newValue) {
                setState(() {
                  capacity = newValue;
                });
              })
        ],
      ),
    );
  }
}
