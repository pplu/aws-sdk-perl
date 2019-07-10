
package Paws::Chime::GetVoiceConnectorTerminationHealthResponse;
  use Moose;
  has TerminationHealth => (is => 'ro', isa => 'Paws::Chime::TerminationHealth');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::GetVoiceConnectorTerminationHealthResponse

=head1 ATTRIBUTES


=head2 TerminationHealth => L<Paws::Chime::TerminationHealth>

The termination health details.


=head2 _request_id => Str


=cut

