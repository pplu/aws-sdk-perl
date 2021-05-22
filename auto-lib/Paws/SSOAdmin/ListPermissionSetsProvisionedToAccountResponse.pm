
package Paws::SSOAdmin::ListPermissionSetsProvisionedToAccountResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PermissionSets => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::ListPermissionSetsProvisionedToAccountResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token for the list API. Initially the value is null. Use
the output of previous API calls to make subsequent calls.


=head2 PermissionSets => ArrayRef[Str|Undef]

Defines the level of access that an AWS account has.


=head2 _request_id => Str


=cut

1;