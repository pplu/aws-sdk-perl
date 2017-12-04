
package Paws::DAX::UpdateClusterResponse;
  use Moose;
  has Cluster => (is => 'ro', isa => 'Paws::DAX::Cluster');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DAX::UpdateClusterResponse

=head1 ATTRIBUTES


=head2 Cluster => L<Paws::DAX::Cluster>

A description of the DAX cluster, after it has been modified.


=head2 _request_id => Str


=cut

1;