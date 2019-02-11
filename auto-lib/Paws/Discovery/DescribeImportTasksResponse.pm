
package Paws::Discovery::DescribeImportTasksResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Tasks => (is => 'ro', isa => 'ArrayRef[Paws::Discovery::ImportTask]', traits => ['NameInRequest'], request_name => 'tasks' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::DescribeImportTasksResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to request the next page of results.


=head2 Tasks => ArrayRef[L<Paws::Discovery::ImportTask>]

A returned array of import tasks that match any applied filters, up to
the specified number of maximum results.


=head2 _request_id => Str


=cut

1;