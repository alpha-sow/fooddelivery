import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/app/view/widgets/widgets.dart';
import 'package:fooddelivery/assets/assets.gen.dart';

@RoutePage()
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final ScrollController _scrollController = ScrollController();
  final double height = 180.0;
  double _flexibleSpaceHeight = 180.0;
  bool _showTitle = true;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        _flexibleSpaceHeight = height - _scrollController.offset;
        if (_flexibleSpaceHeight < 0) {
          _flexibleSpaceHeight = 0; // Prevent negative height
        }
        _showTitle = _scrollController.offset < height * .5;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          _HomeHeader(
            height: height,
            showTitle: _showTitle,
            flexibleSpaceHeight: _flexibleSpaceHeight,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}

class _HomeHeader extends StatelessWidget {
  const _HomeHeader({
    required this.flexibleSpaceHeight,
    this.showTitle = false,
    required this.height,
  });
  final double height;
  final double flexibleSpaceHeight;
  final bool showTitle;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Theme.of(context).colorScheme.primary,
      expandedHeight: height,
      pinned: true,
      title: Row(
        children: [
          const AppHeaderLocation(),
          const Spacer(),
          Row(
            children: [
              AppIconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search_rounded,
                  color: Colors.white,
                ),
              ),
              AppIconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_none_rounded,
                  color: Colors.white,
                ),
              )
            ],
          )
        ],
      ),
      flexibleSpace: FlexibleSpaceBar(
        title: showTitle
            ? const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Provide the best food for you',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            : null,
        background: Container(
          child: Assets.images.dashboardHeader.image(fit: BoxFit.fill),
        ),
      ),
    );
  }
}
