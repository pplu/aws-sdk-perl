
package Paws::OpsWorksCM::AssociateNode;
  use Moose;
  has EngineAttributes => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorksCM::EngineAttribute]', required => 1);
  has NodeName => (is => 'ro', isa => 'Str', required => 1);
  has ServerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateNode');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorksCM::AssociateNodeResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorksCM::AssociateNode - Arguments for method AssociateNode on L<Paws::OpsWorksCM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateNode on the 
AWS OpsWorks for Chef Automate service. Use the attributes of this class
as arguments to method AssociateNode.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateNode.

As an example:

  $service_obj->AssociateNode(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> EngineAttributes => ArrayRef[L<Paws::OpsWorksCM::EngineAttribute>]

Engine attributes used for associating the node.

B<Attributes accepted in a AssociateNode request:>

=over

=item *

C<CHEF_ORGANIZATION>: The Chef organization with which the node is
associated. By default only one organization named C<default> can
exist.

=item *

C<CHEF_NODE_PUBLIC_KEY>: A PEM-formatted public key. This key is
required for the C<chef-client> agent to access the Chef API.

=back




=head2 B<REQUIRED> NodeName => Str

The name of the Chef client node.



=head2 B<REQUIRED> ServerName => Str

The name of the server with which to associate the node.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateNode in L<Paws::OpsWorksCM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

