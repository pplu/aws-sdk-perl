
package Paws::Chime::DescribeChannelMembershipForAppInstanceUserResponse;
  use Moose;
  has ChannelMembership => (is => 'ro', isa => 'Paws::Chime::ChannelMembershipForAppInstanceUserSummary');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::DescribeChannelMembershipForAppInstanceUserResponse

=head1 ATTRIBUTES


=head2 ChannelMembership => L<Paws::Chime::ChannelMembershipForAppInstanceUserSummary>

The channel to which a user belongs.


=head2 _request_id => Str


=cut

