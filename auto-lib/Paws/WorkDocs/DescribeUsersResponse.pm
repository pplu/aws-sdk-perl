
package Paws::WorkDocs::DescribeUsersResponse;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has TotalNumberOfUsers => (is => 'ro', isa => 'Int');
  has Users => (is => 'ro', isa => 'ArrayRef[Paws::WorkDocs::User]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::DescribeUsersResponse

=head1 ATTRIBUTES


=head2 Marker => Str

The marker to use when requesting the next set of results. If there are
no additional results, the string is empty.


=head2 TotalNumberOfUsers => Int

The total number of users included in the results.


=head2 Users => ArrayRef[L<Paws::WorkDocs::User>]

The users.


=head2 _request_id => Str


=cut

