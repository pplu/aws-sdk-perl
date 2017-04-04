
package Paws::DeviceFarm::ListRemoteAccessSessionsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has RemoteAccessSessions => (is => 'ro', isa => 'ArrayRef[Paws::DeviceFarm::RemoteAccessSession]', traits => ['NameInRequest'], request_name => 'remoteAccessSessions' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListRemoteAccessSessionsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.


=head2 RemoteAccessSessions => ArrayRef[L<Paws::DeviceFarm::RemoteAccessSession>]

A container representing the metadata from the service about each
remote access session you are requesting.


=head2 _request_id => Str


=cut

1;