import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Conexión Real',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFF3E5F5), // Soft purple/pink tone
        ),
        useMaterial3: true,
        fontFamily: 'Roboto',
      ),
      home: const VideoScriptScreen(),
    );
  }
}

class VideoScriptScreen extends StatelessWidget {
  const VideoScriptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFFFF0F5), // Lavender blush
              Color(0xFFFFF8E1), // Cosmic latte / soft yellow
              Color(0xFFF3E5F5), // Soft purple
            ],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 48.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Header
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Text(
                    'VIDEO 1 – CONEXIÓN REAL 🎤',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                      color: Color(0xFF5D4037),
                    ),
                  ),
                ),
                const Spacer(),
                
                // Script content
                const ScriptText(
                  text: '“Ser mamá, trabajar… y aún así querer algo más 😔',
                ),
                const SizedBox(height: 32),
                
                const ScriptText(
                  text: 'A mí me pasaba todo el tiempo…\nquería emprender pero no me alcanzaba la energía',
                ),
                const SizedBox(height: 32),
                
                const ScriptText(
                  text: 'Hasta que entendí que no necesitaba más tiempo…\nnecesitaba hacerlo más simple 💛',
                ),
                const SizedBox(height: 32),
                
                const ScriptText(
                  text: 'y ahí fue cuando sí pude empezar…”',
                  isHighlight: true,
                ),
                
                const Spacer(flex: 2),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ScriptText extends StatelessWidget {
  final String text;
  final bool isHighlight;

  const ScriptText({
    super.key,
    required this.text,
    this.isHighlight = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: isHighlight ? Colors.white.withOpacity(0.9) : Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(20),
        boxShadow: isHighlight
            ? [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 20,
                  offset: const Offset(0, 10),
                )
              ]
            : [],
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: isHighlight ? 22 : 18,
          height: 1.5,
          fontWeight: isHighlight ? FontWeight.w600 : FontWeight.w500,
          color: isHighlight ? const Color(0xFF3E2723) : const Color(0xFF4E342E),
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
