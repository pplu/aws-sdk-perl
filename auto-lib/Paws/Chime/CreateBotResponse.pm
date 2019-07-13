
package Paws::Chime::CreateBotResponse;
  use Moose;
  has Bot => (is => 'ro', isa => 'Paws::Chime::Bot');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::CreateBotResponse

=head1 ATTRIBUTES


=head2 Bot => L<Paws::Chime::Bot>

The bot details.


=head2 _request_id => Str


=cut

