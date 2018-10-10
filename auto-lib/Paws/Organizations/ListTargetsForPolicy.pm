
package Paws::Organizations::ListTargetsForPolicy;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has PolicyId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTargetsForPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Organizations::ListTargetsForPolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::ListTargetsForPolicy - Arguments for method ListTargetsForPolicy on L<Paws::Organizations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTargetsForPolicy on the
L<AWS Organizations|Paws::Organizations> service. Use the attributes of this class
as arguments to method ListTargetsForPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTargetsForPolicy.

=head1 SYNOPSIS

    my $organizations = Paws->service('Organizations');
    my $ListTargetsForPolicyResponse = $organizations->ListTargetsForPolicy(
      PolicyId   => 'MyPolicyId',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListTargetsForPolicyResponse->NextToken;
    my $Targets   = $ListTargetsForPolicyResponse->Targets;

    # Returns a L<Paws::Organizations::ListTargetsForPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/organizations/ListTargetsForPolicy>

=head1 ATTRIBUTES


=head2 MaxResults => Int

(Optional) Use this to limit the number of results you want included
per page in the response. If you do not include this parameter, it
defaults to a value that is specific to the operation. If additional
items exist beyond the maximum you specify, the C<NextToken> response
element is present and has a value (is not null). Include that value as
the C<NextToken> request parameter in the next call to the operation to
get the next part of the results. Note that Organizations might return
fewer results than the maximum even when there are more results
available. You should check C<NextToken> after every operation to
ensure that you receive all of the results.



=head2 NextToken => Str

Use this parameter if you receive a C<NextToken> response in a previous
request that indicates that there is more output available. Set it to
the value of the previous call's C<NextToken> response to indicate
where the output should continue from.



=head2 B<REQUIRED> PolicyId => Str

The unique identifier (ID) of the policy for which you want to know its
attachments.

The regex pattern (http://wikipedia.org/wiki/regex) for a policy ID
string requires "p-" followed by from 8 to 128 lower-case letters or
digits.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTargetsForPolicy in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

