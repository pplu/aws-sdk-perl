
package Paws::SSM::TerminateSessionResponse;
  use Moose;
  has SessionId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::TerminateSessionResponse

=head1 ATTRIBUTES


=head2 SessionId => Str

The ID of the session that has been terminated.


=head2 _request_id => Str


=cut

1;