import 'package:get_it/get_it.dart';
import 'package:gym_dream/common/helper/setup_for_cubit.dart';
import 'package:gym_dream/common/helper/setup_for_repos.dart';

final GetIt serviceLocator = GetIt.instance;

class ServiceLocator {
  Future<void> setUpServiceLocator() async {
    SetupForRepos().setupForRepos();

    SetupForCubits().setUpForCubits();
  }
}
