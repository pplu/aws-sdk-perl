# Generated from default/object.tt
package Paws::Batch::NodeProperties;
  use Moo;
  use Types::Standard qw/Int ArrayRef/;
  use Paws::Batch::Types qw/Batch_NodeRangeProperty/;
  has MainNode => (is => 'ro', isa => Int, required => 1);
  has NodeRangeProperties => (is => 'ro', isa => ArrayRef[Batch_NodeRangeProperty], required => 1);
  has NumNodes => (is => 'ro', isa => Int, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NumNodes' => {
                               'type' => 'Int'
                             },
               'NodeRangeProperties' => {
                                          'class' => 'Paws::Batch::NodeRangeProperty',
                                          'type' => 'ArrayRef[Batch_NodeRangeProperty]'
                                        },
               'MainNode' => {
                               'type' => 'Int'
                             }
             },
  'NameInRequest' => {
                       'NumNodes' => 'numNodes',
                       'NodeRangeProperties' => 'nodeRangeProperties',
                       'MainNode' => 'mainNode'
                     },
  'IsRequired' => {
                    'NumNodes' => 1,
                    'NodeRangeProperties' => 1,
                    'MainNode' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::NodeProperties

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Batch::NodeProperties object:

  $service_obj->Method(Att1 => { MainNode => $value, ..., NumNodes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Batch::NodeProperties object:

  $result = $service_obj->Method(...);
  $result->Att1->MainNode

=head1 DESCRIPTION

An object representing the node properties of a multi-node parallel
job.

=head1 ATTRIBUTES


=head2 B<REQUIRED> MainNode => Int

  Specifies the node index for the main node of a multi-node parallel
job. This node index value must be fewer than the number of nodes.


=head2 B<REQUIRED> NodeRangeProperties => ArrayRef[Batch_NodeRangeProperty]

  A list of node ranges and their properties associated with a multi-node
parallel job.


=head2 B<REQUIRED> NumNodes => Int

  The number of nodes associated with a multi-node parallel job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

