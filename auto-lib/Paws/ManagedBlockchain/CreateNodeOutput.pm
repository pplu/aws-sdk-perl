
package Paws::ManagedBlockchain::CreateNodeOutput;
  use Moose;
  has NodeId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::CreateNodeOutput

=head1 ATTRIBUTES


=head2 NodeId => Str

The unique identifier of the node.


=head2 _request_id => Str


=cut

