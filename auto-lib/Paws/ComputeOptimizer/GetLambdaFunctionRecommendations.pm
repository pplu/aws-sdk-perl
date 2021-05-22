
package Paws::ComputeOptimizer::GetLambdaFunctionRecommendations;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'accountIds' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::LambdaFunctionRecommendationFilter]', traits => ['NameInRequest'], request_name => 'filters' );
  has FunctionArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'functionArns' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetLambdaFunctionRecommendations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ComputeOptimizer::GetLambdaFunctionRecommendationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::GetLambdaFunctionRecommendations - Arguments for method GetLambdaFunctionRecommendations on L<Paws::ComputeOptimizer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetLambdaFunctionRecommendations on the
L<AWS Compute Optimizer|Paws::ComputeOptimizer> service. Use the attributes of this class
as arguments to method GetLambdaFunctionRecommendations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetLambdaFunctionRecommendations.

=head1 SYNOPSIS

    my $compute-optimizer = Paws->service('ComputeOptimizer');
    my $GetLambdaFunctionRecommendationsResponse =
      $compute -optimizer->GetLambdaFunctionRecommendations(
      AccountIds => [ 'MyAccountId', ... ],    # OPTIONAL
      Filters    => [
        {
          Name => 'Finding',    # values: Finding, FindingReasonCode; OPTIONAL
          Values => [ 'MyFilterValue', ... ],    # OPTIONAL
        },
        ...
      ],                                         # OPTIONAL
      FunctionArns => [ 'MyFunctionArn', ... ],  # OPTIONAL
      MaxResults   => 1,                         # OPTIONAL
      NextToken    => 'MyNextToken',             # OPTIONAL
      );

    # Results:
    my $LambdaFunctionRecommendations =
      $GetLambdaFunctionRecommendationsResponse->LambdaFunctionRecommendations;
    my $NextToken = $GetLambdaFunctionRecommendationsResponse->NextToken;

# Returns a L<Paws::ComputeOptimizer::GetLambdaFunctionRecommendationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/compute-optimizer/GetLambdaFunctionRecommendations>

=head1 ATTRIBUTES


=head2 AccountIds => ArrayRef[Str|Undef]

The ID of the AWS account for which to return function recommendations.

If your account is the management account of an organization, use this
parameter to specify the member account for which you want to return
function recommendations.

Only one account ID can be specified per request.



=head2 Filters => ArrayRef[L<Paws::ComputeOptimizer::LambdaFunctionRecommendationFilter>]

An array of objects that describe a filter that returns a more specific
list of function recommendations.



=head2 FunctionArns => ArrayRef[Str|Undef]

The Amazon Resource Name (ARN) of the functions for which to return
recommendations.

You can specify a qualified or unqualified ARN. If you specify an
unqualified ARN without a function version suffix, Compute Optimizer
will return recommendations for the latest (C<$LATEST>) version of the
function. If you specify a qualified ARN with a version suffix, Compute
Optimizer will return recommendations for the specified function
version. For more information about using function versions, see Using
versions
(https://docs.aws.amazon.com/lambda/latest/dg/configuration-versions.html#versioning-versions-using)
in the I<AWS Lambda Developer Guide>.



=head2 MaxResults => Int

The maximum number of function recommendations to return with a single
request.

To retrieve the remaining results, make another request with the
returned C<NextToken> value.



=head2 NextToken => Str

The token to advance to the next page of function recommendations.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetLambdaFunctionRecommendations in L<Paws::ComputeOptimizer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

