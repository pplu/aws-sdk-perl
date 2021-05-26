
package Paws::ComputeOptimizer::GetRecommendationSummaries;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'accountIds' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRecommendationSummaries');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ComputeOptimizer::GetRecommendationSummariesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::GetRecommendationSummaries - Arguments for method GetRecommendationSummaries on L<Paws::ComputeOptimizer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRecommendationSummaries on the
L<AWS Compute Optimizer|Paws::ComputeOptimizer> service. Use the attributes of this class
as arguments to method GetRecommendationSummaries.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRecommendationSummaries.

=head1 SYNOPSIS

    my $compute-optimizer = Paws->service('ComputeOptimizer');
    my $GetRecommendationSummariesResponse =
      $compute -optimizer->GetRecommendationSummaries(
      AccountIds => [ 'MyAccountId', ... ],    # OPTIONAL
      MaxResults => 1,                         # OPTIONAL
      NextToken  => 'MyNextToken',             # OPTIONAL
      );

    # Results:
    my $NextToken = $GetRecommendationSummariesResponse->NextToken;
    my $RecommendationSummaries =
      $GetRecommendationSummariesResponse->RecommendationSummaries;

# Returns a L<Paws::ComputeOptimizer::GetRecommendationSummariesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/compute-optimizer/GetRecommendationSummaries>

=head1 ATTRIBUTES


=head2 AccountIds => ArrayRef[Str|Undef]

The AWS account IDs for which to return recommendation summaries.

Only one account ID can be specified per request.



=head2 MaxResults => Int

The maximum number of recommendation summaries to return with a single
call.

To retrieve the remaining results, make another call with the returned
C<NextToken> value.



=head2 NextToken => Str

The token to advance to the next page of recommendation summaries.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRecommendationSummaries in L<Paws::ComputeOptimizer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

