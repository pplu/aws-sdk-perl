
package Paws::IoTAnalytics::DescribeChannelResponse;
  use Moose;
  has Channel => (is => 'ro', isa => 'Paws::IoTAnalytics::Channel', traits => ['NameInRequest'], request_name => 'channel');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::DescribeChannelResponse

=head1 ATTRIBUTES


=head2 Channel => L<Paws::IoTAnalytics::Channel>

An object that contains information about the channel.


=head2 _request_id => Str


=cut

