
package Paws::ManagedBlockchain::ListProposals;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::ManagedBlockchain::Types qw//;
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NetworkId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListProposals');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/networks/{networkId}/proposals');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ManagedBlockchain::ListProposalsOutput');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NetworkId' => {
                                'type' => 'Str'
                              },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             },
  'ParamInURI' => {
                    'NetworkId' => 'networkId'
                  },
  'ParamInQuery' => {
                      'NextToken' => 'nextToken',
                      'MaxResults' => 'maxResults'
                    },
  'IsRequired' => {
                    'NetworkId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::ListProposals - Arguments for method ListProposals on L<Paws::ManagedBlockchain>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListProposals on the
L<Amazon Managed Blockchain|Paws::ManagedBlockchain> service. Use the attributes of this class
as arguments to method ListProposals.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListProposals.

=head1 SYNOPSIS

    my $managedblockchain = Paws->service('ManagedBlockchain');
    my $ListProposalsOutput = $managedblockchain->ListProposals(
      NetworkId  => 'MyResourceIdString',
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListProposalsOutput->NextToken;
    my $Proposals = $ListProposalsOutput->Proposals;

    # Returns a L<Paws::ManagedBlockchain::ListProposalsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/managedblockchain/ListProposals>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of proposals to return.



=head2 B<REQUIRED> NetworkId => Str

The unique identifier of the network.



=head2 NextToken => Str

The pagination token that indicates the next set of results to
retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListProposals in L<Paws::ManagedBlockchain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

