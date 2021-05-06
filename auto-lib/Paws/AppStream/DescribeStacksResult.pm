
package Paws::AppStream::DescribeStacksResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Stacks => (is => 'ro', isa => 'ArrayRef[Paws::AppStream::Stack]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::DescribeStacksResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If there are no more pages, this value is null.


=head2 Stacks => ArrayRef[L<Paws::AppStream::Stack>]

Information about the stacks.


=head2 _request_id => Str


=cut

1;