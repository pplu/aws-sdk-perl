
package Paws::ManagedBlockchain::GetNodeOutput;
  use Moose;
  has Node => (is => 'ro', isa => 'Paws::ManagedBlockchain::Node');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::GetNodeOutput

=head1 ATTRIBUTES


=head2 Node => L<Paws::ManagedBlockchain::Node>

Properties of the node configuration.


=head2 _request_id => Str


=cut

