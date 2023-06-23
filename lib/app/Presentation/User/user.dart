
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_project/app/Model/Repo/repo_model.dart';
import 'package:test_project/app/Utils/app_styles.dart';
import '../../Repository/Home/home_repo.dart';
import '../../Widgets/text_widgets.dart';


@RoutePage()
class UserPage extends StatefulWidget {
  const UserPage({Key? key, required this.userData}) : super(key: key);
  final userData;

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {

  @override
  initState() {
    super.initState();
    getUserRepo();
  }

  bool _isGridView = false;
  List<RepoModel> _repositories = [];
  List<RepoModel> _filteredRepositories = [];
  TextEditingController _filterController = TextEditingController();


  getUserRepo() async {


    var response = await HomeRepository.getRepos(userName:widget.userData['login'] );
    if (response is String){

      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          behavior: SnackBarBehavior.floating, // Add this line
          content: TextWidget(
            text: response,
            color: AppStyles.primaryTextColor,
            textAlign: TextAlign.start,
          )));
    }
    else if (response.statusCode == 200) {
      List<RepoModel> responseData = response.data;
      print(responseData);

      setState(() {
        _repositories = responseData;
        _filteredRepositories = responseData;
      });
     print(responseData);
    }
  }
  void _toggleView() {
    setState(() {
      _isGridView = !_isGridView;
    });
  }
  void _filterRepositories(String searchText) {
    setState(() {
      if (searchText.isEmpty) {
        _filteredRepositories = _repositories;
      } else {
        _filteredRepositories = _repositories
            .where((repo) =>
            repo.name!.toLowerCase().contains(searchText.toLowerCase()))
            .toList();
      }
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('GitHub Repositories'),
        actions: [
          IconButton(
            icon: Icon(_isGridView ? Icons.list : Icons.grid_view),
            onPressed: _toggleView,
          ),
        ],
      ),
      body:Column(children: [

        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: _filterController,
            onChanged: _filterRepositories,
            decoration: const InputDecoration(
              labelText: 'Filter by Name',
            ),
          ),
        ),
        const SizedBox(height: 40,),
        Text("Welcome ${widget.userData['name']}",style: const TextStyle(
            color: AppStyles.primaryAccentColor, fontSize: 22, fontWeight: FontWeight.bold
        ),),
        Expanded(
          child: _isGridView
              ? GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.5,
            ),
            itemCount: _repositories.length,
            itemBuilder: (context, index) {
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: ListTile(
                  title: Text(_repositories[index].name!),
                  subtitle: Text(_repositories[index].visibility!),
                  trailing: Chip(
                    label: Text("forks ${_repositories[index].forks!}"),
                    backgroundColor: Colors.blue,
                    labelStyle: const TextStyle(color: Colors.white),
                  ),

                ),
              );
            },
          )
              : ListView.builder(
            itemCount: _filteredRepositories.length,
            itemBuilder: (context, index) {
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: ListTile(
                  title: Text(_repositories[index].name!),
                  subtitle: Text(_repositories[index].visibility!),
                  trailing: Chip(
                    label: Text("forks ${_repositories[index].forks!}"),
                    backgroundColor: Colors.blue,
                    labelStyle: const TextStyle(color: Colors.white),
                  ),

                ),
              );
            },
          ),
        ),

      ]),
    );
  }
}

// class RepositoryCard extends StatelessWidget {
//   final RepoModel repository;
//
//   const RepositoryCard(this.repository, {super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
//       child: ListTile(
//         title: Text(repository.name!),
//         subtitle: Text(repository.description!),
//         trailing: Chip(
//           label: Text(repository.language!),
//           backgroundColor: Colors.blue,
//           labelStyle: const TextStyle(color: Colors.white),
//         ),
//
//         ),
//       ),
//     );
//   }
// }