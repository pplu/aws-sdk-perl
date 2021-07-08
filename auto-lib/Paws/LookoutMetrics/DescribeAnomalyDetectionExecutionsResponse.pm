
package Paws::LookoutMetrics::DescribeAnomalyDetectionExecutionsResponse;
  use Moose;
  has ExecutionList => (is => 'ro', isa => 'ArrayRef[Paws::LookoutMetrics::ExecutionStatus]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutMetrics::DescribeAnomalyDetectionExecutionsResponse

=head1 ATTRIBUTES


=head2 ExecutionList => ArrayRef[L<Paws::LookoutMetrics::ExecutionStatus>]

A list of detection jobs.


=head2 NextToken => Str

The pagination token that's included if more results are available.


=head2 _request_id => Str


=cut

