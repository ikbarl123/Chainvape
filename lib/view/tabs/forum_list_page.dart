part of 'tabs.dart';

class Forum extends StatelessWidget {
  const Forum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) =>
            ForumBloc(ThreadService(), AuthService())..add(GetPostList()),
        child: ForumPage());
  }
}

class ForumPage extends StatefulWidget {
  const ForumPage({Key? key}) : super(key: key);

  @override
  _ForumState createState() => _ForumState();
}

class _ForumState extends State<ForumPage> {
  @override
  Widget build(BuildContext context) {
    final forumBloc = BlocProvider.of<ForumBloc>(context);
    return Scaffold(
        backgroundColor: Color.fromRGBO(226, 252, 229, 1),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                Container(
                    height: 50,
                    width: 600,
                    decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20)))),
                    child: ListTile(
                      leading: Icon(
                        Icons.portrait_rounded,
                        color: Colors.black,
                      ),
                      title: BlocBuilder<ForumBloc, ForumState>(
                        bloc: forumBloc,
                        builder: (context, state) {
                          if (state is ForumInitial) {
                            return Center(
                              child: CircularProgressIndicator(
                                strokeWidth: 5,
                              ),
                            );
                          } else if (state is ForumLoaded) {
                            return Text("Hai " + state.user.user.name);
                          }
                          return Container();
                        },
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => CreateThread()));
                        },
                      ),
                    )),
                SizedBox(
                  height: 40,
                ),
                BlocBuilder<ForumBloc, ForumState>(
                  bloc: forumBloc,
                  builder: (context, state) {
                    if (state is ForumInitial) {
                      return Center(
                        child: CircularProgressIndicator(
                          strokeWidth: 5,
                        ),
                      );
                    } else if (state is ForumLoaded) {

                      //return listview.builder(state.threads);
                      return ListView.builder(
                        padding: const EdgeInsets.only(bottom: 100),
                        itemCount: state.threads.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          DateTime parseDt = DateTime.parse(
                              state.threads[index].createdAt ??
                                  "2022-01-25 05:16:23");
                          return Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => ThreadView(
                                          thread: state.threads[index])));
                                },
                                child: Container(
                                  height: 300,
                                  width: 600,
                                  decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)))),
                                  child: Center(
                                    child: Column(
                                      children: [
                                        ListTile(
                                          title: Text(
                                              state.threads[index].title ??
                                                  "kosong"),
                                          subtitle: Text("By " +
                                              (state.threads[index].author
                                                      ?.name ??
                                                  'kosong')),
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
                                        Expanded(
                                            child: Padding(
                                          padding: const EdgeInsets.all(20.0),
                                          child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                                state.threads[index].text ??
                                                    "kosong"),
                                          ),
                                        ))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                            ],
                          );
                        },
                      );
                    }
                    return Container();
                  },
                ),
              ],
            ),
          ),
        )));
  }
}
