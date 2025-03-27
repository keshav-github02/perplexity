
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:perplexity/services/chat_web_service.dart';
import 'package:perplexity/theme/colors.dart';
import 'package:perplexity/widgets/search_section.dart';
import 'package:perplexity/widgets/side_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String fullResponse="";
  @override
  void initState() {
    // TODO: implement initState
    ChatWebService().connect();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
        kIsWeb?SideBar():SizedBox(),
          Expanded(
            child: Padding(
              padding: kIsWeb?const EdgeInsets.all(8.0):EdgeInsets.zero,
              child: Column(
                children: [
                 Expanded(child: SearchSection()),
                  // StreamBuilder(stream: ChatWebService().contentStream, builder: (context,snapshot){
                  //   if(snapshot.connectionState==ConnectionState.waiting){
                  //     return Center(
                  //       child: CircularProgressIndicator(),
                  //     );
                  //   }
                  //   fullResponse+=snapshot.data?['data']??'';
                  //     return Text(fullResponse);
                  //
                  //
                  // }),


                  //footer
                  Container(
                   padding: EdgeInsets.symmetric(vertical: 16),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        Padding(padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Text('Pro',style: TextStyle(fontSize: 14,color: AppColors.footerGrey),),
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Text('Enterprise',style: TextStyle(fontSize: 14,color: AppColors.footerGrey),),
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Text('Store',style: TextStyle(fontSize: 14,color: AppColors.footerGrey),),
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Text('Blog',style: TextStyle(fontSize: 14,color: AppColors.footerGrey),),
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Text('Careers',style: TextStyle(fontSize: 14,color: AppColors.footerGrey),),
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Text('English (English)',style: TextStyle(fontSize: 14,color: AppColors.footerGrey),),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
