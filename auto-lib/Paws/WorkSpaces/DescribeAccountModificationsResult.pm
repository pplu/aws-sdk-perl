
package Paws::WorkSpaces::DescribeAccountModificationsResult;
  use Moose;
  has AccountModifications => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpaces::AccountModification]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DescribeAccountModificationsResult

=head1 ATTRIBUTES


=head2 AccountModifications => ArrayRef[L<Paws::WorkSpaces::AccountModification>]

The list of modifications to the configuration of BYOL.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
null when there are no more results to return.


=head2 _request_id => Str


=cut

1;