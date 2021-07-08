
package Paws::SSOAdmin::DescribeAccountAssignmentDeletionStatusResponse;
  use Moose;
  has AccountAssignmentDeletionStatus => (is => 'ro', isa => 'Paws::SSOAdmin::AccountAssignmentOperationStatus');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::DescribeAccountAssignmentDeletionStatusResponse

=head1 ATTRIBUTES


=head2 AccountAssignmentDeletionStatus => L<Paws::SSOAdmin::AccountAssignmentOperationStatus>

The status object for the account assignment deletion operation.


=head2 _request_id => Str


=cut

1;