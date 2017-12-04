
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

Time the role arn was associated to your group.


=head2 _request_id => Str


=cut

