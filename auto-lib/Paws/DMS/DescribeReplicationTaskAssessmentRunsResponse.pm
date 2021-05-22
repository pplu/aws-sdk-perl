
package Paws::DMS::DescribeReplicationTaskAssessmentRunsResponse;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has ReplicationTaskAssessmentRuns => (is => 'ro', isa => 'ArrayRef[Paws::DMS::ReplicationTaskAssessmentRun]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeReplicationTaskAssessmentRunsResponse

=head1 ATTRIBUTES


=head2 Marker => Str

A pagination token returned for you to pass to a subsequent request. If
you pass this token as the C<Marker> value in a subsequent request, the
response includes only records beyond the marker, up to the value
specified in the request by C<MaxRecords>.


=head2 ReplicationTaskAssessmentRuns => ArrayRef[L<Paws::DMS::ReplicationTaskAssessmentRun>]

One or more premigration assessment runs as specified by C<Filters>.


=head2 _request_id => Str


=cut

1;