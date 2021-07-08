
package Paws::ManagedBlockchain::CreateNetwork;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has Framework => (is => 'ro', isa => 'Str', required => 1);
  has FrameworkConfiguration => (is => 'ro', isa => 'Paws::ManagedBlockchain::NetworkFrameworkConfiguration');
  has FrameworkVersion => (is => 'ro', isa => 'Str', required => 1);
  has MemberConfiguration => (is => 'ro', isa => 'Paws::ManagedBlockchain::MemberConfiguration', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::ManagedBlockchain::InputTagMap');
  has VotingPolicy => (is => 'ro', isa => 'Paws::ManagedBlockchain::VotingPolicy', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateNetwork');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/networks');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ManagedBlockchain::CreateNetworkOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::CreateNetwork - Arguments for method CreateNetwork on L<Paws::ManagedBlockchain>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateNetwork on the
L<Amazon Managed Blockchain|Paws::ManagedBlockchain> service. Use the attributes of this class
as arguments to method CreateNetwork.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateNetwork.

=head1 SYNOPSIS

    my $managedblockchain = Paws->service('ManagedBlockchain');
    my $CreateNetworkOutput = $managedblockchain->CreateNetwork(
      ClientRequestToken  => 'MyClientRequestTokenString',
      Framework           => 'HYPERLEDGER_FABRIC',
      FrameworkVersion    => 'MyFrameworkVersionString',
      MemberConfiguration => {
        FrameworkConfiguration => {
          Fabric => {
            AdminPassword => 'MyPasswordString',    # min: 8, max: 32
            AdminUsername => 'MyUsernameString',    # min: 1, max: 16

          },    # OPTIONAL
        },
        Name        => 'MyNetworkMemberNameString',    # min: 1, max: 64
        Description => 'MyDescriptionString',          # max: 128; OPTIONAL
        KmsKeyArn   => 'MyArnString',    # min: 1, max: 1011; OPTIONAL
        LogPublishingConfiguration => {
          Fabric => {
            CaLogs => {
              Cloudwatch => {
                Enabled => 1,    # OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        Tags => {
          'MyTagKey' => 'MyTagValue',   # key: min: 1, max: 128, value: max: 256
        },    # max: 50; OPTIONAL
      },
      Name         => 'MyNameString',
      VotingPolicy => {
        ApprovalThresholdPolicy => {
          ProposalDurationInHours => 1,             # min: 1, max: 168; OPTIONAL
          ThresholdComparator     => 'GREATER_THAN'
          ,    # values: GREATER_THAN, GREATER_THAN_OR_EQUAL_TO; OPTIONAL
          ThresholdPercentage => 1,    # max: 100; OPTIONAL
        },    # OPTIONAL
      },
      Description            => 'MyDescriptionString',    # OPTIONAL
      FrameworkConfiguration => {
        Fabric => {
          Edition => 'STARTER',    # values: STARTER, STANDARD

        },    # OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $MemberId  = $CreateNetworkOutput->MemberId;
    my $NetworkId = $CreateNetworkOutput->NetworkId;

    # Returns a L<Paws::ManagedBlockchain::CreateNetworkOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/managedblockchain/CreateNetwork>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientRequestToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the operation. An idempotent operation completes no more
than one time. This identifier is required only if you make a service
request directly using an HTTP client. It is generated automatically if
you use an AWS SDK or the AWS CLI.



=head2 Description => Str

An optional description for the network.



=head2 B<REQUIRED> Framework => Str

The blockchain framework that the network uses.

Valid values are: C<"HYPERLEDGER_FABRIC">, C<"ETHEREUM">

=head2 FrameworkConfiguration => L<Paws::ManagedBlockchain::NetworkFrameworkConfiguration>

Configuration properties of the blockchain framework relevant to the
network configuration.



=head2 B<REQUIRED> FrameworkVersion => Str

The version of the blockchain framework that the network uses.



=head2 B<REQUIRED> MemberConfiguration => L<Paws::ManagedBlockchain::MemberConfiguration>

Configuration properties for the first member within the network.



=head2 B<REQUIRED> Name => Str

The name of the network.



=head2 Tags => L<Paws::ManagedBlockchain::InputTagMap>

Tags to assign to the network. Each tag consists of a key and optional
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



=head2 B<REQUIRED> VotingPolicy => L<Paws::ManagedBlockchain::VotingPolicy>

The voting rules used by the network to determine if a proposal is
approved.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateNetwork in L<Paws::ManagedBlockchain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

