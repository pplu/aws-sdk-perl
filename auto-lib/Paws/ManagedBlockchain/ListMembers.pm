
package Paws::ManagedBlockchain::ListMembers;
  use Moo;
  use Types::Standard qw/Str Bool Int/;
  use Paws::ManagedBlockchain::Types qw//;
  has IsOwned => (is => 'ro', isa => Bool, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has Name => (is => 'ro', isa => Str, predicate => 1);
  has NetworkId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has Status => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListMembers');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/networks/{networkId}/members');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ManagedBlockchain::ListMembersOutput');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'NetworkId' => 1
                  },
  'ParamInQuery' => {
                      'Status' => 'status',
                      'MaxResults' => 'maxResults',
                      'NextToken' => 'nextToken',
                      'Name' => 'name',
                      'IsOwned' => 'isOwned'
                    },
  'types' => {
               'IsOwned' => {
                              'type' => 'Bool'
                            },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Name' => {
                           'type' => 'Str'
                         },
               'Status' => {
                             'type' => 'Str'
                           },
               'NetworkId' => {
                                'type' => 'Str'
                              }
             },
  'ParamInURI' => {
                    'NetworkId' => 'networkId'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::ListMembers - Arguments for method ListMembers on L<Paws::ManagedBlockchain>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListMembers on the
L<Amazon Managed Blockchain|Paws::ManagedBlockchain> service. Use the attributes of this class
as arguments to method ListMembers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListMembers.

=head1 SYNOPSIS

    my $managedblockchain = Paws->service('ManagedBlockchain');
    my $ListMembersOutput = $managedblockchain->ListMembers(
      NetworkId  => 'MyResourceIdString',
      IsOwned    => 1,                      # OPTIONAL
      MaxResults => 1,                      # OPTIONAL
      Name       => 'MyString',             # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
      Status     => 'CREATING',             # OPTIONAL
    );

    # Results:
    my $Members   = $ListMembersOutput->Members;
    my $NextToken = $ListMembersOutput->NextToken;

    # Returns a L<Paws::ManagedBlockchain::ListMembersOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/managedblockchain/ListMembers>

=head1 ATTRIBUTES


=head2 IsOwned => Bool

An optional Boolean value. If provided, the request is limited either
to members that the current AWS account owns (C<true>) or that other
AWS accounts own (C<false>). If omitted, all members are listed.



=head2 MaxResults => Int

The maximum number of members to return in the request.



=head2 Name => Str

The optional name of the member to list.



=head2 B<REQUIRED> NetworkId => Str

The unique identifier of the network for which to list members.



=head2 NextToken => Str

The pagination token that indicates the next set of results to
retrieve.



=head2 Status => Str

An optional status specifier. If provided, only members currently in
this status are listed.

Valid values are: C<"CREATING">, C<"AVAILABLE">, C<"CREATE_FAILED">, C<"DELETING">, C<"DELETED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListMembers in L<Paws::ManagedBlockchain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

