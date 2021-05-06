
package Paws::DeviceFarm::CreateRemoteAccessSessionResult;
  use Moose;
  has RemoteAccessSession => (is => 'ro', isa => 'Paws::DeviceFarm::RemoteAccessSession', traits => ['NameInRequest'], request_name => 'remoteAccessSession' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::CreateRemoteAccessSessionResult

=head1 ATTRIBUTES


=head2 RemoteAccessSession => L<Paws::DeviceFarm::RemoteAccessSession>

A container that describes the remote access session when the request
to create a remote access session is sent.


=head2 _request_id => Str


=cut

1;