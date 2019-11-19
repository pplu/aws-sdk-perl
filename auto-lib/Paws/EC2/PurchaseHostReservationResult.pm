
package Paws::EC2::PurchaseHostReservationResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_Purchase/;
  has ClientToken => (is => 'ro', isa => Str);
  has CurrencyCode => (is => 'ro', isa => Str);
  has Purchase => (is => 'ro', isa => ArrayRef[EC2_Purchase]);
  has TotalHourlyPrice => (is => 'ro', isa => Str);
  has TotalUpfrontPrice => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ClientToken' => 'clientToken',
                       'CurrencyCode' => 'currencyCode',
                       'Purchase' => 'purchase',
                       'TotalUpfrontPrice' => 'totalUpfrontPrice',
                       'TotalHourlyPrice' => 'totalHourlyPrice'
                     },
  'types' => {
               'TotalHourlyPrice' => {
                                       'type' => 'Str'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TotalUpfrontPrice' => {
                                        'type' => 'Str'
                                      },
               'Purchase' => {
                               'class' => 'Paws::EC2::Purchase',
                               'type' => 'ArrayRef[EC2_Purchase]'
                             },
               'CurrencyCode' => {
                                   'type' => 'Str'
                                 },
               'ClientToken' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::PurchaseHostReservationResult

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see How to Ensure
Idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).


=head2 CurrencyCode => Str

The currency in which the C<totalUpfrontPrice> and C<totalHourlyPrice>
amounts are specified. At this time, the only supported currency is
C<USD>.

Valid values are: C<"USD">
=head2 Purchase => ArrayRef[EC2_Purchase]

Describes the details of the purchase.


=head2 TotalHourlyPrice => Str

The total hourly price of the reservation calculated per hour.


=head2 TotalUpfrontPrice => Str

The total amount charged to your account when you purchase the
reservation.


=head2 _request_id => Str


=cut

