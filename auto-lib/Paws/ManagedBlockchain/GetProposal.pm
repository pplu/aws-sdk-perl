
package Paws::ManagedBlockchain::GetProposal;
  use Moose;
  has NetworkId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'networkId', required => 1);
  has ProposalId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'proposalId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetProposal');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/networks/{networkId}/proposals/{proposalId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ManagedBlockchain::GetProposalOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::GetProposal - Arguments for method GetProposal on L<Paws::ManagedBlockchain>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetProposal on the
L<Amazon Managed Blockchain|Paws::ManagedBlockchain> service. Use the attributes of this class
as arguments to method GetProposal.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetProposal.

=head1 SYNOPSIS

    my $managedblockchain = Paws->service('ManagedBlockchain');
    my $GetProposalOutput = $managedblockchain->GetProposal(
      NetworkId  => 'MyResourceIdString',
      ProposalId => 'MyResourceIdString',

    );

    # Results:
    my $Proposal = $GetProposalOutput->Proposal;

    # Returns a L<Paws::ManagedBlockchain::GetProposalOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/managedblockchain/GetProposal>

=head1 ATTRIBUTES


=head2 B<REQUIRED> NetworkId => Str

The unique identifier of the network for which the proposal is made.



=head2 B<REQUIRED> ProposalId => Str

The unique identifier of the proposal.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetProposal in L<Paws::ManagedBlockchain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

