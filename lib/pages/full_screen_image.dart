import 'package:flutter/material.dart';

class FullScreenImagePage extends StatelessWidget {
  final String imageUrl; // Image URL passed as a parameter

  const FullScreenImagePage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple[500]!, Colors.purple[900]!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.purple[500]!, Colors.purple[900]!],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Hero(
              tag: 'imageTag',
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(Icons.cancel,
                              size: 30, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 3,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.7),
                      child: Image.network(
                        imageUrl,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}