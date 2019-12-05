
package Paws::ConnectParticipant::SendEventResponse;
  use Moose;
  has AbsoluteTime => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectParticipant::SendEventResponse

=head1 ATTRIBUTES


=head2 AbsoluteTime => Str

The time when the event was sent.

It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For
example, 2019-11-08T02:41:28.172Z.


=head2 Id => Str

The ID of the response.


=head2 _request_id => Str


=cut

