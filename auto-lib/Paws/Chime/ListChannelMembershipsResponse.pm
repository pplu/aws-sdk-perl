
package Paws::Chime::ListChannelMembershipsResponse;
  use Moose;
  has ChannelArn => (is => 'ro', isa => 'Str');
  has ChannelMemberships => (is => 'ro', isa => 'ArrayRef[Paws::Chime::ChannelMembershipSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::ListChannelMembershipsResponse

=head1 ATTRIBUTES


=head2 ChannelArn => Str

The ARN of the channel.


=head2 ChannelMemberships => ArrayRef[L<Paws::Chime::ChannelMembershipSummary>]

The information for the requested channel memberships.


=head2 NextToken => Str

The token passed by previous API calls until all requested channel
memberships are returned.


=head2 _request_id => Str


=cut

