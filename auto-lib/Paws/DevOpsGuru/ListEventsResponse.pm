
package Paws::DevOpsGuru::ListEventsResponse;
  use Moose;
  has Events => (is => 'ro', isa => 'ArrayRef[Paws::DevOpsGuru::Event]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru::ListEventsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Events => ArrayRef[L<Paws::DevOpsGuru::Event>]

A list of the requested events.


=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If there are no more pages, this value is null.


=head2 _request_id => Str


=cut

