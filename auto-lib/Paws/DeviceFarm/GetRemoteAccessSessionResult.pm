
package Paws::DeviceFarm::GetRemoteAccessSessionResult;
  use Moose;
  has RemoteAccessSession => (is => 'ro', isa => 'Paws::DeviceFarm::RemoteAccessSession', traits => ['NameInRequest'], request_name => 'remoteAccessSession' );


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::GetRemoteAccessSessionResult

=head1 ATTRIBUTES


=head2 RemoteAccessSession => L<Paws::DeviceFarm::RemoteAccessSession>

A container that lists detailed information about the remote access
session.




=cut

1;