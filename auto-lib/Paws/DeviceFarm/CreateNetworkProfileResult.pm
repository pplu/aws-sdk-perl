
package Paws::DeviceFarm::CreateNetworkProfileResult;
  use Moose;
  has NetworkProfile => (is => 'ro', isa => 'Paws::DeviceFarm::NetworkProfile', traits => ['NameInRequest'], request_name => 'networkProfile' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::CreateNetworkProfileResult

=head1 ATTRIBUTES


=head2 NetworkProfile => L<Paws::DeviceFarm::NetworkProfile>

The network profile that is returned by the create network profile
request.


=head2 _request_id => Str


=cut

1;