
package Paws::EC2::DescribeImportSnapshotTasksResult;
  use Moose;
  has ImportSnapshotTasks => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ImportSnapshotTask]', request_name => 'importSnapshotTaskSet', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeImportSnapshotTasksResult

=head1 ATTRIBUTES


=head2 ImportSnapshotTasks => ArrayRef[L<Paws::EC2::ImportSnapshotTask>]

A list of zero or more import snapshot tasks that are currently active
or were completed or canceled in the previous 7 days.


=head2 NextToken => Str

The token to use to get the next page of results. This value is C<null>
when there are no more results to return.


=head2 _request_id => Str


=cut

