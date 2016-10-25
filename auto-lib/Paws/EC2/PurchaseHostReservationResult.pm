
package Paws::EC2::PurchaseHostReservationResult;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', xmlname => 'clientToken', traits => ['Unwrapped',]);
  has CurrencyCode => (is => 'ro', isa => 'Str', xmlname => 'currencyCode', traits => ['Unwrapped',]);
  has Purchase => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Purchase]', xmlname => 'purchase', traits => ['Unwrapped',]);
  has TotalHourlyPrice => (is => 'ro', isa => 'Str', xmlname => 'totalHourlyPrice', traits => ['Unwrapped',]);
  has TotalUpfrontPrice => (is => 'ro', isa => 'Str', xmlname => 'totalUpfrontPrice', traits => ['Unwrapped',]);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::PurchaseHostReservationResult

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier you provide to ensure idempotency of
the request. For more information, see How to Ensure Idempotency in the
I<Amazon Elastic Compute Cloud User Guide>



=head2 CurrencyCode => Str

The currency in which the C<totalUpfrontPrice> and C<totalHourlyPrice>
amounts are specified. At this time, the only supported currency is
C<USD>.

Valid values are: C<"USD">

=head2 Purchase => ArrayRef[L<Paws::EC2::Purchase>]

Describes the details of the purchase.



=head2 TotalHourlyPrice => Str

The total hourly price of the reservation calculated per hour.



=head2 TotalUpfrontPrice => Str

The total amount that will be charged to your account when you purchase
the reservation.




=cut

