
package Paws::LakeFormation::BatchRevokePermissionsResponse;
  use Moose;
  has Failures => (is => 'ro', isa => 'ArrayRef[Paws::LakeFormation::BatchPermissionsFailureEntry]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::BatchRevokePermissionsResponse

=head1 ATTRIBUTES


=head2 Failures => ArrayRef[L<Paws::LakeFormation::BatchPermissionsFailureEntry>]

A list of failures to revoke permissions to the resources.


=head2 _request_id => Str


=cut

1;