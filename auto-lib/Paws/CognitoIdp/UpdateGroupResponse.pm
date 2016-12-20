
package Paws::CognitoIdp::UpdateGroupResponse;
  use Moose;
  has Group => (is => 'ro', isa => 'Paws::CognitoIdp::GroupType');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::UpdateGroupResponse

=head1 ATTRIBUTES


=head2 Group => L<Paws::CognitoIdp::GroupType>

The group object for the group.


=head2 _request_id => Str


=cut

1;