part of 'tabs.dart';

class CreateThread extends StatelessWidget {
  const CreateThread({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) =>
            ForumBloc(ThreadService(), AuthService())..add(GetPostList()),
        child: CreateThreadPage());
  }
}

class CreateThreadPage extends StatefulWidget {
  const CreateThreadPage({Key? key}) : super(key: key);

  @override
  _CreateThreadState createState() => _CreateThreadState();
}

class _CreateThreadState extends State<CreateThreadPage> {
  @override
  Widget build(BuildContext context) {
    final forumBloc = context.read<ForumBloc>();
    TextEditingController _titleController = new TextEditingController();
    TextEditingController _textController = new TextEditingController();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => {
              //pop
              Navigator.pop(context)
            },
          ),
          title: Text(
            'Create Thread',
            style: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor: Color.fromRGBO(226, 252, 229, 1),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: buildText("Title")),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Container(
                    width: 343,
                    height:60,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Material(
                      type: MaterialType.transparency,
                      child: TextFormField(
                        maxLines: 3,
                        // to trigger disabledBorder
                        style: TextStyle(color: Colors.black),
                        decoration: buildTextfield(""),
                        controller: _titleController,
                        obscureText: false,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: buildText("Post")),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    width: 343,
                    height: 400,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: TextField(
                      maxLines: 20,
                      style: TextStyle(color: Colors.black),
                      decoration: buildTextfield(""),
                      controller: _textController,
                      obscureText: false,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
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
                          forumBloc.add(CreatePost(
                              title: _titleController.text,
                              post: _textController.text));
                          //pop navigator
                          forumBloc.add(GetPostList()); 
                          //pop navigator
                          Navigator.pop(context);
                          
                        },
                        child: Text(
                          'Post',
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
