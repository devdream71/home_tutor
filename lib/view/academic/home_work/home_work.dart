 



import 'package:flutter/material.dart';

class HomeWorkPage extends StatelessWidget {
  HomeWorkPage({super.key});

  // Controller for the date field
  final TextEditingController _dateController = TextEditingController();

  // Sample data for dropdowns
  final List<String> _sessionClassOptions = ['Class One', 'Class Two', 'Class Three'];
  final List<String> _periodOptions = ['First Period', 'Second Period', 'Third Period'];

  // Selected values
  String? _selectedSessionClass;
  String? _selectedPeriod;

  // Method to show date picker
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      _dateController.text = "${picked.year}-${picked.month}-${picked.day}";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Work'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              side: const BorderSide(color: Colors.white),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
              backgroundColor: Colors.blue,
            ),
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            ),
            label: const Text(
              "Home Work",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            FittedBox(
              child: Row(
                //mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => _selectDate(context),
                      child: AbsorbPointer(
                        child: TextField(
                          controller: _dateController,
                          decoration: const InputDecoration(
                            labelText: 'Date',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 2),
                  Expanded(
                    child: DropdownButtonFormField<String>(
                      decoration: const InputDecoration(
                        labelText: 'Session/Class',
                        border: OutlineInputBorder(),
                      ),
                      items: _sessionClassOptions.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (newValue) {
                        _selectedSessionClass = newValue;
                      },
                    ),
                  ),
                  const SizedBox(width: 2),
                  Expanded(
                    child: DropdownButtonFormField<String>(
                      decoration: const InputDecoration(
                        labelText: 'Period',
                        border: OutlineInputBorder(),
                      ),
                      items: _periodOptions.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (newValue) {
                        _selectedPeriod = newValue;
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            const Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Text('1'),
                ),
                title: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Class: One"),
                    Text("May 12, 2024, 12:12 PM"),
                  ],
                ),
                subtitle: Text('Period: First'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            const Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Text('2'),
                ),
                title: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Class: Four"),
                    Text("May 12, 2024, 12:12 PM"),
                  ],
                ),
                subtitle: Text('Period: Second'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
