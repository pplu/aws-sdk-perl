
package Paws::RedShift::DescribeSnapshotSchedulesOutputMessage;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has SnapshotSchedules => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::SnapshotSchedule]', request_name => 'SnapshotSchedule', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DescribeSnapshotSchedulesOutputMessage

=head1 ATTRIBUTES


=head2 Marker => Str

A value that indicates the starting point for the next set of response
records in a subsequent request. If a value is returned in a response,
you can retrieve the next set of records by providing this returned
marker value in the C<marker> parameter and retrying the command. If
the C<marker> field is empty, all response records have been retrieved
for the request.


=head2 SnapshotSchedules => ArrayRef[L<Paws::RedShift::SnapshotSchedule>]

A list of SnapshotSchedules.


=head2 _request_id => Str


=cut

