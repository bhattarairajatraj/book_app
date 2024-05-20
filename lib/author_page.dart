import 'package:flutter/material.dart';

class AuthorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 50),
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                width: MediaQuery.of(context).size.width - 40,
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 20,
                      offset: Offset(0, 10),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Kamal Jung Kunwar',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    // Description text
                    Text(
                      'This is one type of short answer question that you’ll hear from a trained interviewer (or one who just read a book or blog about interviewing). It’s often heard at the beginning of the interview as a means of leading into more in-depth questions Have an answer ready to this question before you go into the interview so you can answer back quickly and confidently. Even if it isn’t asked, you can use those self-descriptive words as a framework for other answers to the interviewer’s questions. Even if you’re not asked the question directly, you will always need to describe yourself in an interview, to one degree or another I’m very communicative, detail-oriented, and versatile. I like to think of myself as a team player. While I don’t mind taking on solo projects, I prefer to work with others. I like to think that I’m persistent and persuasive. Working in sales, these traits have served me well. Outside of work, I enjoy taking part in lively debates where I can share my views with others ou did your research on the company and found that the work culture is based on community, group, and teamwork. If that’s the case, make sure the interviewer knows you can function well within that culture, and you enjoy socialization outside of it. Remember, for many employers, it’s just as important to fit into a work culture as it is to be able to do the job well but here is htajondokas nokoaisndomaslk mka nkjnasl kdnasjb dasknd jkasbjkd askd nbasjkn djaskn djk jkandjk a',
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
              Positioned(
                top: -75, // Adjust this value
                child: OverflowBox(
                  maxWidth: MediaQuery.of(context).size.width - 40,
                  child: Container(
                    width: 200,
                    height: 150,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://s26162.pcdn.co/wp-content/uploads/2018/01/neil.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
