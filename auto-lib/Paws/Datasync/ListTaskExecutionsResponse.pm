
package Paws::Datasync::ListTaskExecutionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has TaskExecutions => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::TaskExecutionListEntry]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::ListTaskExecutionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

An opaque string that indicates the position at which to begin
returning the next list of executed tasks.


=head2 TaskExecutions => ArrayRef[L<Paws::Datasync::TaskExecutionListEntry>]

A list of executed tasks.


=head2 _request_id => Str


=cut

1;