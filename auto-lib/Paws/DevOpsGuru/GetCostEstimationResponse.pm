
package Paws::DevOpsGuru::GetCostEstimationResponse;
  use Moose;
  has Costs => (is => 'ro', isa => 'ArrayRef[Paws::DevOpsGuru::ServiceResourceCost]');
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceCollection => (is => 'ro', isa => 'Paws::DevOpsGuru::CostEstimationResourceCollectionFilter');
  has Status => (is => 'ro', isa => 'Str');
  has TimeRange => (is => 'ro', isa => 'Paws::DevOpsGuru::CostEstimationTimeRange');
  has TotalCost => (is => 'ro', isa => 'Num');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru::GetCostEstimationResponse

=head1 ATTRIBUTES


=head2 Costs => ArrayRef[L<Paws::DevOpsGuru::ServiceResourceCost>]

An array of C<ResourceCost> objects that each contains details about
the monthly cost estimate to analyze one of your AWS resources.


=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If there are no more pages, this value is null.


=head2 ResourceCollection => L<Paws::DevOpsGuru::CostEstimationResourceCollectionFilter>

The collection of the AWS resources used to create your monthly DevOps
Guru cost estimate.


=head2 Status => Str

The status of creating this cost estimate. If it's still in progress,
the status C<ONGOING> is returned. If it is finished, the status
C<COMPLETED> is returned.

Valid values are: C<"ONGOING">, C<"COMPLETED">
=head2 TimeRange => L<Paws::DevOpsGuru::CostEstimationTimeRange>

The start and end time of the cost estimation.


=head2 TotalCost => Num

The estimated monthly cost to analyze the AWS resources. This value is
the sum of the estimated costs to analyze each resource in the C<Costs>
object in this response.


=head2 _request_id => Str


=cut

