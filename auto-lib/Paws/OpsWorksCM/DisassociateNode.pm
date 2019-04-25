
package Paws::OpsWorksCM::DisassociateNode;
  use Moose;
  has EngineAttributes => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorksCM::EngineAttribute]');
  has NodeName => (is => 'ro', isa => 'Str', required => 1);
  has ServerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateNode');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorksCM::DisassociateNodeResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorksCM::DisassociateNode - Arguments for method DisassociateNode on L<Paws::OpsWorksCM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateNode on the
L<AWS OpsWorks for Chef Automate|Paws::OpsWorksCM> service. Use the attributes of this class
as arguments to method DisassociateNode.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateNode.

=head1 SYNOPSIS

    my $opsworks-cm = Paws->service('OpsWorksCM');
    my $DisassociateNodeResponse = $opsworks -cm->DisassociateNode(
      NodeName         => 'MyNodeName',
      ServerName       => 'MyServerName',
      EngineAttributes => [
        {
          Name  => 'MyEngineAttributeName',     # OPTIONAL
          Value => 'MyEngineAttributeValue',    # OPTIONAL
        },
        ...
      ],                                        # OPTIONAL
    );

    # Results:
    my $NodeAssociationStatusToken =
      $DisassociateNodeResponse->NodeAssociationStatusToken;

    # Returns a L<Paws::OpsWorksCM::DisassociateNodeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/opsworks-cm/latest/APIReference/API_DisassociateNode.html>

=head1 ATTRIBUTES


=head2 EngineAttributes => ArrayRef[L<Paws::OpsWorksCM::EngineAttribute>]

Engine attributes that are used for disassociating the node. No
attributes are required for Puppet.

B<Attributes required in a DisassociateNode request for Chef>

=over

=item *

C<CHEF_ORGANIZATION>: The Chef organization with which the node was
associated. By default only one organization named C<default> can
exist.

=back




=head2 B<REQUIRED> NodeName => Str

The name of the client node.



=head2 B<REQUIRED> ServerName => Str

The name of the server from which to disassociate the node.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateNode in L<Paws::OpsWorksCM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

