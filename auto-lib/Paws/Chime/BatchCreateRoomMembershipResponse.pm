
package Paws::Chime::BatchCreateRoomMembershipResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::Chime::MemberError]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::BatchCreateRoomMembershipResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::Chime::MemberError>]

If the action fails for one or more of the member IDs in the request, a
list of the member IDs is returned, along with error codes and error
messages.


=head2 _request_id => Str


=cut

