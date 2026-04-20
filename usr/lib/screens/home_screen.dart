import 'package:flutter/material.dart';
import '../widgets/navbar.dart';
import '../widgets/hero_section.dart';
import '../widgets/services_section.dart';
import '../widgets/doctors_section.dart';
import '../widgets/contact_section.dart';
import '../widgets/footer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Theme.of(context).colorScheme.surface,
            floating: true,
            pinned: true,
            elevation: 2,
            toolbarHeight: 80,
            flexibleSpace: const FlexibleSpaceBar(
              background: NavBar(),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              const HeroSection(),
              const ServicesSection(),
              const DoctorsSection(),
              const ContactSection(),
              const Footer(),
            ]),
          ),
        ],
      ),
    );
  }
}
