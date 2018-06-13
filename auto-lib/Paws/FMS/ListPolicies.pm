
package Paws::FMS::ListPolicies;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPolicies');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FMS::ListPoliciesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FMS::ListPolicies - Arguments for method ListPolicies on L<Paws::FMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPolicies on the
L<Firewall Management Service|Paws::FMS> service. Use the attributes of this class
as arguments to method ListPolicies.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPolicies.

=head1 SYNOPSIS

    my $fms = Paws->service('FMS');
    my $ListPoliciesResponse = $fms->ListPolicies(
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $NextToken  = $ListPoliciesResponse->NextToken;
    my $PolicyList = $ListPoliciesResponse->PolicyList;

    # Returns a L<Paws::FMS::ListPoliciesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fms/ListPolicies>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Specifies the number of C<PolicySummary> objects that you want AWS
Firewall Manager to return for this request. If you have more
C<PolicySummary> objects than the number that you specify for
C<MaxResults>, the response includes a C<NextToken> value that you can
use to get another batch of C<PolicySummary> objects.



=head2 NextToken => Str

If you specify a value for C<MaxResults> and you have more
C<PolicySummary> objects than the number that you specify for
C<MaxResults>, AWS Firewall Manager returns a C<NextToken> value in the
response that allows you to list another group of C<PolicySummary>
objects. For the second and subsequent C<ListPolicies> requests,
specify the value of C<NextToken> from the previous response to get
information about another batch of C<PolicySummary> objects.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPolicies in L<Paws::FMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

