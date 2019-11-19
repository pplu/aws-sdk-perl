# Generated from json/callresult_class.tt

package Paws::Glue::GetDataflowGraphResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Glue::Types qw/Glue_CodeGenNode Glue_CodeGenEdge/;
  has DagEdges => (is => 'ro', isa => ArrayRef[Glue_CodeGenEdge]);
  has DagNodes => (is => 'ro', isa => ArrayRef[Glue_CodeGenNode]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DagEdges' => {
                               'type' => 'ArrayRef[Glue_CodeGenEdge]',
                               'class' => 'Paws::Glue::CodeGenEdge'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DagNodes' => {
                               'type' => 'ArrayRef[Glue_CodeGenNode]',
                               'class' => 'Paws::Glue::CodeGenNode'
                             }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetDataflowGraphResponse

=head1 ATTRIBUTES


=head2 DagEdges => ArrayRef[Glue_CodeGenEdge]

A list of the edges in the resulting DAG.


=head2 DagNodes => ArrayRef[Glue_CodeGenNode]

A list of the nodes in the resulting DAG.


=head2 _request_id => Str


=cut

1;