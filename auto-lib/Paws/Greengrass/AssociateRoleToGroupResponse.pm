
package Paws::Greengrass::AssociateRoleToGroupResponse;
  use Moose;
  has AssociatedAt => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::AssociateRoleToGroupResponse

=head1 ATTRIBUTES


=head2 AssociatedAt => Str

The time, in milliseconds since the epoch, when the role ARN was
associated with the group.


=head2 _request_id => Str


=cut

