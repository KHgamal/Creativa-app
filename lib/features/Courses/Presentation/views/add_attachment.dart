import 'dart:io';

import 'package:creativa_courses_app/Widgets/submit_button.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:open_file/open_file.dart';

import '../../../../constants.dart';
import '../widgets/upload_file_container.dart';
class TasksFilesView extends StatefulWidget {
  const TasksFilesView({Key? key, required this.title, required this.deadLine}) : super(key: key);
  final String title;
  final String deadLine;

  @override
  State<TasksFilesView> createState() => _TasksFilesViewState();
}

class _TasksFilesViewState extends State<TasksFilesView> {
  // Variable for
  // showing multiple file
  List<File?> files=[];

  void openFile(file, index) {
    OpenFile.open(file[index].path);
  }
  getMultipleFile() async {
    FilePickerResult? result =
    await FilePicker.platform.pickFiles(
      allowMultiple: true,
      type:FileType.custom,
      allowedExtensions: ["pdf"]
    );
    if (result != null) {
      List<File?> file = result.paths.map((path) => File(path!)).toList();
      files=file  ;
      setState(() {});

    } else {

      // User canceled the picker and didn't select at least 1 file from device
      // You can show snackbar or fluttertoast here like this to show warning to user
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Please select at least 1 file'),
      ));
    }
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:  SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text(widget.title , style: TextStyle(fontWeight: FontWeight.bold , color: blue ,fontSize: 30),),
               const SizedBox(height: 12,),
               Text("Due ${widget.deadLine} , 9 pm" ,style: const TextStyle(fontSize: 20), ),
               const SizedBox(height: 20,),
               UploadFileContainer(onTap: () { setState(()  {
                 getMultipleFile();

               });  },),

               files!=null ?Column(
                 children: [
                   ListView.builder(
                     physics: const NeverScrollableScrollPhysics(),
                     shrinkWrap: true,
                     itemCount: files.length,
                     itemBuilder: (BuildContext context, int index) {
                       return ListTile(
                         leading: IconButton(onPressed: (){
                           openFile(files,index);
                         }, icon:const Icon(Icons.picture_as_pdf , color: Colors.red,
                         size: 30,),) ,
                         trailing: IconButton(onPressed: () {  }, icon: Icon(Icons.close) ,) ,
                         title: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text( files[index]!.path.split("/").last,
                                 style: const TextStyle(color: Colors.black , fontWeight: FontWeight.bold)),
                             Text("${files[index]!.lengthSync().toString()} bytes"  ),
                           ],
                         ),
                       );
                     },
                   ),
                  const SizedBox(height: 50,),
                   SubmitButton(text: "Send file", onPressed: (){},
                       color1: blue, color2: blue, width: 200)
                 ],
               ) : const SizedBox(),

             ],
            ),
          ),
        ),
      ),
    );
  }
}
