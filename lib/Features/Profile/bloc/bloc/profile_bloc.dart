import 'package:aviz/Features/Profile/data/model/profile.dart';
import 'package:aviz/Features/Profile/data/repository/profile_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final IProfileRepository profileRepository;
  ProfileBloc(this.profileRepository) : super(ProfileInitial()) {
    on<ProfileGetInitializedData>((event, emit) async {
      emit(ProfileLoadingState());
      var profileList = await profileRepository.getProfile();

      emit(ProfileRequestSuccessState(profile: profileList));
    });
  }
}
