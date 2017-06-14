
package Paws::Greengrass::DisassociateRoleFromGroupResponse;
  use Moose;
  has DisassociatedAt => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::DisassociateRoleFromGroupResponse

=head1 ATTRIBUTES


=head2 DisassociatedAt => Str

Time when the role was disassociated from the group.


=head2 _request_id => Str


=cut

