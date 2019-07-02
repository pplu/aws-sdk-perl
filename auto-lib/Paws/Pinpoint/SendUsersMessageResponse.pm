
package Paws::Pinpoint::SendUsersMessageResponse;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', required => 1);
  has RequestId => (is => 'ro', isa => 'Str');
  has Result => (is => 'ro', isa => 'Paws::Pinpoint::MapOfMapOfEndpointMessageResult');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::SendUsersMessageResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique identifier for the application that was used to send the
message.


=head2 RequestId => Str

The unique identifier that was assigned to the message request.


=head2 Result => L<Paws::Pinpoint::MapOfMapOfEndpointMessageResult>

An object that indicates which endpoints the message was sent to, for
each user. The object lists user IDs and, for each user ID, provides
the endpoint IDs that the message was sent to. For each endpoint ID, it
provides an EndpointMessageResult object.


=head2 _request_id => Str


=cut

