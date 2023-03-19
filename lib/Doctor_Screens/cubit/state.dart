abstract class ReservationDoctorStates {}

class ReservationStateInitial extends ReservationDoctorStates {}

class ShowReservationStateLoading extends ReservationDoctorStates {}

class ShowReservationStateSuccess extends ReservationDoctorStates {}

class ShowReservationStateError extends ReservationDoctorStates
{
  final error;
  ShowReservationStateError(this.error);
}