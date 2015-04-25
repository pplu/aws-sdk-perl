
package Paws::EC2::DescribeImportSnapshotTasksResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has ImportSnapshotTasks => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ImportSnapshotTask]', xmlname => 'importSnapshotTaskSet', traits => ['Unwrapped',]);
  has NextToken => (is => 'ro', isa => 'Str', xmlname => 'nextToken', traits => ['Unwrapped',]);

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeImportSnapshotTasksResult

=head1 ATTRIBUTES

=head2 ImportSnapshotTasks => ArrayRef[Paws::EC2::ImportSnapshotTask]

  

A list of zero or more ImportSnapshot tasks that are currently active
or completed/cancelled in the previous 7 days.









=head2 NextToken => Str

  

The token to get to the next page of paginated describe requests.











=cut

