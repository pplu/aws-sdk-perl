
package Paws::Chime::UpdateBotResponse;
  use Moose;
  has Bot => (is => 'ro', isa => 'Paws::Chime::Bot');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::UpdateBotResponse

=head1 ATTRIBUTES


=head2 Bot => L<Paws::Chime::Bot>

The updated bot details.


=head2 _request_id => Str


=cut

