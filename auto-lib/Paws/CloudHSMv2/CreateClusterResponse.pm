
package Paws::CloudHSMv2::CreateClusterResponse;
  use Moose;
  has Cluster => (is => 'ro', isa => 'Paws::CloudHSMv2::Cluster');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSMv2::CreateClusterResponse

=head1 ATTRIBUTES


=head2 Cluster => L<Paws::CloudHSMv2::Cluster>

Information about the cluster that was created.


=head2 _request_id => Str


=cut

1;