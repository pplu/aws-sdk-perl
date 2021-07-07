
package Paws::ComputeOptimizer::GetEC2InstanceRecommendations;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'accountIds' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::Filter]', traits => ['NameInRequest'], request_name => 'filters' );
  has InstanceArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'instanceArns' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetEC2InstanceRecommendations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ComputeOptimizer::GetEC2InstanceRecommendationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::GetEC2InstanceRecommendations - Arguments for method GetEC2InstanceRecommendations on L<Paws::ComputeOptimizer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetEC2InstanceRecommendations on the
L<AWS Compute Optimizer|Paws::ComputeOptimizer> service. Use the attributes of this class
as arguments to method GetEC2InstanceRecommendations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetEC2InstanceRecommendations.

=head1 SYNOPSIS

    my $compute-optimizer = Paws->service('ComputeOptimizer');
    my $GetEC2InstanceRecommendationsResponse =
      $compute -optimizer->GetEC2InstanceRecommendations(
      AccountIds => [ 'MyAccountId', ... ],    # OPTIONAL
      Filters    => [
        {
          Name =>
            'Finding',    # values: Finding, RecommendationSourceType; OPTIONAL
          Values => [ 'MyFilterValue', ... ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      InstanceArns => [ 'MyInstanceArn', ... ],    # OPTIONAL
      MaxResults   => 1,                           # OPTIONAL
      NextToken    => 'MyNextToken',               # OPTIONAL
      );

    # Results:
    my $Errors = $GetEC2InstanceRecommendationsResponse->Errors;
    my $InstanceRecommendations =
      $GetEC2InstanceRecommendationsResponse->InstanceRecommendations;
    my $NextToken = $GetEC2InstanceRecommendationsResponse->NextToken;

# Returns a L<Paws::ComputeOptimizer::GetEC2InstanceRecommendationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/compute-optimizer/GetEC2InstanceRecommendations>

=head1 ATTRIBUTES


=head2 AccountIds => ArrayRef[Str|Undef]

The ID of the AWS account for which to return instance recommendations.

If your account is the management account of an organization, use this
parameter to specify the member account for which you want to return
instance recommendations.

Only one account ID can be specified per request.



=head2 Filters => ArrayRef[L<Paws::ComputeOptimizer::Filter>]

An array of objects that describe a filter that returns a more specific
list of instance recommendations.



=head2 InstanceArns => ArrayRef[Str|Undef]

The Amazon Resource Name (ARN) of the instances for which to return
recommendations.



=head2 MaxResults => Int

The maximum number of instance recommendations to return with a single
request.

To retrieve the remaining results, make another request with the
returned C<NextToken> value.



=head2 NextToken => Str

The token to advance to the next page of instance recommendations.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetEC2InstanceRecommendations in L<Paws::ComputeOptimizer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

