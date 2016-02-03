
package Paws::ECS::DescribeClustersResponse;
  use Moose;
  has Clusters => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Cluster]', traits => ['Unwrapped'], xmlname => 'clusters' );
  has Failures => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Failure]', traits => ['Unwrapped'], xmlname => 'failures' );


### main pod documentation begin ###

=head1 NAME

Paws::ECS::DescribeClustersResponse

=head1 ATTRIBUTES


=head2 Clusters => ArrayRef[L<Paws::ECS::Cluster>]

The list of clusters.



=head2 Failures => ArrayRef[L<Paws::ECS::Failure>]

Any failures associated with the call.




=cut

1;