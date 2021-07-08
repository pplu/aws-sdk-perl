
package Paws::ManagedBlockchain::CreateNode;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', required => 1);
  has MemberId => (is => 'ro', isa => 'Str');
  has NetworkId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'networkId', required => 1);
  has NodeConfiguration => (is => 'ro', isa => 'Paws::ManagedBlockchain::NodeConfiguration', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::ManagedBlockchain::InputTagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateNode');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/networks/{networkId}/nodes');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ManagedBlockchain::CreateNodeOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::CreateNode - Arguments for method CreateNode on L<Paws::ManagedBlockchain>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateNode on the
L<Amazon Managed Blockchain|Paws::ManagedBlockchain> service. Use the attributes of this class
as arguments to method CreateNode.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateNode.

=head1 SYNOPSIS

    my $managedblockchain = Paws->service('ManagedBlockchain');
    my $CreateNodeOutput = $managedblockchain->CreateNode(
      ClientRequestToken => 'MyClientRequestTokenString',
      NetworkId          => 'MyResourceIdString',
      NodeConfiguration  => {
        InstanceType               => 'MyInstanceTypeString',
        AvailabilityZone           => 'MyAvailabilityZoneString',    # OPTIONAL
        LogPublishingConfiguration => {
          Fabric => {
            ChaincodeLogs => {
              Cloudwatch => {
                Enabled => 1,    # OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            PeerLogs => {
              Cloudwatch => {
                Enabled => 1,    # OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        StateDB => 'LevelDB',    # values: LevelDB, CouchDB; OPTIONAL
      },
      MemberId => 'MyResourceIdString',    # OPTIONAL
      Tags     => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $NodeId = $CreateNodeOutput->NodeId;

    # Returns a L<Paws::ManagedBlockchain::CreateNodeOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/managedblockchain/CreateNode>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientRequestToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the operation. An idempotent operation completes no more
than one time. This identifier is required only if you make a service
request directly using an HTTP client. It is generated automatically if
you use an AWS SDK or the AWS CLI.



=head2 MemberId => Str

The unique identifier of the member that owns this node.

Applies only to Hyperledger Fabric.



=head2 B<REQUIRED> NetworkId => Str

The unique identifier of the network for the node.

Ethereum public networks have the following C<NetworkId>s:

=over

=item *

C<n-ethereum-mainnet>

=item *

C<n-ethereum-rinkeby>

=item *

C<n-ethereum-ropsten>

=back




=head2 B<REQUIRED> NodeConfiguration => L<Paws::ManagedBlockchain::NodeConfiguration>

The properties of a node configuration.



=head2 Tags => L<Paws::ManagedBlockchain::InputTagMap>

Tags to assign to the node. Each tag consists of a key and optional
value.

When specifying tags during creation, you can specify multiple
key-value pairs in a single request, with an overall maximum of 50 tags
added to each resource.

For more information about tags, see Tagging Resources
(https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html)
in the I<Amazon Managed Blockchain Ethereum Developer Guide>, or
Tagging Resources
(https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html)
in the I<Amazon Managed Blockchain Hyperledger Fabric Developer Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateNode in L<Paws::ManagedBlockchain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

