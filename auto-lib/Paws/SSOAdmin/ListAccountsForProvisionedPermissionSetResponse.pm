
package Paws::SSOAdmin::ListAccountsForProvisionedPermissionSetResponse;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::ListAccountsForProvisionedPermissionSetResponse

=head1 ATTRIBUTES


=head2 AccountIds => ArrayRef[Str|Undef]

The list of AWS C<AccountIds>.


=head2 NextToken => Str

The pagination token for the list API. Initially the value is null. Use
the output of previous API calls to make subsequent calls.


=head2 _request_id => Str


=cut

1;