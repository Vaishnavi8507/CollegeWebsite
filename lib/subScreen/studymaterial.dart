import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
class StudyMaterial extends StatefulWidget {
  final String documentPath;
  const StudyMaterial({required this.documentPath}) ;

  @override
  State<StudyMaterial> createState() => _StudyMaterialState();
}

class _StudyMaterialState extends State<StudyMaterial> {
  bool _isLoading=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Study Material',
        ),
      ),
     body: Stack(
       children: [
         PDFView(
           filePath: widget.documentPath,
           enableSwipe: true,
           swipeHorizontal: true,
           autoSpacing: false,
           pageFling: false,
           onRender: (_pages){
             setState(() {
               _isLoading=false;
             });
           },
         ),
         if(_isLoading)
           Center(
             child: CircularProgressIndicator(),
           )
       ],
     ),
    );
  }
}
class PDFViewer extends StatelessWidget {
  const PDFViewer({Key? key, required String documentPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('PDF Viewer'),
    ),
   body: Center(
     child: ElevatedButton(
       onPressed: (){
         Navigator.push(context,MaterialPageRoute(builder: (context)=>PDFViewer(documentPath: "C:\Users\vaish\Downloads\tempres.pdf",
         ),
         ),
         );
       },
       child: Text('Open Document'),
     ),
   ),
    );
  }
}



