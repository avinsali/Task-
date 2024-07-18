import 'package:flutter/material.dart';
class Models extends StatelessWidget{//class to difine mosels
  const Models({
    required this.title,
    required this.data,
    required this.HR_AVG,
    required this.sp_AVG,
    required this.sprint,
    required this.dis,
  });
  final String title;
  final String data;
  final String HR_AVG;
  final String sp_AVG;
  final String sprint;
  final String dis;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
class  _ArticleDescription extends StatelessWidget {// class to difine how models will show
  const _ArticleDescription({
    required this.title,
    required this.data,
    required this.HR_AVG,
    required this.sp_AVG,
    required this.sprint,
    required this.dis,
  });
  final String title;
  final String data;
  final String HR_AVG;
  final String sp_AVG;
  final String sprint;
  final String dis;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Row(
          children: <Widget>[
            Text(
              data,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const Spacer(),
        const Padding(padding: EdgeInsets.only(bottom: 6.0)),
        Row(
          children: [
            Text('HR AVG :$HR_AVG % | spAVG :$sp_AVG m| sprint:$sprint | dis :$dis km', style: const TextStyle(fontSize: 11.0,color: Colors.black ) ,),
          ],
        ),
        const Row(
          children: [
            Text('', style: TextStyle(fontSize: 12.0,color: Colors.black),),
          ],
        ),
      ],
    );
  }
}

class CustomListItemTwo extends StatelessWidget {
  const CustomListItemTwo({
    super.key,
    required this.thumbnail,
    required this.title,
    required this.data,
    required this.HR_AVG,
    required this.sp_AVG,
    required this.sprint,
    required this.dis ,
  });

  final Widget thumbnail;
  final String title;
  final String data;
  final String HR_AVG;
  final String sp_AVG;
  final String sprint;
  final String dis ;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),
          color: const Color.fromRGBO(184, 197, 208, 1.0)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0.0),
        child: SizedBox(
          height: 100,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 1.0,
                child: thumbnail,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0.0, 2.0, 0.0),
                  child:
                  _ArticleDescription(
                    title: title,
                    data: data,
                    HR_AVG: HR_AVG,
                    sp_AVG: sp_AVG,
                    sprint: sprint,
                    dis : dis ,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}