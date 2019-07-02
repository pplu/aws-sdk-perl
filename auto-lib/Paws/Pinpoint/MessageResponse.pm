
package Paws::Pinpoint::MessageResponse;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', required => 1);
  has EndpointResult => (is => 'ro', isa => 'Paws::Pinpoint::MapOfEndpointMessageResult');
  has RequestId => (is => 'ro', isa => 'Str');
  has Result => (is => 'ro', isa => 'Paws::Pinpoint::MapOfMessageResult');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::MessageResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique identifier for the application that was used to send the
message.


=head2 EndpointResult => L<Paws::Pinpoint::MapOfEndpointMessageResult>

A map that contains a multipart response for each address that the
message was sent to. In the map, the endpoint ID is the key and the
result is the value.


=head2 RequestId => Str

The identifier for the original request that the message was delivered
for.


=head2 Result => L<Paws::Pinpoint::MapOfMessageResult>

A map that contains a multipart response for each address (email
address, phone number, or push notification token) that the message was
sent to. In the map, the address is the key and the result is the
value.


=head2 _request_id => Str


=cut

