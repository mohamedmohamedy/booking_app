import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'core/network/network_info.dart';
import 'features/get_hotels/data/datasources/get_hotels_remote.dart';
import 'features/get_hotels/data/repositories/get_hotels_repo_impl.dart';
import 'features/get_hotels/domain/repositories/get_hotels.dart';
import 'features/get_hotels/domain/usecases/get_hotels_usecase.dart';
import 'features/get_hotels/presentation/cubit/get_hotels_cubit.dart';
import 'features/login/data/datasources/login_remote_data_source.dart';
import 'features/login/domain/usecases/login_usecase.dart';
import 'features/login/presentation/cubit/login_cubit.dart';
import 'core/network/dio_helper.dart';
import 'features/login/data/repositories/login_repo_impl.dart';
import 'features/login/domain/repositories/login_repo.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //! Features - Login

  sl.registerFactory(
    () => LoginCubit(sl()),
  );

  //! Features - Get Hotels

  sl.registerFactory(
    () => GetHotelsCubit(sl()),
  );

  // Use cases

  sl.registerLazySingleton(() => LoginUsecase(sl()));
  sl.registerLazySingleton(() => GetHotelsUsecase(sl()));

  // Repository

  sl.registerLazySingleton<LoginRepo>(
    () => LoginRepoImpl(sl(), sl()),
  );
  sl.registerLazySingleton<GetHotelsRepo>(
    () => GetHotelsRepoImpl(sl(), sl()),
  );
  // Data sources

  sl.registerLazySingleton<LoginRemoteDataSources>(
    () => LoginRemoteDataSourcesImpl(sl()),
  );
  sl.registerLazySingleton<GetHotelsRemoteDataSources>(
    () => GetHotelsRemoteDataSourcesImpl(sl()),
  );

  //! Core
  sl.registerLazySingleton<DioHelper>(
    () => DioHelperImpl(),
  );
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  //! External
  sl.registerLazySingleton(() => InternetConnectionChecker());
}
