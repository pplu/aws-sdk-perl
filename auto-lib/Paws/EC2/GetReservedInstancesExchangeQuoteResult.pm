
package Paws::EC2::GetReservedInstancesExchangeQuoteResult;
  use Moose;
  has CurrencyCode => (is => 'ro', isa => 'Str', xmlname => 'currencyCode', traits => ['Unwrapped',]);
  has IsValidExchange => (is => 'ro', isa => 'Bool', xmlname => 'isValidExchange', traits => ['Unwrapped',]);
  has OutputReservedInstancesWillExpireAt => (is => 'ro', isa => 'Str', xmlname => 'outputReservedInstancesWillExpireAt', traits => ['Unwrapped',]);
  has PaymentDue => (is => 'ro', isa => 'Str', xmlname => 'paymentDue', traits => ['Unwrapped',]);
  has ReservedInstanceValueRollup => (is => 'ro', isa => 'Paws::EC2::ReservationValue', xmlname => 'reservedInstanceValueRollup', traits => ['Unwrapped',]);
  has ReservedInstanceValueSet => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ReservedInstanceReservationValue]', xmlname => 'reservedInstanceValueSet', traits => ['Unwrapped',]);
  has TargetConfigurationValueRollup => (is => 'ro', isa => 'Paws::EC2::ReservationValue', xmlname => 'targetConfigurationValueRollup', traits => ['Unwrapped',]);
  has TargetConfigurationValueSet => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TargetReservationValue]', xmlname => 'targetConfigurationValueSet', traits => ['Unwrapped',]);
  has ValidationFailureReason => (is => 'ro', isa => 'Str', xmlname => 'validationFailureReason', traits => ['Unwrapped',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetReservedInstancesExchangeQuoteResult

=head1 ATTRIBUTES


=head2 CurrencyCode => Str

The currency of the transaction.


=head2 IsValidExchange => Bool

If C<true>, the exchange is valid. If C<false>, the exchange cannot be
completed.


=head2 OutputReservedInstancesWillExpireAt => Str

The new end date of the reservation term.


=head2 PaymentDue => Str

The total true upfront charge for the exchange.


=head2 ReservedInstanceValueRollup => L<Paws::EC2::ReservationValue>

The cost associated with the Reserved Instance.


=head2 ReservedInstanceValueSet => ArrayRef[L<Paws::EC2::ReservedInstanceReservationValue>]

The configuration of your Convertible Reserved Instances.


=head2 TargetConfigurationValueRollup => L<Paws::EC2::ReservationValue>

The cost associated with the Reserved Instance.


=head2 TargetConfigurationValueSet => ArrayRef[L<Paws::EC2::TargetReservationValue>]

The values of the target Convertible Reserved Instances.


=head2 ValidationFailureReason => Str

Describes the reason why the exchange cannot be completed.


=head2 _request_id => Str


=cut

