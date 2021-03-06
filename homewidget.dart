import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeNavItems extends StatefulWidget {
  @override
  _HomeNavItemsState createState() => _HomeNavItemsState();
}

class _HomeNavItemsState extends State<HomeNavItems> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            getHomePageNavItems(
                context: context,
                icon: Icons.mood_bad,
                title: 'Symptoms',
                subTitle: 'Signs to Identify the risk of Infection',
                navigate: 'symptoms'),
            SizedBox(
              width: 16.0,
            ),
            getHomePageNavItems(
                context: context,
                icon: FontAwesomeIcons.solidHospital,
                title: 'Prevention',
                subTitle: 'Help you to avoid getting infected',
                navigate: 'prevention'
            ),
          ],
        ),
        SizedBox(
          height: 16.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            getHomePageNavItems(
                context: context,
                icon: Icons.insert_chart,
                title: 'Reports',
                subTitle: 'Data and info related to the disease',
                navigate: 'reports'
            ),
            SizedBox(
              width: 16.0,
            ),
            getHomePageNavItems(
                context: context,
                icon: FontAwesomeIcons.globeAmericas,
                title: 'Countries',
                subTitle: 'Countries infected by COVID-19',
                navigate: 'countries'),
          ],
        ),
        SizedBox(
          height: 24.0,
        )
      ],
    );
  }
}

Widget getHomePageNavItems(
    {BuildContext context, IconData icon, String title, String subTitle, String navigate}) {
  return Expanded(
    child: InkWell(
      onTap: (){
        navigate != null ? Navigator.pushNamed(context, '/$navigate') : print("No where to go") ;
      },
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.all(Radius.circular(5.0))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(
              icon,
              size: 32.0,
              color: Colors.black,

            ),
            SizedBox(
              height: 24.0,
            ),
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .title
                  .copyWith(color: Colors.white),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              subTitle,
              style: Theme.of(context).textTheme.caption.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w100,
                  fontSize: 10.0),
            ),
          ],
        ),
      ),
    ),
  );
}



/*

                            padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                              child: Card(
                              
                                 margin: EdgeInsets.only(left: 8,top:8, right: 8, bottom: 24),
                                 elevation: 8,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)), //<--custom shape
                                child:InkWell(
                                  onTap: () {
                                                  final Course course= Course( courseName : (snapshot.data[index].data["name"]),courseDescription : snapshot.data[index].data["description"],courseImage :snapshot.data[index].data["imageurl"]);
                                                  var cid = Firestore.instance.collection('course').where('name',isEqualTo:snapshot.data[index].data["name"]).reference();
                                                 // cid= cid.getId();


                                       Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CourseDetail(course : course,courseid:'${course.courseName}'),
                  // Pass the arguments as part of the RouteSettings. The
                  // DetailScreen reads the arguments from these settings.
              
                ),
              );
            
            
                                        },

                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                
                              //  Spacer(),
            Text(" "),
          ClipRRect(  //<--clipping image
            borderRadius: BorderRadius.vertical(top: Radius.circular(32)), 
            child:  new Image.network(
                                    snapshot.data[index].data["imageurl"],
              height: MediaQuery.of(context).size.height *0.3,
              fit: BoxFit.none,
            ),
          ),
 SizedBox(height: 8),

                               
                                
                                ListTile(
                                  title: Text(snapshot.data[index].data[
                                      "name"]), // height: 50,                         color: Colors.amber[colorCodes[index]],
                                  subtitle: Text(
                                    
                                        html2md.convert(snapshot.data[index].data["description"])
                                      ),
                                ),
                                     
            
                                ButtonBar(
                                    children: <Widget>[
                                     
                                      RaisedButton(
                                        color: Colors.lightGreen,
               
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                ),
                                        child: const Text('DETAILS'),
                                        onPressed: () {
                                                  final Course course= Course( courseName : (snapshot.data[index].data["name"]).toString(),courseDescription : snapshot.data[index].data["description"],courseImage :snapshot.data[index].data["imageurl"]);
                          
                                          
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CourseDetail(course : course,),
              
                ),
              );
            

                                        },
                                      ),
                                    ],
                                    alignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max),
                              ],
                            ),
                          
                          )
                        
                           ) 



*/