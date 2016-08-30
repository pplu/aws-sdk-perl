
package Paws::EC2::GetHostReservationPurchasePreviewResult;
  use Moose;
  has CurrencyCode => (is => 'ro', isa => 'Str', xmlname => 'currencyCode', traits => ['Unwrapped',]);
  has Purchase => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Purchase]', xmlname => 'purchase', traits => ['Unwrapped',]);
  has TotalHourlyPrice => (is => 'ro', isa => 'Str', xmlname => 'totalHourlyPrice', traits => ['Unwrapped',]);
  has TotalUpfrontPrice => (is => 'ro', isa => 'Str', xmlname => 'totalUpfrontPrice', traits => ['Unwrapped',]);

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

The purchase information of the Dedicated Host Reservation and the
Dedicated Hosts associated with it.



=head2 TotalHourlyPrice => Str

The potential total hourly price of the reservation per hour.



=head2 TotalUpfrontPrice => Str

The potential total upfront price. This is billed immediately.




=cut

