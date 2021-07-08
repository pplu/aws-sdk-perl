
package Paws::SSOAdmin::ListAccountAssignmentsResponse;
  use Moose;
  has AccountAssignments => (is => 'ro', isa => 'ArrayRef[Paws::SSOAdmin::AccountAssignment]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::ListAccountAssignmentsResponse

=head1 ATTRIBUTES


=head2 AccountAssignments => ArrayRef[L<Paws::SSOAdmin::AccountAssignment>]

The list of assignments that match the input AWS account and permission
set.


=head2 NextToken => Str

The pagination token for the list API. Initially the value is null. Use
the output of previous API calls to make subsequent calls.


=head2 _request_id => Str


=cut

1;