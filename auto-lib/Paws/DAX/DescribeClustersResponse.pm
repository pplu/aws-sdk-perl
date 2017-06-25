
package Paws::DAX::DescribeClustersResponse;
  use Moose;
  has Clusters => (is => 'ro', isa => 'ArrayRef[Paws::DAX::Cluster]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DAX::DescribeClustersResponse

=head1 ATTRIBUTES


=head2 Clusters => ArrayRef[L<Paws::DAX::Cluster>]

The descriptions of your DAX clusters, in response to a
I<DescribeClusters> request.


=head2 NextToken => Str

Provides an identifier to allow retrieval of paginated results.


=head2 _request_id => Str


=cut

1;