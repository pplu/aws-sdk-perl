
package Paws::SSM::SendCommandResult;
  use Moose;
  has Command => (is => 'ro', isa => 'Paws::SSM::Command');


### main pod documentation begin ###

=head1 NAME

Paws::SSM::SendCommandResult

=head1 ATTRIBUTES

=head2 Command => L<Paws::SSM::Command>

  The request as it was received by SSM. Also provides the command ID
which can be used future references to this request.


=cut

1;