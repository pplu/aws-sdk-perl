
package Aws::Config::DeliverConfigSnapshot {
  use Moose;
  has deliveryChannelName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeliverConfigSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Config::DeliverConfigSnapshotResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;