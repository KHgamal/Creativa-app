import 'package:flutter/material.dart';

import '../../../../constants.dart';
class UploadFileContainer extends StatelessWidget {
  const UploadFileContainer({Key? key, required this.onTap}) : super(key: key);
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 30 , top: 10),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: amber.withOpacity(0.2),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.upload_sharp),
                const SizedBox(width: 8,),
                Text("Upload file here")
              ],
            ),
            const SizedBox(height: 8,),
            Text("( just .pdf extension is allowed )")
          ],

        ) ,
      ),
    );
  }
}
