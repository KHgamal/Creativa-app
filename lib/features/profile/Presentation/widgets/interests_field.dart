// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class InterestsField extends StatefulWidget {
  const InterestsField({super.key});

  @override
  State<InterestsField> createState() => _InterestsFieldState();
}

class _InterestsFieldState extends State<InterestsField> {
  Set<String> tags = {};
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
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              title: const Text('Select a Tag'),
              content: SingleChildScrollView(
                child: ListBody(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: categories.length,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return TextButton(
                          style:selectedTag == categories[index] ? ButtonStyle(backgroundColor: MaterialStateProperty.all
                            (amber)):ButtonStyle(backgroundColor: MaterialStateProperty.all
                            (Colors.white)),
                          onPressed: () {
                            setState(() {
                              selectedTag = categories[index];
                            });
                          },
                          child:Text(categories[index],style: const TextStyle(color: Colors.black)),
                        );
                      },
                      )
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
          }
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
                    spacing:5,
                    runSpacing:5,
                    children: [
                      for (String tag in tags)
                        Chip(
                          label: Text(
                            tag,
                            style: const TextStyle(color: Colors.white),
                          ),
                          backgroundColor: amber,
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
