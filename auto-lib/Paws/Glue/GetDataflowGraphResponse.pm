
package Paws::Glue::GetDataflowGraphResponse;
  use Moose;
  has DagEdges => (is => 'ro', isa => 'ArrayRef[Paws::Glue::CodeGenEdge]');
  has DagNodes => (is => 'ro', isa => 'ArrayRef[Paws::Glue::CodeGenNode]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetDataflowGraphResponse

=head1 ATTRIBUTES


=head2 DagEdges => ArrayRef[L<Paws::Glue::CodeGenEdge>]

A list of the edges in the resulting DAG.


=head2 DagNodes => ArrayRef[L<Paws::Glue::CodeGenNode>]

A list of the nodes in the resulting DAG.


=head2 _request_id => Str


=cut

1;