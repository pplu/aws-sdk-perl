# Generated from default/object.tt
package Paws::Glue::WorkflowGraph;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::Glue::Types qw/Glue_Edge Glue_Node/;
  has Edges => (is => 'ro', isa => ArrayRef[Glue_Edge]);
  has Nodes => (is => 'ro', isa => ArrayRef[Glue_Node]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Nodes' => {
                            'class' => 'Paws::Glue::Node',
                            'type' => 'ArrayRef[Glue_Node]'
                          },
               'Edges' => {
                            'class' => 'Paws::Glue::Edge',
                            'type' => 'ArrayRef[Glue_Edge]'
                          }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::WorkflowGraph

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::WorkflowGraph object:

  $service_obj->Method(Att1 => { Edges => $value, ..., Nodes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::WorkflowGraph object:

  $result = $service_obj->Method(...);
  $result->Att1->Edges

=head1 DESCRIPTION

A workflow graph represents the complete workflow containing all the
AWS Glue components present in the workflow and all the directed
connections between them.

=head1 ATTRIBUTES


=head2 Edges => ArrayRef[Glue_Edge]

  A list of all the directed connections between the nodes belonging to
the workflow.


=head2 Nodes => ArrayRef[Glue_Node]

  A list of the the AWS Glue components belong to the workflow
represented as nodes.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

