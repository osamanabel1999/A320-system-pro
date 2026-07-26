// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Automatic Flutter Flow code generation - do not remove.

import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class EfbPdfViewerWidget extends StatefulWidget {
  const EfbPdfViewerWidget({
    Key? key,
    this.width,
    this.height,
    this.pdfUrl,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? pdfUrl;

  @override
  _EfbPdfViewerWidgetState createState() => _EfbPdfViewerWidgetState();
}

class _EfbPdfViewerWidgetState extends State<EfbPdfViewerWidget> {
  final PdfViewerController _pdfViewerController = PdfViewerController();

  PdfScrollDirection _scrollDirection = PdfScrollDirection.vertical;
  bool _isLoading = true;
  String? _errorMessage;

  final Color bgColor = const Color(0xFF0C0C0E);

  @override
  Widget build(BuildContext context) {
    String finalUrl = (widget.pdfUrl != null && widget.pdfUrl!.isNotEmpty)
        ? widget.pdfUrl!
        : '';

    // حل الـ CORS للمتصفح في حالة الـ Test Mode
    if (kIsWeb && finalUrl.isNotEmpty && !finalUrl.contains('corsproxy.io')) {
      finalUrl = 'https://corsproxy.io/?$finalUrl';
    }

    return Container(
      width: widget.width,
      height: widget.height,
      color: bgColor,
      child: LayoutBuilder(builder: (context, constraints) {
        return Stack(
          children: [
            // 1. طبقة الـ PDF
            Positioned.fill(
              child: finalUrl.isEmpty
                  ? const Center(
                      child: Text('No PDF URL Provided',
                          style: TextStyle(color: Colors.white)))
                  : SfPdfViewer.network(
                      finalUrl,
                      controller: _pdfViewerController,
                      scrollDirection: _scrollDirection,
                      canShowScrollHead: false,
                      canShowScrollStatus: false,
                      pageSpacing: 4,
                      onDocumentLoaded: (PdfDocumentLoadedDetails details) {
                        setState(() {
                          _isLoading = false;
                          _errorMessage = null;
                        });
                      },
                      onDocumentLoadFailed:
                          (PdfDocumentLoadFailedDetails details) {
                        setState(() {
                          _isLoading = false;
                          _errorMessage = details.description;
                        });
                      },
                    ),
            ),

            // 2. رسالة الخطأ
            if (_errorMessage != null)
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Error loading PDF:\n$_errorMessage',
                    textAlign: TextAlign.center,
                    style:
                        const TextStyle(color: Colors.redAccent, fontSize: 16),
                  ),
                ),
              ),

            // 3. مؤشر التحميل
            if (_isLoading && finalUrl.isNotEmpty && _errorMessage == null)
              const Center(
                child: CircularProgressIndicator(color: Colors.blueAccent),
              ),

            // 4. زرار تغيير الاتجاه الاحترافي (يظهر فقط بعد التحميل)
            if (!_isLoading && _errorMessage == null)
              Positioned(
                right: 20,
                bottom: 24,
                child: _buildProfessionalToggleButton(),
              ),
          ],
        );
      }),
    );
  }

  // تصميم الزرار الاحترافي
  Widget _buildProfessionalToggleButton() {
    return InkWell(
      onTap: () {
        setState(() {
          _scrollDirection = _scrollDirection == PdfScrollDirection.vertical
              ? PdfScrollDirection.horizontal
              : PdfScrollDirection.vertical;
        });
      },
      borderRadius: BorderRadius.circular(30),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        decoration: BoxDecoration(
          color: const Color(0xFF18181C).withOpacity(0.9),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.white.withOpacity(0.1), width: 1),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              blurRadius: 10,
              offset: const Offset(0, 4),
            )
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              _scrollDirection == PdfScrollDirection.vertical
                  ? Icons.swap_vert_rounded
                  : Icons.swap_horiz_rounded,
              color: const Color(0xFF3B82F6), // أزرق هادي واحترافي
              size: 22,
            ),
            const SizedBox(width: 8),
            Text(
              _scrollDirection == PdfScrollDirection.vertical
                  ? 'Vertical'
                  : 'Horizontal',
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 14,
                letterSpacing: 0.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
