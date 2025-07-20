part of 'profile_bloc.dart';

@immutable
sealed class ProfileState {}

final class ProfileInitial extends ProfileState {}

class ProfileRequestSuccessState extends ProfileState {
  final Either<String, List<Profile>> profile;

  ProfileRequestSuccessState({required this.profile});
}

class ProfileLoadingState extends ProfileState {}