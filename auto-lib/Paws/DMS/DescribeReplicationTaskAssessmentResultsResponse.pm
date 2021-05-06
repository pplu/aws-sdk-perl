
package Paws::DMS::DescribeReplicationTaskAssessmentResultsResponse;
  use Moose;
  has BucketName => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has ReplicationTaskAssessmentResults => (is => 'ro', isa => 'ArrayRef[Paws::DMS::ReplicationTaskAssessmentResult]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeReplicationTaskAssessmentResultsResponse

=head1 ATTRIBUTES


=head2 BucketName => Str

- The Amazon S3 bucket where the task assessment report is located.


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 ReplicationTaskAssessmentResults => ArrayRef[L<Paws::DMS::ReplicationTaskAssessmentResult>]

The task assessment report.


=head2 _request_id => Str


=cut

1;