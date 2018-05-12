
package Paws::ES::PurchaseReservedElasticsearchInstanceOfferingResponse;
  use Moose;
  has ReservationName => (is => 'ro', isa => 'Str');
  has ReservedElasticsearchInstanceId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::PurchaseReservedElasticsearchInstanceOfferingResponse

=head1 ATTRIBUTES


=head2 ReservationName => Str

The customer-specified identifier used to track this reservation.


=head2 ReservedElasticsearchInstanceId => Str

Details of the reserved Elasticsearch instance which was purchased.


=head2 _request_id => Str


=cut

