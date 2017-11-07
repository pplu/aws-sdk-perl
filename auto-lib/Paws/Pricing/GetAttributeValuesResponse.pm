
package Paws::Pricing::GetAttributeValuesResponse;
  use Moose;
  has AttributeValues => (is => 'ro', isa => 'ArrayRef[Paws::Pricing::AttributeValue]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Pricing::GetAttributeValuesResponse

=head1 ATTRIBUTES


=head2 AttributeValues => ArrayRef[L<Paws::Pricing::AttributeValue>]

The list of values for an attribute. For example, C<Throughput
Optimized HDD> and C<Provisioned IOPS> are two available values for the
C<AmazonEC2> C<volumeType>.


=head2 NextToken => Str

The pagination token that indicates the next set of results to
retrieve.


=head2 _request_id => Str


=cut

1;