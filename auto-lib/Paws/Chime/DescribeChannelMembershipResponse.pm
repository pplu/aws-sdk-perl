
package Paws::Chime::DescribeChannelMembershipResponse;
  use Moose;
  has ChannelMembership => (is => 'ro', isa => 'Paws::Chime::ChannelMembership');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::DescribeChannelMembershipResponse

=head1 ATTRIBUTES


=head2 ChannelMembership => L<Paws::Chime::ChannelMembership>

The details of the membership.


=head2 _request_id => Str


=cut

