
package Paws::SSOAdmin::DescribeAccountAssignmentCreationStatusResponse;
  use Moose;
  has AccountAssignmentCreationStatus => (is => 'ro', isa => 'Paws::SSOAdmin::AccountAssignmentOperationStatus');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::DescribeAccountAssignmentCreationStatusResponse

=head1 ATTRIBUTES


=head2 AccountAssignmentCreationStatus => L<Paws::SSOAdmin::AccountAssignmentOperationStatus>

The status object for the account assignment creation operation.


=head2 _request_id => Str


=cut

1;