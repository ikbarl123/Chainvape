part of 'tabs.dart';

class ThreadView extends StatelessWidget {
  const ThreadView({ Key? key, required this.thread}) : super(key: key);
    final Thread thread;


  @override
  Widget build(BuildContext context) {
    return BlocProvider( 
      create: (context) => RepliesBloc(
        ThreadService())..add(GetPostReplies(id:thread.id??1)),
      child: ThreadViewPage(thread: thread,),
    );
      
  }
}

class ThreadViewPage extends StatefulWidget {
  const ThreadViewPage({Key? key, required this.thread}) : super(key: key);
  final Thread thread;


  @override
  _ThreadViewState createState() => _ThreadViewState();
}

class _ThreadViewState extends State<ThreadViewPage> {

  @override
  Widget build(BuildContext context) {
    final repliesBloc = BlocProvider.of<RepliesBloc>(context);
    
    DateTime threadDt = DateTime.parse(
                                widget.thread.createdAt ??
                                    "2022-01-25 05:16:23");
    TextEditingController _textController = new TextEditingController();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                Navigator.pop(context);
              }),
          title: Text(
            'Thread',
            style: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor: Color.fromRGBO(226, 252, 229, 1),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // SizedBox(height: 10,),
                Center(
                  child: Container(
                   // height: 500,
                    width: 600,
                    decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20)))),
                    child: Center(
                      child: Column(
                        children: [
                          ListTile(
                            title: Text(widget.thread.title??"title"),
                            subtitle: Text('created by ${widget.thread.author?.name??"empty"}'),
                            trailing: Text(threadDt.day.toString() +
                                                "-" +
                                                threadDt.month.toString() +
                                                "-" +
                                                threadDt.year.toString()),
                          ),
                          Divider(
                            height: 1,
                            color: Colors.black,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                              widget.thread.text??"text",),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: buildText("Reply")),
                SizedBox(
                  height: 20,
                ),
                //ListView builder for replies
                BlocBuilder<RepliesBloc, RepliesState>(
                  bloc: repliesBloc,
                  builder: (context, state) {
                    if (state is RepliesLoaded) {
                      return ListView.builder(
                        //padding: const EdgeInsets.only(bottom: 100),
                        shrinkWrap: true,
                        itemCount: state.replies.length,
                        itemBuilder: (context, index) {
                          DateTime parseDt = DateTime.parse(
                              state.replies[index].createdAt ??
                                  "2022-01-25 05:16:23");
                          return Column(
                            children: [
                              Center(
                                child: Container(
                                  decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)))),
                                  child: Center(
                                    child: Column(
                                      children: [
                                        ListTile(
                                          title: Text(state.replies[index]
                                                  .owner?.name ??
                                              "kosong"),
                                          leading:
                                              Icon(Icons.portrait_rounded),
                                          trailing: Text(
                                              parseDt.day.toString() +
                                                  "-" +
                                                  parseDt.month.toString() +
                                                  "-" +
                                                  parseDt.year.toString()),
                                        ),
                                        Divider(
                                          height: 1,
                                          color: Colors.black,
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(20.0),
                                          child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                              state.replies[index].text ??
                                                  "kosong")),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          );
                        },
                      );
                    }
                    if (state is ForumRepliesEmpty)
                    {
                      return Center(
                        child: Text("No replies yet"),
                      );
                    }
                    return Container();
                  },
                ),

                
                Align(
                    alignment: Alignment.centerLeft,
                    child: buildText("Post Reply")),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    width: 343,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: TextField(
                      maxLines: 10,
                      style: TextStyle(color: Colors.black),
                      decoration: buildTextfield(""),
                      controller: _textController,
                      obscureText: false,
                    ),
                  ),
                ),

                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                      width: 142,
                      height: 52,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                           repliesBloc.add(CreateReply(postId:widget.thread.id??1, reply:_textController.text));
                           (context as Element).reassemble();
                            Navigator.pop(context);  // pop current page
                            Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => ThreadView(
                                                thread: widget.thread)));
                           
                        },
                        child: Text(
                          'Reply',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(30, 81, 40, 1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22)),
                        ),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        )));
  }
}
