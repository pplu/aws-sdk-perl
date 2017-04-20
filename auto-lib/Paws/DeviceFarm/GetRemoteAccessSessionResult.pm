
package Paws::DeviceFarm::GetRemoteAccessSessionResult;
  use Moose;
  has RemoteAccessSession => (is => 'ro', isa => 'Paws::DeviceFarm::RemoteAccessSession', traits => ['NameInRequest'], request_name => 'remoteAccessSession' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::GetRemoteAccessSessionResult

=head1 ATTRIBUTES


=head2 RemoteAccessSession => L<Paws::DeviceFarm::RemoteAccessSession>

A container that lists detailed information about the remote access
session.


=head2 _request_id => Str


=cut

1;