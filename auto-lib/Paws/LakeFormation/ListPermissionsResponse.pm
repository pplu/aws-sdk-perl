
package Paws::LakeFormation::ListPermissionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PrincipalResourcePermissions => (is => 'ro', isa => 'ArrayRef[Paws::LakeFormation::PrincipalResourcePermissions]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::ListPermissionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A continuation token, if this is not the first call to retrieve this
list.


=head2 PrincipalResourcePermissions => ArrayRef[L<Paws::LakeFormation::PrincipalResourcePermissions>]

A list of principals and their permissions on the resource for the
specified principal and resource types.


=head2 _request_id => Str


=cut

1;