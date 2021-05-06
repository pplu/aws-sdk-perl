
package Paws::Chime::ListMeetingsResponse;
  use Moose;
  has Meetings => (is => 'ro', isa => 'ArrayRef[Paws::Chime::Meeting]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::ListMeetingsResponse

=head1 ATTRIBUTES


=head2 Meetings => ArrayRef[L<Paws::Chime::Meeting>]

The Amazon Chime SDK meeting information.


=head2 NextToken => Str

The token to use to retrieve the next page of results.


=head2 _request_id => Str


=cut

