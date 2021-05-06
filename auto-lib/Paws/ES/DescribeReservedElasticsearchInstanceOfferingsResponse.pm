
package Paws::ES::DescribeReservedElasticsearchInstanceOfferingsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ReservedElasticsearchInstanceOfferings => (is => 'ro', isa => 'ArrayRef[Paws::ES::ReservedElasticsearchInstanceOffering]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::DescribeReservedElasticsearchInstanceOfferingsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Provides an identifier to allow retrieval of paginated results.


=head2 ReservedElasticsearchInstanceOfferings => ArrayRef[L<Paws::ES::ReservedElasticsearchInstanceOffering>]

List of reserved Elasticsearch instance offerings


=head2 _request_id => Str


=cut

