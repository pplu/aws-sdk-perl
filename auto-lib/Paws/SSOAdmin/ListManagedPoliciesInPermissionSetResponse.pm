
package Paws::SSOAdmin::ListManagedPoliciesInPermissionSetResponse;
  use Moose;
  has AttachedManagedPolicies => (is => 'ro', isa => 'ArrayRef[Paws::SSOAdmin::AttachedManagedPolicy]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::ListManagedPoliciesInPermissionSetResponse

=head1 ATTRIBUTES


=head2 AttachedManagedPolicies => ArrayRef[L<Paws::SSOAdmin::AttachedManagedPolicy>]

The array of the AttachedManagedPolicy data type object.


=head2 NextToken => Str

The pagination token for the list API. Initially the value is null. Use
the output of previous API calls to make subsequent calls.


=head2 _request_id => Str


=cut

1;