
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
L<AWS OpsWorks for Chef Automate|Paws::OpsWorksCM> service. Use the attributes of this class
as arguments to method AssociateNode.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateNode.

=head1 SYNOPSIS

    my $opsworks-cm = Paws->service('OpsWorksCM');
    my $AssociateNodeResponse = $opsworks -cm->AssociateNode(
      EngineAttributes => [
        {
          Name  => 'MyEngineAttributeName',     # OPTIONAL
          Value => 'MyEngineAttributeValue',    # OPTIONAL
        },
        ...
      ],
      NodeName   => 'MyNodeName',
      ServerName => 'MyServerName',

    );

    # Results:
    my $NodeAssociationStatusToken =
      $AssociateNodeResponse->NodeAssociationStatusToken;

    # Returns a L<Paws::OpsWorksCM::AssociateNodeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/opsworks-cm/latest/APIReference/API_AssociateNode.html>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EngineAttributes => ArrayRef[L<Paws::OpsWorksCM::EngineAttribute>]

Engine attributes used for associating the node.

B<Attributes accepted in a AssociateNode request for Chef>

=over

=item *

C<CHEF_ORGANIZATION>: The Chef organization with which the node is
associated. By default only one organization named C<default> can
exist.

=item *

C<CHEF_NODE_PUBLIC_KEY>: A PEM-formatted public key. This key is
required for the C<chef-client> agent to access the Chef API.

=back

B<Attributes accepted in a AssociateNode request for Puppet>

=over

=item *

C<PUPPET_NODE_CSR>: A PEM-formatted certificate-signing request (CSR)
that is created by the node.

=back




=head2 B<REQUIRED> NodeName => Str

The name of the node.



=head2 B<REQUIRED> ServerName => Str

The name of the server with which to associate the node.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateNode in L<Paws::OpsWorksCM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

