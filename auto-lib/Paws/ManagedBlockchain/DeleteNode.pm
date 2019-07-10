
package Paws::ManagedBlockchain::DeleteNode;
  use Moose;
  has MemberId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'memberId', required => 1);
  has NetworkId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'networkId', required => 1);
  has NodeId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'nodeId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteNode');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/networks/{networkId}/members/{memberId}/nodes/{nodeId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ManagedBlockchain::DeleteNodeOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::DeleteNode - Arguments for method DeleteNode on L<Paws::ManagedBlockchain>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteNode on the
L<Amazon Managed Blockchain|Paws::ManagedBlockchain> service. Use the attributes of this class
as arguments to method DeleteNode.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteNode.

=head1 SYNOPSIS

    my $managedblockchain = Paws->service('ManagedBlockchain');
    my $DeleteNodeOutput = $managedblockchain->DeleteNode(
      MemberId  => 'MyResourceIdString',
      NetworkId => 'MyResourceIdString',
      NodeId    => 'MyResourceIdString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/managedblockchain/DeleteNode>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MemberId => Str

The unique identifier of the member that owns this node.



=head2 B<REQUIRED> NetworkId => Str

The unique identifier of the network that the node belongs to.



=head2 B<REQUIRED> NodeId => Str

The unique identifier of the node.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteNode in L<Paws::ManagedBlockchain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

