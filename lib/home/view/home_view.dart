import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/assets/assets.gen.dart';
import 'package:fooddelivery/home/view/widgets/widgets.dart';

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
  int categoryIndex = 0;

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
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 500),
          child: CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverAppBar(
                elevation: 0.0,
                backgroundColor: Theme.of(context).colorScheme.primary,
                expandedHeight: height,
                pinned: true,
                title: Row(
                  children: [
                    Column(
                      children: [
                        HomeTextButtonIcon(
                          onPressed: () {},
                          label: Text(
                            'Your Location',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          icon: const Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          children: [
                            Assets.images.icons.location.svg(
                              colorFilter: const ColorFilter.mode(
                                Colors.white,
                                BlendMode.srcIn,
                              ),
                            ),
                            Text(
                              'New York City',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        HomeIconButton(
                          onPressed: () {},
                          icon: Assets.images.icons.search.svg(
                            colorFilter: const ColorFilter.mode(
                              Colors.white,
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        HomeIconButton(
                          onPressed: () {},
                          icon: Assets.images.icons.notifications.svg(
                            colorFilter: const ColorFilter.mode(
                              Colors.white,
                              BlendMode.srcIn,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                flexibleSpace: FlexibleSpaceBar(
                  title: _showTitle
                      ? const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
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
                    child:
                        Assets.images.dashboardHeader.image(fit: BoxFit.cover),
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Find by Category',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              const Spacer(),
                              TextButton(
                                onPressed: () {},
                                child: const Text('See All'),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              HomeCategoryCard(
                                title: 'Burger',
                                icon: Assets.images.icons.burger.svg(
                                  width: 32,
                                  height: 32,
                                ),
                                index: categoryIndex,
                                indexValue: 0,
                                onTap: (index) {
                                  setState(() {
                                    categoryIndex = index;
                                  });
                                },
                              ),
                              HomeCategoryCard(
                                title: 'Tacos',
                                icon: Assets.images.icons.tacos.svg(
                                  width: 32,
                                  height: 32,
                                ),
                                index: categoryIndex,
                                indexValue: 1,
                                onTap: (index) {
                                  setState(() {
                                    categoryIndex = index;
                                  });
                                },
                              ),
                              HomeCategoryCard(
                                title: 'Soda',
                                icon: Assets.images.icons.soda.svg(
                                  width: 32,
                                  height: 32,
                                ),
                                index: categoryIndex,
                                indexValue: 2,
                                onTap: (index) {
                                  setState(() {
                                    categoryIndex = index;
                                  });
                                },
                              ),
                              HomeCategoryCard(
                                title: 'Pizza',
                                icon: Assets.images.icons.pizza.svg(
                                  width: 32,
                                  height: 32,
                                ),
                                index: categoryIndex,
                                indexValue: 3,
                                onTap: (index) {
                                  setState(() {
                                    categoryIndex = index;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                    childCount: 1,
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.all(25),
                sliver: SliverGrid(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200.0,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                    mainAxisExtent: 220,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return HomeFoodCard(
                        image: Assets.images.bgScreen1.path,
                        title: 'Ordinary Burgers',
                        rate: '4.9',
                        distance: '190m',
                        price: '€ 17,230',
                        onPressed: () {},
                      );
                    },
                    childCount: 6,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
