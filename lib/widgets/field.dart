import 'package:flutter/material.dart';

class ZoomableImageWithObjects extends StatefulWidget {
  final String imageUrl;
  final List<Widget> Function(double scale) objectsBuilder;
  final Offset customCenter;

  const ZoomableImageWithObjects({
    super.key,
    required this.imageUrl,
    required this.objectsBuilder,
    required this.customCenter,
  });

  @override
  State<ZoomableImageWithObjects> createState() => _ZoomableImageWithObjectsState();
}

class _ZoomableImageWithObjectsState extends State<ZoomableImageWithObjects> {
  double? imageWidth;
  double? imageHeight;
  ImageStream? _imageStream;
  ImageStreamListener? _imageListener;

  @override
  void initState() {
    super.initState();
    _loadImage();
  }

  void _loadImage() {
    final image = Image.asset(widget.imageUrl);
    _imageStream = image.image.resolve(const ImageConfiguration());
    _imageListener = ImageStreamListener((ImageInfo info, _) {
      setState(() {
        imageWidth = info.image.width.toDouble();
        imageHeight = info.image.height.toDouble();
      });
    });
    _imageStream!.addListener(_imageListener!);
  }

  @override
  void dispose() {
    _imageStream?.removeListener(_imageListener!);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (imageWidth == null || imageHeight == null) {
      return const Center(child: CircularProgressIndicator());
    }

    return InteractiveViewer(
      boundaryMargin: const EdgeInsets.all(double.infinity),
      minScale: 0.1,
      maxScale: 10.0,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Apply transform to shift the custom center to (0,0)
          Transform.translate(
            offset: Offset(-widget.customCenter.dx, -widget.customCenter.dy),
            child: Image.asset(
              widget.imageUrl,
              width: imageWidth,
              height: imageHeight,
              fit: BoxFit.contain,
            ),
          ),
          // Objects are positioned relative to the custom (0,0)
          ...widget.objectsBuilder(1.0).map((obj) => obj),
        ],
      ),
    );
  }
}