part of 'pages.dart';

class FoodPage extends StatefulWidget {
  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    double listItemWidth =
        MediaQuery.of(context).size.width - 2 * defaultMargin;
    return ListView(
      children: [
        // Header
        Container(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          color: Colors.white,
          height: 100,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Food Market',
                    style: blackFontStyle1,
                  ),
                  Text(
                    "Let's get some food",
                    style: greyFontStyle.copyWith(fontWeight: FontWeight.w300),
                  ),
                ],
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                        image: NetworkImage(
                            (context.bloc<UserCubit>().state as UserLoaded)
                                .user
                                .picturePath),
                        fit: BoxFit.cover)),
              )
            ],
          ),
        ),
        // List of Food
        Container(
          height: 258,
          width: double.infinity,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Row(
                children: mockFood
                    .map((e) => Padding(
                          padding: EdgeInsets.only(
                              left: (e == mockFood.first) ? defaultMargin : 0,
                              right: defaultMargin),
                          child: GestureDetector(
                              onTap: () {
                                Get.to(FoodDetailPage(
                                  transaction: Transaction(
                                      food: e,
                                      user: (context.bloc<UserCubit>().state
                                              as UserLoaded)
                                          .user),
                                  onBackButtonPressed: () {
                                    Get.back();
                                  },
                                ));
                              },
                              child: FoodCard(e)),
                        ))
                    .toList(),
              )
            ],
          ),
        ),
        // List of Food (TAB)
        Container(
          width: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              CustomTabbar(
                selectedIndex: selectedIndex,
                titles: ['New Taste', 'Popular', 'Recommended'],
                onTap: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              ),
              SizedBox(
                height: 16,
              ),
              Builder(builder: (_) {
                List<Food> foods = (selectedIndex == 0)
                    ? mockFood
                    : (selectedIndex == 1)
                        ? []
                        : [];
                return Column(
                  children: foods
                      .map((e) => Padding(
                            padding: EdgeInsets.fromLTRB(
                                defaultMargin, 0, defaultMargin, 16),
                            child:
                                FoodListItem(food: e, itemWidth: listItemWidth),
                          ))
                      .toList(),
                );
              }),
            ],
          ),
        ),
        // fungsi agar saat smartphone mode landscape data tidak terpotong atau muncul semua data
        SizedBox(
          height: 80,
        ),
      ],
    );
  }
}
