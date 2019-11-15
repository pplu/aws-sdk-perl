
package Paws::LakeFormation::GetEffectivePermissionsForPathResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Permissions => (is => 'ro', isa => 'ArrayRef[Paws::LakeFormation::PrincipalResourcePermissions]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::GetEffectivePermissionsForPathResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A continuation token, if this is not the first call to retrieve this
list.


=head2 Permissions => ArrayRef[L<Paws::LakeFormation::PrincipalResourcePermissions>]

A list of the permissions for the specified table or database resource
located at the path in Amazon S3.


=head2 _request_id => Str


=cut

1;