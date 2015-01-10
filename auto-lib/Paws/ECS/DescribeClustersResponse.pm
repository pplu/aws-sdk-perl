
package Paws::ECS::DescribeClustersResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has clusters => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Cluster]');
  has failures => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Failure]');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::DescribeClustersResponse

=head1 ATTRIBUTES

=head2 clusters => ArrayRef[Paws::ECS::Cluster]

  

The list of clusters.









=head2 failures => ArrayRef[Paws::ECS::Failure]

  


=cut

