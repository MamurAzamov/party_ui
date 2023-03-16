import 'package:flutter/material.dart';
import 'package:party_ui/animation/FadeAnimation.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final bool _isLogin = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/im_party.jpeg"),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          padding: const EdgeInsets.only(left: 40, right: 30),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Colors.black.withOpacity(.6),
                Colors.black.withOpacity(.5),
                Colors.black.withOpacity(.4),
                Colors.black.withOpacity(.1),
              ]
            )
          ),
          child: Column(
            children: [
              const SizedBox(height: 30,),
              const FadeAnimation(),
              const Text("Find the best parties near you.", style: TextStyle(color: Colors.yellow, fontSize: 40, fontWeight: FontWeight.bold),),
              const SizedBox(height: 30,),
              const Text("Let us find you a tutorial for your interest", style: TextStyle(color: Colors.green, fontSize: 25, fontWeight: FontWeight.w600),),
              const SizedBox(height: 500,),
              _isLogin ?
              Container(
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.yellow[900],
                ),
                child: const Center(
                  child: Text("Start",style: TextStyle(color: Colors.white,fontSize: 18),),
                ),
              ):
              Row(
                children: [
                  Container(
                    height: 55,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.red,
                    ),
                    child: const Center(
                      child: Text("Google",style: TextStyle(color: Colors.white,fontSize: 18),),
                    ),
                  ),
                  const SizedBox(width: 30,),
                  Container(
                    height: 55,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.blue,
                    ),
                    child: const Center(
                      child: Text("Facebook",style: TextStyle(color: Colors.white,fontSize: 18),),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
