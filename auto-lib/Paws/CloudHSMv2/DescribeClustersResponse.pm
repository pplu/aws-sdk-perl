
package Paws::CloudHSMv2::DescribeClustersResponse;
  use Moose;
  has Clusters => (is => 'ro', isa => 'ArrayRef[Paws::CloudHSMv2::Cluster]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSMv2::DescribeClustersResponse

=head1 ATTRIBUTES


=head2 Clusters => ArrayRef[L<Paws::CloudHSMv2::Cluster>]

A list of clusters.


=head2 NextToken => Str

An opaque string that indicates that the response contains only a
subset of clusters. Use this value in a subsequent C<DescribeClusters>
request to get more clusters.


=head2 _request_id => Str


=cut

1;