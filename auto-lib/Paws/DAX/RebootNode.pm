
package Paws::DAX::RebootNode;
  use Moose;
  has ClusterName => (is => 'ro', isa => 'Str', required => 1);
  has NodeId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RebootNode');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DAX::RebootNodeResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DAX::RebootNode - Arguments for method RebootNode on L<Paws::DAX>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RebootNode on the 
Amazon DynamoDB Accelerator (DAX) service. Use the attributes of this class
as arguments to method RebootNode.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RebootNode.

As an example:

  $service_obj->RebootNode(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterName => Str

The name of the DAX cluster containing the node to be rebooted.



=head2 B<REQUIRED> NodeId => Str

The system-assigned ID of the node to be rebooted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RebootNode in L<Paws::DAX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

