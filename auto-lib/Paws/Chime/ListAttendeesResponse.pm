
package Paws::Chime::ListAttendeesResponse;
  use Moose;
  has Attendees => (is => 'ro', isa => 'ArrayRef[Paws::Chime::Attendee]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::ListAttendeesResponse

=head1 ATTRIBUTES


=head2 Attendees => ArrayRef[L<Paws::Chime::Attendee>]

The Amazon Chime SDK attendee information.


=head2 NextToken => Str

The token to use to retrieve the next page of results.


=head2 _request_id => Str


=cut

