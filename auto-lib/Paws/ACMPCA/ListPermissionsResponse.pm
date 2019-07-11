
package Paws::ACMPCA::ListPermissionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Permissions => (is => 'ro', isa => 'ArrayRef[Paws::ACMPCA::Permission]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ACMPCA::ListPermissionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

When the list is truncated, this value is present and should be used
for the B<NextToken> parameter in a subsequent pagination request.


=head2 Permissions => ArrayRef[L<Paws::ACMPCA::Permission>]

Summary information about each permission assigned by the specified
private CA, including the action enabled, the policy provided, and the
time of creation.


=head2 _request_id => Str


=cut

1;