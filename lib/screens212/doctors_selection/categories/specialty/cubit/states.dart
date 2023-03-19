
abstract class ShowDoctorsBySpecialtyStates {}

class ShowDoctorsBySpecialtyInitial extends ShowDoctorsBySpecialtyStates {}

class ShowDoctorsBySpecialtyLoading extends ShowDoctorsBySpecialtyStates {}

class ShowDoctorsBySpecialtySuccess extends ShowDoctorsBySpecialtyStates {}


class ShowDoctorsBySpecialtyError extends ShowDoctorsBySpecialtyStates
{
  final error;

  ShowDoctorsBySpecialtyError(this.error);
}