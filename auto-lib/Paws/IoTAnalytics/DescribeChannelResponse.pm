
package Paws::IoTAnalytics::DescribeChannelResponse;
  use Moose;
  has Channel => (is => 'ro', isa => 'Paws::IoTAnalytics::Channel', traits => ['NameInRequest'], request_name => 'channel');
  has Statistics => (is => 'ro', isa => 'Paws::IoTAnalytics::ChannelStatistics', traits => ['NameInRequest'], request_name => 'statistics');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::DescribeChannelResponse

=head1 ATTRIBUTES


=head2 Channel => L<Paws::IoTAnalytics::Channel>

An object that contains information about the channel.


=head2 Statistics => L<Paws::IoTAnalytics::ChannelStatistics>

Statistics about the channel. Included if the C<includeStatistics>
parameter is set to C<true> in the request.


=head2 _request_id => Str


=cut

