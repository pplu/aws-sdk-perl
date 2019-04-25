
package Paws::EKS::CreateClusterResponse;
  use Moose;
  has Cluster => (is => 'ro', isa => 'Paws::EKS::Cluster', traits => ['NameInRequest'], request_name => 'cluster');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::CreateClusterResponse

=head1 ATTRIBUTES


=head2 Cluster => L<Paws::EKS::Cluster>

The full description of your new cluster.


=head2 _request_id => Str


=cut

