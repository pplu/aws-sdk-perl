
package Paws::Quicksight::CreateGroupMembershipResponse;
  use Moose;
  has GroupMember => (is => 'ro', isa => 'Paws::Quicksight::GroupMember');
  has RequestId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::CreateGroupMembershipResponse

=head1 ATTRIBUTES


=head2 GroupMember => L<Paws::Quicksight::GroupMember>

The group member.


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The http status of the request.


=head2 _request_id => Str


=cut

