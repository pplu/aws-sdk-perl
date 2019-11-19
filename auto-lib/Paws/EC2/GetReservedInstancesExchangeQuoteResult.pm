
package Paws::EC2::GetReservedInstancesExchangeQuoteResult;
  use Moo;

  use Types::Standard qw/Str Bool ArrayRef/;
  use Paws::EC2::Types qw/EC2_ReservationValue EC2_TargetReservationValue EC2_ReservedInstanceReservationValue/;
  has CurrencyCode => (is => 'ro', isa => Str);
  has IsValidExchange => (is => 'ro', isa => Bool);
  has OutputReservedInstancesWillExpireAt => (is => 'ro', isa => Str);
  has PaymentDue => (is => 'ro', isa => Str);
  has ReservedInstanceValueRollup => (is => 'ro', isa => EC2_ReservationValue);
  has ReservedInstanceValueSet => (is => 'ro', isa => ArrayRef[EC2_ReservedInstanceReservationValue]);
  has TargetConfigurationValueRollup => (is => 'ro', isa => EC2_ReservationValue);
  has TargetConfigurationValueSet => (is => 'ro', isa => ArrayRef[EC2_TargetReservationValue]);
  has ValidationFailureReason => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ValidationFailureReason' => 'validationFailureReason',
                       'ReservedInstanceValueRollup' => 'reservedInstanceValueRollup',
                       'TargetConfigurationValueRollup' => 'targetConfigurationValueRollup',
                       'ReservedInstanceValueSet' => 'reservedInstanceValueSet',
                       'IsValidExchange' => 'isValidExchange',
                       'CurrencyCode' => 'currencyCode',
                       'PaymentDue' => 'paymentDue',
                       'TargetConfigurationValueSet' => 'targetConfigurationValueSet',
                       'OutputReservedInstancesWillExpireAt' => 'outputReservedInstancesWillExpireAt'
                     },
  'types' => {
               'PaymentDue' => {
                                 'type' => 'Str'
                               },
               'CurrencyCode' => {
                                   'type' => 'Str'
                                 },
               'OutputReservedInstancesWillExpireAt' => {
                                                          'type' => 'Str'
                                                        },
               'TargetConfigurationValueSet' => {
                                                  'class' => 'Paws::EC2::TargetReservationValue',
                                                  'type' => 'ArrayRef[EC2_TargetReservationValue]'
                                                },
               'IsValidExchange' => {
                                      'type' => 'Bool'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ReservedInstanceValueRollup' => {
                                                  'class' => 'Paws::EC2::ReservationValue',
                                                  'type' => 'EC2_ReservationValue'
                                                },
               'ValidationFailureReason' => {
                                              'type' => 'Str'
                                            },
               'ReservedInstanceValueSet' => {
                                               'type' => 'ArrayRef[EC2_ReservedInstanceReservationValue]',
                                               'class' => 'Paws::EC2::ReservedInstanceReservationValue'
                                             },
               'TargetConfigurationValueRollup' => {
                                                     'type' => 'EC2_ReservationValue',
                                                     'class' => 'Paws::EC2::ReservationValue'
                                                   }
             }
}
;
    return $Params_map;
  }

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


=head2 ReservedInstanceValueRollup => EC2_ReservationValue

The cost associated with the Reserved Instance.


=head2 ReservedInstanceValueSet => ArrayRef[EC2_ReservedInstanceReservationValue]

The configuration of your Convertible Reserved Instances.


=head2 TargetConfigurationValueRollup => EC2_ReservationValue

The cost associated with the Reserved Instance.


=head2 TargetConfigurationValueSet => ArrayRef[EC2_TargetReservationValue]

The values of the target Convertible Reserved Instances.


=head2 ValidationFailureReason => Str

Describes the reason why the exchange cannot be completed.


=head2 _request_id => Str


=cut

