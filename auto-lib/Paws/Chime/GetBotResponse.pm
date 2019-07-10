
package Paws::Chime::GetBotResponse;
  use Moose;
  has Bot => (is => 'ro', isa => 'Paws::Chime::Bot');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::GetBotResponse

=head1 ATTRIBUTES


=head2 Bot => L<Paws::Chime::Bot>

The chat bot details.


=head2 _request_id => Str


=cut

