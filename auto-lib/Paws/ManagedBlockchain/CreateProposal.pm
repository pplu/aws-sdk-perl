
package Paws::ManagedBlockchain::CreateProposal;
  use Moose;
  has Actions => (is => 'ro', isa => 'Paws::ManagedBlockchain::ProposalActions', required => 1);
  has ClientRequestToken => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has MemberId => (is => 'ro', isa => 'Str', required => 1);
  has NetworkId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'networkId', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::ManagedBlockchain::InputTagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateProposal');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/networks/{networkId}/proposals');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ManagedBlockchain::CreateProposalOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::CreateProposal - Arguments for method CreateProposal on L<Paws::ManagedBlockchain>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateProposal on the
L<Amazon Managed Blockchain|Paws::ManagedBlockchain> service. Use the attributes of this class
as arguments to method CreateProposal.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateProposal.

=head1 SYNOPSIS

    my $managedblockchain = Paws->service('ManagedBlockchain');
    my $CreateProposalOutput = $managedblockchain->CreateProposal(
      Actions => {
        Invitations => [
          {
            Principal => 'MyPrincipalString',

          },
          ...
        ],    # OPTIONAL
        Removals => [
          {
            MemberId => 'MyResourceIdString',    # min: 1, max: 32

          },
          ...
        ],                                       # OPTIONAL
      },
      ClientRequestToken => 'MyClientRequestTokenString',
      MemberId           => 'MyResourceIdString',
      NetworkId          => 'MyResourceIdString',
      Description        => 'MyDescriptionString',          # OPTIONAL
      Tags               => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $ProposalId = $CreateProposalOutput->ProposalId;

    # Returns a L<Paws::ManagedBlockchain::CreateProposalOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/managedblockchain/CreateProposal>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Actions => L<Paws::ManagedBlockchain::ProposalActions>

The type of actions proposed, such as inviting a member or removing a
member. The types of C<Actions> in a proposal are mutually exclusive.
For example, a proposal with C<Invitations> actions cannot also contain
C<Removals> actions.



=head2 B<REQUIRED> ClientRequestToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the operation. An idempotent operation completes no more
than one time. This identifier is required only if you make a service
request directly using an HTTP client. It is generated automatically if
you use an AWS SDK or the AWS CLI.



=head2 Description => Str

A description for the proposal that is visible to voting members, for
example, "Proposal to add Example Corp. as member."



=head2 B<REQUIRED> MemberId => Str

The unique identifier of the member that is creating the proposal. This
identifier is especially useful for identifying the member making the
proposal when multiple members exist in a single AWS account.



=head2 B<REQUIRED> NetworkId => Str

The unique identifier of the network for which the proposal is made.



=head2 Tags => L<Paws::ManagedBlockchain::InputTagMap>

Tags to assign to the proposal. Each tag consists of a key and optional
value.

When specifying tags during creation, you can specify multiple
key-value pairs in a single request, with an overall maximum of 50 tags
added to each resource. If the proposal is for a network invitation,
the invitation inherits the tags added to the proposal.

For more information about tags, see Tagging Resources
(https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html)
in the I<Amazon Managed Blockchain Ethereum Developer Guide>, or
Tagging Resources
(https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html)
in the I<Amazon Managed Blockchain Hyperledger Fabric Developer Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateProposal in L<Paws::ManagedBlockchain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

