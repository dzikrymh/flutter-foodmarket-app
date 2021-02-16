part of 'pages.dart';

class FoodPage extends StatefulWidget {
  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
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
                            'http://risetcdn.jatimtimes.com/images/2018/12/22/Jarang-Diketahui-Ini-Sepuluh-Fakta-tentang-Lisa-Blackpink150660d3a8418aa2.jpg'),
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
                          child: FoodCard(e),
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
                String body = (selectedIndex == 0)
                    ? 'New Taste Body'
                    : (selectedIndex == 1)
                        ? 'Popular Body'
                        : 'Recommended Body';
                return Center(
                  child: Text(
                    body,
                    style: blackFontStyle2,
                  ),
                );
              }),
              SizedBox(
                height: 80,
              ),
            ],
          ),
        )
      ],
    );
  }
}
