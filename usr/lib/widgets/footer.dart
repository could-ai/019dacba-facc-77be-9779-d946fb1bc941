import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFF1E2A38), // Dark footer background
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
      child: Column(
        children: [
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 80,
            runSpacing: 40,
            children: [
              // Logo & About
              SizedBox(
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.local_hospital, color: Colors.white, size: 32),
                        const SizedBox(width: 8),
                        Text(
                          'Здоровье Плюс',
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Ваш надежный партнер в заботе о здоровье. Современное оборудование и лучшие специалисты.',
                      style: TextStyle(color: Colors.white70, height: 1.5),
                    ),
                  ],
                ),
              ),
              
              // Links
              SizedBox(
                width: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Навигация',
                      style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 16),
                    _FooterLink(title: 'Главная'),
                    _FooterLink(title: 'Услуги'),
                    _FooterLink(title: 'Врачи'),
                    _FooterLink(title: 'Контакты'),
                  ],
                ),
              ),
              
              // Legal
              SizedBox(
                width: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Информация',
                      style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 16),
                    _FooterLink(title: 'Политика конфиденциальности'),
                    _FooterLink(title: 'Условия использования'),
                    _FooterLink(title: 'Лицензии'),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          const Divider(color: Colors.white24),
          const SizedBox(height: 20),
          const Text(
            '© 2026 Медицинский центр «Здоровье Плюс». Все права защищены.',
            style: TextStyle(color: Colors.white54, fontSize: 14),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class _FooterLink extends StatelessWidget {
  final String title;

  const _FooterLink({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: InkWell(
        onTap: () {},
        child: Text(
          title,
          style: const TextStyle(color: Colors.white70),
        ),
      ),
    );
  }
}
