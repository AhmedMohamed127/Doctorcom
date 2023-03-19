abstract class ReservationStates {}

class ReservationStateInitial extends ReservationStates {}

class ReservationStateLoading extends ReservationStates {}

class ReservationStateSuccess extends ReservationStates {}

class ReservationStateError extends ReservationStates
{
  final error;
  ReservationStateError(this.error);
}