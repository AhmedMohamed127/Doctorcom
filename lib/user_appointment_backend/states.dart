abstract class OrderStates {}

class OrderStateInitial extends OrderStates {}

class OrderStateLoading extends OrderStates {}

class OrderStateSuccess extends OrderStates {}

class OrderStateError extends OrderStates
{
  final error;

  OrderStateError(this.error);
}