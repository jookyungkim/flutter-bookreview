import 'package:bloc/bloc.dart';
import 'package:bookreview/src/common/model/user_model.dart';
import 'package:bookreview/src/common/repository/user_repository.dart';
import 'package:equatable/equatable.dart';

class TopReviewerCubit extends Cubit<TopReviewerState> {
  final UserRepository _userRepository;
  TopReviewerCubit(this._userRepository) : super(TopReviewerState()) {
    _loadTopReviewerData();
  }

  _loadTopReviewerData() async {
    var results = await _userRepository.loadTopReviewerData();
    emit(state.copyWith(results: results));
  }

  refresh() {
    _loadTopReviewerData();
  }
}

class TopReviewerState extends Equatable {
  final List<UserModel>? results;
  const TopReviewerState({this.results});

  TopReviewerState copyWith({List<UserModel>? results}) {
    return TopReviewerState(results: results ?? this.results);
  }

  @override
  List<Object?> get props => [results];
}
