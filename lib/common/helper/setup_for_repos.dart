import 'package:gym_dream/features/admin/layout/data/repositories/layout_repo.dart';

import '../../features/admin/layout/data/repositories/layout_repo_impl.dart';
import '../../service_locator.dart';

class SetupForRepos {
  void setupForRepos() {
    serviceLocator.registerLazySingleton<LayOutRepo>(() => LayoutRepoImpl());
  }
}
