
package Paws::Macie::ListMemberAccounts;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMemberAccounts');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Macie::ListMemberAccountsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie::ListMemberAccounts - Arguments for method ListMemberAccounts on L<Paws::Macie>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListMemberAccounts on the
L<Amazon Macie|Paws::Macie> service. Use the attributes of this class
as arguments to method ListMemberAccounts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListMemberAccounts.

=head1 SYNOPSIS

    my $macie = Paws->service('Macie');
    my $ListMemberAccountsResult = $macie->ListMemberAccounts(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $MemberAccounts = $ListMemberAccountsResult->MemberAccounts;
    my $NextToken      = $ListMemberAccountsResult->NextToken;

    # Returns a L<Paws::Macie::ListMemberAccountsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie/ListMemberAccounts>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Use this parameter to indicate the maximum number of items that you
want in the response. The default value is 250.



=head2 NextToken => Str

Use this parameter when paginating results. Set the value of this
parameter to null on your first call to the ListMemberAccounts action.
Subsequent calls to the action fill nextToken in the request with the
value of nextToken from the previous response to continue listing data.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListMemberAccounts in L<Paws::Macie>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

