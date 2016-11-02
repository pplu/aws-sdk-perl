
package Paws::Config::DescribeDeliveryChannelsResponse;
  use Moose;
  has DeliveryChannels => (is => 'ro', isa => 'ArrayRef[Paws::Config::DeliveryChannel]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeDeliveryChannelsResponse

=head1 ATTRIBUTES


=head2 DeliveryChannels => ArrayRef[L<Paws::Config::DeliveryChannel>]

A list that contains the descriptions of the specified delivery
channel.


=head2 _request_id => Str


=cut

1;