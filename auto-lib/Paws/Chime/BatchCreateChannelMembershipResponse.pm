
package Paws::Chime::BatchCreateChannelMembershipResponse;
  use Moose;
  has BatchChannelMemberships => (is => 'ro', isa => 'Paws::Chime::BatchChannelMemberships');
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::Chime::BatchCreateChannelMembershipError]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::BatchCreateChannelMembershipResponse

=head1 ATTRIBUTES


=head2 BatchChannelMemberships => L<Paws::Chime::BatchChannelMemberships>

The list of channel memberships in the response.


=head2 Errors => ArrayRef[L<Paws::Chime::BatchCreateChannelMembershipError>]

If the action fails for one or more of the memberships in the request,
a list of the memberships is returned, along with error codes and error
messages.


=head2 _request_id => Str


=cut

