
package Paws::Organizations::ListAccounts;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAccounts');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Organizations::ListAccountsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::ListAccounts - Arguments for method ListAccounts on L<Paws::Organizations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAccounts on the
L<AWS Organizations|Paws::Organizations> service. Use the attributes of this class
as arguments to method ListAccounts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAccounts.

=head1 SYNOPSIS

    my $organizations = Paws->service('Organizations');
   # To retrieve a list of all of the accounts in an organization
   # The following example shows you how to request a list of the accounts in an
   # organization:
    my $ListAccountsResponse = $organizations->ListAccounts();

    # Results:
    my $Accounts = $ListAccountsResponse->Accounts;

    # Returns a L<Paws::Organizations::ListAccountsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/organizations/ListAccounts>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The total number of results that you want included on each page of the
response. If you do not include this parameter, it defaults to a value
that is specific to the operation. If additional items exist beyond the
maximum you specify, the C<NextToken> response element is present and
has a value (is not null). Include that value as the C<NextToken>
request parameter in the next call to the operation to get the next
part of the results. Note that Organizations might return fewer results
than the maximum even when there are more results available. You should
check C<NextToken> after every operation to ensure that you receive all
of the results.



=head2 NextToken => Str

The parameter for receiving additional results if you receive a
C<NextToken> response in a previous request. A C<NextToken> response
indicates that more output is available. Set this parameter to the
value of the previous call's C<NextToken> response to indicate where
the output should continue from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAccounts in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

