
package Paws::ComputeOptimizer::DescribeRecommendationExportJobs;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::JobFilter]', traits => ['NameInRequest'], request_name => 'filters' );
  has JobIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'jobIds' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRecommendationExportJobs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ComputeOptimizer::DescribeRecommendationExportJobsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::DescribeRecommendationExportJobs - Arguments for method DescribeRecommendationExportJobs on L<Paws::ComputeOptimizer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeRecommendationExportJobs on the
L<AWS Compute Optimizer|Paws::ComputeOptimizer> service. Use the attributes of this class
as arguments to method DescribeRecommendationExportJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeRecommendationExportJobs.

=head1 SYNOPSIS

    my $compute-optimizer = Paws->service('ComputeOptimizer');
    my $DescribeRecommendationExportJobsResponse =
      $compute -optimizer->DescribeRecommendationExportJobs(
      Filters => [
        {
          Name => 'ResourceType',    # values: ResourceType, JobStatus; OPTIONAL
          Values => [ 'MyFilterValue', ... ],    # OPTIONAL
        },
        ...
      ],                                         # OPTIONAL
      JobIds     => [ 'MyJobId', ... ],          # OPTIONAL
      MaxResults => 1,                           # OPTIONAL
      NextToken  => 'MyNextToken',               # OPTIONAL
      );

    # Results:
    my $NextToken = $DescribeRecommendationExportJobsResponse->NextToken;
    my $RecommendationExportJobs =
      $DescribeRecommendationExportJobsResponse->RecommendationExportJobs;

# Returns a L<Paws::ComputeOptimizer::DescribeRecommendationExportJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/compute-optimizer/DescribeRecommendationExportJobs>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::ComputeOptimizer::JobFilter>]

An array of objects that describe a filter to return a more specific
list of export jobs.



=head2 JobIds => ArrayRef[Str|Undef]

The identification numbers of the export jobs to return.

An export job ID is returned when you create an export using the
C<ExportAutoScalingGroupRecommendations> or
C<ExportEC2InstanceRecommendations> actions.

All export jobs created in the last seven days are returned if this
parameter is omitted.



=head2 MaxResults => Int

The maximum number of export jobs to return with a single request.

To retrieve the remaining results, make another request with the
returned C<NextToken> value.



=head2 NextToken => Str

The token to advance to the next page of export jobs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeRecommendationExportJobs in L<Paws::ComputeOptimizer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

