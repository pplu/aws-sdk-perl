
package Paws::ComputeOptimizer::DescribeRecommendationExportJobsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has RecommendationExportJobs => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::RecommendationExportJob]', traits => ['NameInRequest'], request_name => 'recommendationExportJobs' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::DescribeRecommendationExportJobsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to advance to the next page of export jobs.

This value is null when there are no more pages of export jobs to
return.


=head2 RecommendationExportJobs => ArrayRef[L<Paws::ComputeOptimizer::RecommendationExportJob>]

An array of objects that describe recommendation export jobs.


=head2 _request_id => Str


=cut

1;