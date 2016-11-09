
package Paws::Config::DescribeDeliveryChannelStatusResponse;
  use Moose;
  has DeliveryChannelsStatus => (is => 'ro', isa => 'ArrayRef[Paws::Config::DeliveryChannelStatus]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeDeliveryChannelStatusResponse

=head1 ATTRIBUTES


=head2 DeliveryChannelsStatus => ArrayRef[L<Paws::Config::DeliveryChannelStatus>]

A list that contains the status of a specified delivery channel.


=head2 _request_id => Str


=cut

1;