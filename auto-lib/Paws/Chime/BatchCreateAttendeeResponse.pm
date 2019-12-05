
package Paws::Chime::BatchCreateAttendeeResponse;
  use Moose;
  has Attendees => (is => 'ro', isa => 'ArrayRef[Paws::Chime::Attendee]');
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::Chime::CreateAttendeeError]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::BatchCreateAttendeeResponse

=head1 ATTRIBUTES


=head2 Attendees => ArrayRef[L<Paws::Chime::Attendee>]

The attendee information, including attendees IDs and join tokens.


=head2 Errors => ArrayRef[L<Paws::Chime::CreateAttendeeError>]

If the action fails for one or more of the attendees in the request, a
list of the attendees is returned, along with error codes and error
messages.


=head2 _request_id => Str


=cut

