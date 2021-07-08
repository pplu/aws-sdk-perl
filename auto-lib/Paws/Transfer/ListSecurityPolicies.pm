
package Paws::Transfer::ListSecurityPolicies;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSecurityPolicies');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transfer::ListSecurityPoliciesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::ListSecurityPolicies - Arguments for method ListSecurityPolicies on L<Paws::Transfer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSecurityPolicies on the
L<AWS Transfer Family|Paws::Transfer> service. Use the attributes of this class
as arguments to method ListSecurityPolicies.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSecurityPolicies.

=head1 SYNOPSIS

    my $transfer = Paws->service('Transfer');
    my $ListSecurityPoliciesResponse = $transfer->ListSecurityPolicies(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListSecurityPoliciesResponse->NextToken;
    my $SecurityPolicyNames =
      $ListSecurityPoliciesResponse->SecurityPolicyNames;

    # Returns a L<Paws::Transfer::ListSecurityPoliciesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transfer/ListSecurityPolicies>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Specifies the number of security policies to return as a response to
the C<ListSecurityPolicies> query.



=head2 NextToken => Str

When additional results are obtained from the C<ListSecurityPolicies>
command, a C<NextToken> parameter is returned in the output. You can
then pass the C<NextToken> parameter in a subsequent command to
continue listing additional security policies.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSecurityPolicies in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

