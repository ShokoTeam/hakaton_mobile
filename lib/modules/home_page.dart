import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hakaton_teamspace/core/constants.dart';
import 'package:hakaton_teamspace/data/providers/projects/projects_cubit.dart';
import 'package:hakaton_teamspace/modules/profile/profile_page.dart';
import 'package:hakaton_teamspace/modules/projects/projects_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _pageIndex = 0;

  @override
  void initState() {
    super.initState();
    context.read<ProjectsProvider>().loadProjects(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: UIColors.brand,
        currentIndex: _pageIndex,
        onTap: (value) => setState(() => _pageIndex = value),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.copy_outlined), label: 'Проекты'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Профиль'),
        ],
      ),
    );
  }
}

final _pages = [
  const ProjectsPage(),
  const ProfilePage(),
];
