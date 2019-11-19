
package Paws::ManagedBlockchain::ListInvitations;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::ManagedBlockchain::Types qw//;
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListInvitations');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/invitations');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ManagedBlockchain::ListInvitationsOutput');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             },
  'ParamInQuery' => {
                      'MaxResults' => 'maxResults',
                      'NextToken' => 'nextToken'
                    }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::ListInvitations - Arguments for method ListInvitations on L<Paws::ManagedBlockchain>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListInvitations on the
L<Amazon Managed Blockchain|Paws::ManagedBlockchain> service. Use the attributes of this class
as arguments to method ListInvitations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListInvitations.

=head1 SYNOPSIS

    my $managedblockchain = Paws->service('ManagedBlockchain');
    my $ListInvitationsOutput = $managedblockchain->ListInvitations(
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $Invitations = $ListInvitationsOutput->Invitations;
    my $NextToken   = $ListInvitationsOutput->NextToken;

    # Returns a L<Paws::ManagedBlockchain::ListInvitationsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/managedblockchain/ListInvitations>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of invitations to return.



=head2 NextToken => Str

The pagination token that indicates the next set of results to
retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListInvitations in L<Paws::ManagedBlockchain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

