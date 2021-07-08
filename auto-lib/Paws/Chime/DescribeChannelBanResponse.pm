
package Paws::Chime::DescribeChannelBanResponse;
  use Moose;
  has ChannelBan => (is => 'ro', isa => 'Paws::Chime::ChannelBan');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::DescribeChannelBanResponse

=head1 ATTRIBUTES


=head2 ChannelBan => L<Paws::Chime::ChannelBan>

The details of the ban.


=head2 _request_id => Str


=cut

