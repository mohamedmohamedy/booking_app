import 'package:dartz/dartz.dart';
import '../../../../core/error/exception.dart';
import '../../../../core/usecase/usecase.dart';
import '../../../get_hotels/domain/entities/get_hotels_entities.dart';
import '../repositories/search_repo.dart';

class SearchUsecase extends BaseUseCase<SearchUsecaseInput, GetHotelsEntity> {
  final SearchRepo _repo;
  SearchUsecase(this._repo);
  @override
  Future<Either<PrimaryServerException, GetHotelsEntity>> call(
      SearchUsecaseInput input) async {
    return await _repo.search(
      SearchInput(
        count: input.count,
        name: input.name,
        page: input.page,
        address: input.address,
        distance: input.distance,
        latitude: input.latitude,
        longitude: input.longitude,
        maxPrice: input.maxPrice,
        minPrice: input.minPrice,
      ),
    );
  }
}

class SearchUsecaseInput {
  final String name;
  final int count;
  final int page;
  final String? address;
  final dynamic maxPrice;
  final dynamic minPrice;
  final double? latitude;
  final double? longitude;
  final dynamic distance;
  const SearchUsecaseInput({
    required this.name,
    required this.count,
    required this.page,
    this.address,
    this.distance,
    this.latitude,
    this.longitude,
    this.maxPrice,
    this.minPrice,
  });
}