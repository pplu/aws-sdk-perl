
package Paws::Greengrass::GetAssociatedRoleResponse;
  use Moose;
  has AssociatedAt => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::GetAssociatedRoleResponse

=head1 ATTRIBUTES


=head2 AssociatedAt => Str

The time when the role was associated with the group.


=head2 RoleArn => Str

The ARN of the role that is associated with the group.


=head2 _request_id => Str


=cut

