
package Paws::DeviceFarm::StopRemoteAccessSessionResult;
  use Moose;
  has RemoteAccessSession => (is => 'ro', isa => 'Paws::DeviceFarm::RemoteAccessSession', traits => ['NameInRequest'], request_name => 'remoteAccessSession' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::StopRemoteAccessSessionResult

=head1 ATTRIBUTES


=head2 RemoteAccessSession => L<Paws::DeviceFarm::RemoteAccessSession>

A container representing the metadata from the service about the remote
access session you are stopping.


=head2 _request_id => Str


=cut

1;