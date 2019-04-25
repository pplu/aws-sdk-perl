
package Paws::ES::DescribeReservedElasticsearchInstancesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ReservedElasticsearchInstances => (is => 'ro', isa => 'ArrayRef[Paws::ES::ReservedElasticsearchInstance]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::DescribeReservedElasticsearchInstancesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Provides an identifier to allow retrieval of paginated results.


=head2 ReservedElasticsearchInstances => ArrayRef[L<Paws::ES::ReservedElasticsearchInstance>]

List of reserved Elasticsearch instances.


=head2 _request_id => Str


=cut

