
package Paws::SSOAdmin::ListAccountAssignmentDeletionStatusResponse;
  use Moose;
  has AccountAssignmentsDeletionStatus => (is => 'ro', isa => 'ArrayRef[Paws::SSOAdmin::AccountAssignmentOperationStatusMetadata]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::ListAccountAssignmentDeletionStatusResponse

=head1 ATTRIBUTES


=head2 AccountAssignmentsDeletionStatus => ArrayRef[L<Paws::SSOAdmin::AccountAssignmentOperationStatusMetadata>]

The status object for the account assignment deletion operation.


=head2 NextToken => Str

The pagination token for the list API. Initially the value is null. Use
the output of previous API calls to make subsequent calls.


=head2 _request_id => Str


=cut

1;