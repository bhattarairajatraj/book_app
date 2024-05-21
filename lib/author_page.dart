import 'package:flutter/material.dart';

class AuthorPage extends StatelessWidget {
  const AuthorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 50),
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width, // Use MediaQuery to get screen width
                margin: const EdgeInsets.only(top: 85),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(top: 100, left: 20, right: 20), // Added padding
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          'Kamal Jung Kunwar',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Column(
                        children: [
                          Text(
                            'First of all, I would like to express my special gratitude to everyone who directly or indirectly supported Save the Rhino Foundation (SRF) Nepal in the making. SRF Nepal was an environmental and social organization for the welfare and devotion to nature and environment conservation. ',
                            textAlign: TextAlign.justify, 
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'In Nepal, massive and rampant poaching of rare and endangered fauna and the illegal use, purchase, sale, and transportation of their trophies have existed for a long time. Of the wild animals, the poaching of the one-horned rhinoceros and the Royal Bengal tiger for their horns, skins and bones had been particularly serious and increasing by the day. This has resulted in the rhinoceros and tigers becoming rare and endangered in the Chitwan Valley. ',
                              textAlign: TextAlign.justify, 
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'In endangered wildlife conservation, government entities, i.e., the national park and divisional forest offices, the Nepal Army, the informants network, the local community, conservation partners, other security organizations, tourism entrepreneurs, and the media have a key role to play. There is a need to establish a close, effective, and efficient relationship among these stakeholders to protect them. ',
                              textAlign: TextAlign.justify, 
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'To motivate and inspire conservation frontline staff and activists, we must appreciate and encourage them. We have to support conservation workers, informants, and families whose members have lost their lives in the course of rhino conservation too.',
                              textAlign: TextAlign.justify, 
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: 210,
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: const DecorationImage(
                      image: NetworkImage('https://www.bbcstudios.com/media/6654/jamie-davis.jpg'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(
                      color: Colors.white,
                      width: 4.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
