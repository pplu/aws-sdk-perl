
package Paws::ManagedBlockchain::GetNode;
  use Moose;
  has MemberId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'memberId');
  has NetworkId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'networkId', required => 1);
  has NodeId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'nodeId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetNode');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/networks/{networkId}/nodes/{nodeId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ManagedBlockchain::GetNodeOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::GetNode - Arguments for method GetNode on L<Paws::ManagedBlockchain>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetNode on the
L<Amazon Managed Blockchain|Paws::ManagedBlockchain> service. Use the attributes of this class
as arguments to method GetNode.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetNode.

=head1 SYNOPSIS

    my $managedblockchain = Paws->service('ManagedBlockchain');
    my $GetNodeOutput = $managedblockchain->GetNode(
      NetworkId => 'MyResourceIdString',
      NodeId    => 'MyResourceIdString',
      MemberId  => 'MyResourceIdString',    # OPTIONAL
    );

    # Results:
    my $Node = $GetNodeOutput->Node;

    # Returns a L<Paws::ManagedBlockchain::GetNodeOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/managedblockchain/GetNode>

=head1 ATTRIBUTES


=head2 MemberId => Str

The unique identifier of the member that owns the node.

Applies only to Hyperledger Fabric and is required for Hyperledger
Fabric.



=head2 B<REQUIRED> NetworkId => Str

The unique identifier of the network that the node is on.



=head2 B<REQUIRED> NodeId => Str

The unique identifier of the node.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetNode in L<Paws::ManagedBlockchain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

