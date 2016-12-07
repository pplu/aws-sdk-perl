
package Paws::SSM::SendCommandResult;
  use Moose;
  has Command => (is => 'ro', isa => 'Paws::SSM::Command');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::SendCommandResult

=head1 ATTRIBUTES


=head2 Command => L<Paws::SSM::Command>

The request as it was received by Systems Manager. Also provides the
command ID which can be used future references to this request.


=head2 _request_id => Str


=cut

1;