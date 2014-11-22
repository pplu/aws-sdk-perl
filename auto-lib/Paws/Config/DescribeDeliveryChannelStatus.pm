
package Paws::Config::DescribeDeliveryChannelStatus {
  use Moose;
  has DeliveryChannelNames => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDeliveryChannelStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::DescribeDeliveryChannelStatusResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;