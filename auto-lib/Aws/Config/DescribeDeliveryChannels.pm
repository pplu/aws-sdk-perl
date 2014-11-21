
package Aws::Config::DescribeDeliveryChannels {
  use Moose;
  has DeliveryChannelNames => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDeliveryChannels');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Config::DescribeDeliveryChannelsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;