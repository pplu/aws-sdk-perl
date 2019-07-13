
package Paws::Datasync::ListTasksResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Tasks => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::TaskListEntry]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::ListTasksResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

An opaque string that indicates the position at which to begin
returning the next list of tasks.


=head2 Tasks => ArrayRef[L<Paws::Datasync::TaskListEntry>]

A list of all the tasks that are returned.


=head2 _request_id => Str


=cut

1;