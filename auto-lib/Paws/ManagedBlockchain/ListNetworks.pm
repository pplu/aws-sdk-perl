
package Paws::ManagedBlockchain::ListNetworks;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::ManagedBlockchain::Types qw//;
  has Framework => (is => 'ro', isa => Str, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has Name => (is => 'ro', isa => Str, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has Status => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListNetworks');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/networks');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ManagedBlockchain::ListNetworksOutput');

    sub params_map {
    our $Params_map ||= {
  'ParamInQuery' => {
                      'Framework' => 'framework',
                      'Status' => 'status',
                      'NextToken' => 'nextToken',
                      'MaxResults' => 'maxResults',
                      'Name' => 'name'
                    },
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'Framework' => {
                                'type' => 'Str'
                              },
               'Status' => {
                             'type' => 'Str'
                           }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::ListNetworks - Arguments for method ListNetworks on L<Paws::ManagedBlockchain>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListNetworks on the
L<Amazon Managed Blockchain|Paws::ManagedBlockchain> service. Use the attributes of this class
as arguments to method ListNetworks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListNetworks.

=head1 SYNOPSIS

    my $managedblockchain = Paws->service('ManagedBlockchain');
    my $ListNetworksOutput = $managedblockchain->ListNetworks(
      Framework  => 'HYPERLEDGER_FABRIC',    # OPTIONAL
      MaxResults => 1,                       # OPTIONAL
      Name       => 'MyString',              # OPTIONAL
      NextToken  => 'MyPaginationToken',     # OPTIONAL
      Status     => 'CREATING',              # OPTIONAL
    );

    # Results:
    my $Networks  = $ListNetworksOutput->Networks;
    my $NextToken = $ListNetworksOutput->NextToken;

    # Returns a L<Paws::ManagedBlockchain::ListNetworksOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/managedblockchain/ListNetworks>

=head1 ATTRIBUTES


=head2 Framework => Str

An optional framework specifier. If provided, only networks of this
framework type are listed.

Valid values are: C<"HYPERLEDGER_FABRIC">

=head2 MaxResults => Int

The maximum number of networks to list.



=head2 Name => Str

The name of the network.



=head2 NextToken => Str

The pagination token that indicates the next set of results to
retrieve.



=head2 Status => Str

An optional status specifier. If provided, only networks currently in
this status are listed.

Valid values are: C<"CREATING">, C<"AVAILABLE">, C<"CREATE_FAILED">, C<"DELETING">, C<"DELETED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListNetworks in L<Paws::ManagedBlockchain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

