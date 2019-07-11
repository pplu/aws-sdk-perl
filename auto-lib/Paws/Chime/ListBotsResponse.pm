
package Paws::Chime::ListBotsResponse;
  use Moose;
  has Bots => (is => 'ro', isa => 'ArrayRef[Paws::Chime::Bot]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::ListBotsResponse

=head1 ATTRIBUTES


=head2 Bots => ArrayRef[L<Paws::Chime::Bot>]

List of bots and bot details.


=head2 NextToken => Str

The token to use to retrieve the next page of results.


=head2 _request_id => Str


=cut

