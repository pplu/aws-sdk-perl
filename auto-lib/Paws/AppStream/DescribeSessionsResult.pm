
package Paws::AppStream::DescribeSessionsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Sessions => (is => 'ro', isa => 'ArrayRef[Paws::AppStream::Session]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::DescribeSessionsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If there are no more pages, this value is null.


=head2 Sessions => ArrayRef[L<Paws::AppStream::Session>]

Information about the streaming sessions.


=head2 _request_id => Str


=cut

1;