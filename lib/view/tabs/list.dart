part of 'tabs.dart';

class ListStore extends StatefulWidget {
  const ListStore({Key? key}) : super(key: key);

  @override
  _ListStoreState createState() => _ListStoreState();
}

class _ListStoreState extends State<ListStore> {
  List<Vapestore> storeList = [];
  

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          VapestoreBloc(RepositoryProvider.of<StoreService>(context))..add(LoadApiEvent()),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text("List"),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.black,
              ),
              // SizedBox(height: 10,),
              Expanded(
                child: BlocBuilder<VapestoreBloc, VapestoreState>(
                  builder: (context, state) {
                    if (state is VapestoreInitial){
                      return Center(child: CircularProgressIndicator(strokeWidth: 5,),);
                    }else if (state is VapestoreLoaded){
                      print(state.store.length);
                      return ListView.builder(
                        shrinkWrap: true,
                        itemCount: state.store.length,
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                              border: Border.all(),
                            ),
                            child: ListTile(
                              title: Text(
                                  state.store[index].namatoko??"error"), //Text(StoreService().storeList[index].namatoko??"Title"),
                              leading: Text(
                                  "dummy"), //Image.network(StoreService().storeList[index].imgurl??"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzj3zuwqgcuIdnxN0PaGXlbTNgYadtrKmuMQ&usqp=CAU"),
                              trailing: IconButton(
                                icon: Icon(Icons.star),
                                onPressed: () {},
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DetailStore(
                                              store: state.store[index],
                                            )));
                              },
                            ),
                          );
                        });
                    }
                    return Container();
                    
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
