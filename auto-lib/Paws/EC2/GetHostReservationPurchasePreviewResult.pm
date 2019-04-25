
package Paws::EC2::GetHostReservationPurchasePreviewResult;
  use Moose;
  has CurrencyCode => (is => 'ro', isa => 'Str', request_name => 'currencyCode', traits => ['NameInRequest',]);
  has Purchase => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Purchase]', request_name => 'purchase', traits => ['NameInRequest',]);
  has TotalHourlyPrice => (is => 'ro', isa => 'Str', request_name => 'totalHourlyPrice', traits => ['NameInRequest',]);
  has TotalUpfrontPrice => (is => 'ro', isa => 'Str', request_name => 'totalUpfrontPrice', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetHostReservationPurchasePreviewResult

=head1 ATTRIBUTES


=head2 CurrencyCode => Str

The currency in which the C<totalUpfrontPrice> and C<totalHourlyPrice>
amounts are specified. At this time, the only supported currency is
C<USD>.

Valid values are: C<"USD">
=head2 Purchase => ArrayRef[L<Paws::EC2::Purchase>]

The purchase information of the Dedicated Host reservation and the
Dedicated Hosts associated with it.


=head2 TotalHourlyPrice => Str

The potential total hourly price of the reservation per hour.


=head2 TotalUpfrontPrice => Str

The potential total upfront price. This is billed immediately.


=head2 _request_id => Str


=cut

