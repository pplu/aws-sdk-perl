
package Paws::EC2::GetReservedInstancesExchangeQuoteResult;
  use Moose;
  has CurrencyCode => (is => 'ro', isa => 'Str', request_name => 'currencyCode', traits => ['NameInRequest',]);
  has IsValidExchange => (is => 'ro', isa => 'Bool', request_name => 'isValidExchange', traits => ['NameInRequest',]);
  has OutputReservedInstancesWillExpireAt => (is => 'ro', isa => 'Str', request_name => 'outputReservedInstancesWillExpireAt', traits => ['NameInRequest',]);
  has PaymentDue => (is => 'ro', isa => 'Str', request_name => 'paymentDue', traits => ['NameInRequest',]);
  has ReservedInstanceValueRollup => (is => 'ro', isa => 'Paws::EC2::ReservationValue', request_name => 'reservedInstanceValueRollup', traits => ['NameInRequest',]);
  has ReservedInstanceValueSet => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ReservedInstanceReservationValue]', request_name => 'reservedInstanceValueSet', traits => ['NameInRequest',]);
  has TargetConfigurationValueRollup => (is => 'ro', isa => 'Paws::EC2::ReservationValue', request_name => 'targetConfigurationValueRollup', traits => ['NameInRequest',]);
  has TargetConfigurationValueSet => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TargetReservationValue]', request_name => 'targetConfigurationValueSet', traits => ['NameInRequest',]);
  has ValidationFailureReason => (is => 'ro', isa => 'Str', request_name => 'validationFailureReason', traits => ['NameInRequest',]);

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

