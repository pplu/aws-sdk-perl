
package Paws::ManagedBlockchain::VoteOnProposal;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ManagedBlockchain::Types qw//;
  has NetworkId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ProposalId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Vote => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has VoterMemberId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'VoteOnProposal');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/networks/{networkId}/proposals/{proposalId}/votes');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ManagedBlockchain::VoteOnProposalOutput');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NetworkId' => {
                                'type' => 'Str'
                              },
               'Vote' => {
                           'type' => 'Str'
                         },
               'VoterMemberId' => {
                                    'type' => 'Str'
                                  },
               'ProposalId' => {
                                 'type' => 'Str'
                               }
             },
  'ParamInURI' => {
                    'NetworkId' => 'networkId',
                    'ProposalId' => 'proposalId'
                  },
  'IsRequired' => {
                    'NetworkId' => 1,
                    'Vote' => 1,
                    'VoterMemberId' => 1,
                    'ProposalId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::VoteOnProposal - Arguments for method VoteOnProposal on L<Paws::ManagedBlockchain>

=head1 DESCRIPTION

This class represents the parameters used for calling the method VoteOnProposal on the
L<Amazon Managed Blockchain|Paws::ManagedBlockchain> service. Use the attributes of this class
as arguments to method VoteOnProposal.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to VoteOnProposal.

=head1 SYNOPSIS

    my $managedblockchain = Paws->service('ManagedBlockchain');
    my $VoteOnProposalOutput = $managedblockchain->VoteOnProposal(
      NetworkId     => 'MyResourceIdString',
      ProposalId    => 'MyResourceIdString',
      Vote          => 'YES',
      VoterMemberId => 'MyResourceIdString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/managedblockchain/VoteOnProposal>

=head1 ATTRIBUTES


=head2 B<REQUIRED> NetworkId => Str

The unique identifier of the network.



=head2 B<REQUIRED> ProposalId => Str

The unique identifier of the proposal.



=head2 B<REQUIRED> Vote => Str

The value of the vote.

Valid values are: C<"YES">, C<"NO">

=head2 B<REQUIRED> VoterMemberId => Str

The unique identifier of the member casting the vote.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method VoteOnProposal in L<Paws::ManagedBlockchain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

