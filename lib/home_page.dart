import 'package:flutter/material.dart';
import 'package:flutter_green_minimal_ui/details_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                ),
                Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/avocado.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(7.0),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Good',
                  style: TextStyle(
                    fontFamily: 'Futur',
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF5B8842),
                  ),
                ),
                Text(
                  'Morning',
                  style: TextStyle(
                    fontFamily: 'Futur',
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF5B8842),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Popular Food',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 17.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 7.0,
          ),
          SizedBox(
            height: 250.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildListItem('assets/plate1.png', 'Vegan breakfast', '\$28'),
                _buildListItem('assets/plate4.png', 'Protein Salad', '\$28'),
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'Best Food',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                fontSize: 17.0,
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Container(
              height: 200.0,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/plate1.png'),
                ),
                gradient: const LinearGradient(
                  colors: [Colors.white, Color(0xFFACBEA3)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 75.0,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.0),
            topRight: Radius.circular(50.0),
          ),
          color: Color(0xFF5AC035),
        ),
        padding: const EdgeInsets.only(left: 40.0, right: 40.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Icon(Icons.bookmark_border, color: Colors.white),
            Icon(Icons.search, color: Colors.white),
            Icon(Icons.shopping_basket, color: Colors.white),
            Icon(Icons.person_outline, color: Colors.white),
          ],
        ),
      ),
    );
  }

  _buildListItem(String imgPath, String foodName, String price) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) => DetailsPage(
                price: price, foodName: foodName, hereTag: imgPath),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0),
        child: Container(
          height: 200.0,
          width: 200.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                blurRadius: 6.0,
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5.0,
              ),
            ],
          ),
          child: Stack(
            children: [
              Container(
                height: 175.0,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.white, Color(0xFFACBEA3)],
                  ),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0)),
                ),
              ),
              Hero(
                tag: imgPath,
                child: Container(
                  height: 175.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imgPath),
                      fit: BoxFit.contain,
                    ),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0)),
                  ),
                ),
              ),
              Positioned(
                top: 160.0,
                right: 20.0,
                child: Material(
                  elevation: 2,
                  borderRadius: BorderRadius.circular(15.0),
                  child: Container(
                    height: 30.0,
                    width: 30.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.white,
                    ),
                    child: const Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 17.0,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 190.0,
                left: 10.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      foodName,
                      style: const TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Montserrat',
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 3.0),
                    SizedBox(
                      width: 175.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Text(
                                '4.9',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12.0,
                                  fontFamily: 'Montserrat',
                                ),
                              ),
                              SizedBox(width: 3.0),
                              Icon(Icons.star, color: Colors.green, size: 14.0),
                              Icon(Icons.star, color: Colors.green, size: 14.0),
                              Icon(Icons.star, color: Colors.green, size: 14.0),
                              Icon(Icons.star, color: Colors.green, size: 14.0),
                              Icon(Icons.star, color: Colors.green, size: 14.0),
                            ],
                          ),
                          Text(
                            price,
                            style: const TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
