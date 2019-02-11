
package Paws::AppStream::DescribeUsersResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Users => (is => 'ro', isa => 'ArrayRef[Paws::AppStream::User]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::DescribeUsersResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If there are no more pages, this value is null.


=head2 Users => ArrayRef[L<Paws::AppStream::User>]

Information about users in the user pool.


=head2 _request_id => Str


=cut

1;