
package Paws::DeviceFarm::UpdateNetworkProfileResult;
  use Moose;
  has NetworkProfile => (is => 'ro', isa => 'Paws::DeviceFarm::NetworkProfile', traits => ['NameInRequest'], request_name => 'networkProfile' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::UpdateNetworkProfileResult

=head1 ATTRIBUTES


=head2 NetworkProfile => L<Paws::DeviceFarm::NetworkProfile>

A list of the available network profiles.


=head2 _request_id => Str


=cut

1;