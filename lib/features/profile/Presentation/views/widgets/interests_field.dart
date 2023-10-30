// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class InterestsField extends StatefulWidget {
  const InterestsField({super.key});

  @override
  State<InterestsField> createState() => _InterestsFieldState();
}

class _InterestsFieldState extends State<InterestsField> {
  List<String> tags = [];
  String selectedTag = '';

  void _addTag(String tag) {
    setState(() {
      tags.add(tag);
    });
  }

  void _removeTag(String tag) {
    setState(() {
      tags.remove(tag);
    });
  }

  void _selectTag(String tag) {
    setState(() {
      if (selectedTag == tag) {
        selectedTag = '';
      } else {
        selectedTag = tag;
      }
    });
  }

  Future<void> _showAddTagDialog() async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Select a Tag'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: selectedTag == 'Entrepreneurship'
                        ? Colors.blue
                        : Colors.white,
                    /* side: BorderSide(
                      color: selectedTag == 'Entrepreneurship'
                          ? Colors.blue
                          : Colors.blue,
                    ),*/
                  ),
                  onPressed: () {
                    _selectTag('Entrepreneurship');
                  },
                  child: Text(
                    'Entrepreneurship',
                    style: TextStyle(
                      color: selectedTag == 'Entrepreneurship'
                          ? Colors.white
                          : Colors.blue,
                    ),
                  ),
                ),
                TextButton(
                  child: const Text('Freelancing'),
                  onPressed: () {
                    selectedTag = 'Freelancing';
                  },
                ),
                TextButton(
                  child: const Text('Programming'),
                  onPressed: () {
                    selectedTag = 'Programming';
                  },
                ),
                TextButton(
                  child: const Text('Network'),
                  onPressed: () {
                    selectedTag = 'Network';
                  },
                ),
                TextButton(
                  child: const Text('Graphic'),
                  onPressed: () {
                    selectedTag = 'Graphic';
                  },
                ),
                TextButton(
                  child: const Text('Marketing'),
                  onPressed: () {
                    selectedTag = 'Marketing';
                  },
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Add'),
              onPressed: () {
                if (selectedTag.isNotEmpty) {
                  _addTag(selectedTag);
                }
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          Expanded(
            child: tags.isEmpty
                ? const Text('No Interests',
                    style: TextStyle(color: Colors.grey))
                : Wrap(
                    spacing: 8.0,
                    runSpacing: 8.0,
                    children: [
                      for (String tag in tags)
                        Chip(
                          label: Text(
                            tag,
                            style: const TextStyle(color: Colors.white),
                          ),
                          backgroundColor: Colors.blue[900],
                          deleteIcon:
                              const Icon(Icons.close, color: Colors.white),
                          onDeleted: () {
                            _removeTag(tag);
                          },
                        ),
                    ],
                  ),
          ),
          IconButton(
            icon: Icon(Icons.add, color: blue),
            onPressed: _showAddTagDialog,
          ),
        ],
      ),
    );
  }
}
