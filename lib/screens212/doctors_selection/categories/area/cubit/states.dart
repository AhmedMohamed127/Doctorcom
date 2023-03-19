
abstract class ShowDoctorsByAreaStates {}

class ShowDoctorsByAreaInitial extends ShowDoctorsByAreaStates {}

class ShowDoctorsByAreaLoading extends ShowDoctorsByAreaStates {}

class ShowDoctorsByAreaSuccess extends ShowDoctorsByAreaStates {}


class ShowDoctorsByAreaError extends ShowDoctorsByAreaStates
{
  final error;

  ShowDoctorsByAreaError(this.error);
}