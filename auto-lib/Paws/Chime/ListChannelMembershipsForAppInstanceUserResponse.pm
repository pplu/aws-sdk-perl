
package Paws::Chime::ListChannelMembershipsForAppInstanceUserResponse;
  use Moose;
  has ChannelMemberships => (is => 'ro', isa => 'ArrayRef[Paws::Chime::ChannelMembershipForAppInstanceUserSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::ListChannelMembershipsForAppInstanceUserResponse

=head1 ATTRIBUTES


=head2 ChannelMemberships => ArrayRef[L<Paws::Chime::ChannelMembershipForAppInstanceUserSummary>]

The token passed by previous API calls until all requested users are
returned.


=head2 NextToken => Str

The token passed by previous API calls until all requested users are
returned.


=head2 _request_id => Str


=cut

