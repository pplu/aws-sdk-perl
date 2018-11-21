package Paws::Batch::NodePropertiesSummary;
  use Moose;
  has IsMainNode => (is => 'ro', isa => 'Bool', request_name => 'isMainNode', traits => ['NameInRequest']);
  has NodeIndex => (is => 'ro', isa => 'Int', request_name => 'nodeIndex', traits => ['NameInRequest']);
  has NumNodes => (is => 'ro', isa => 'Int', request_name => 'numNodes', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::NodePropertiesSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Batch::NodePropertiesSummary object:

  $service_obj->Method(Att1 => { IsMainNode => $value, ..., NumNodes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Batch::NodePropertiesSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->IsMainNode

=head1 DESCRIPTION

An object representing the properties of a node that is associated with
a multi-node parallel job.

=head1 ATTRIBUTES


=head2 IsMainNode => Bool

  Specifies whether the current node is the main node for a multi-node
parallel job.


=head2 NodeIndex => Int

  The node index for the node. Node index numbering begins at zero. This
index is also available on the node with the
C<AWS_BATCH_JOB_NODE_INDEX> environment variable.


=head2 NumNodes => Int

  The number of nodes associated with a multi-node parallel job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

