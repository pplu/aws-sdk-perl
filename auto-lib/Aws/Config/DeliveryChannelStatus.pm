package Aws::Config::DeliveryChannelStatus {
  use Moose;
  has configHistoryDeliveryInfo => (is => 'ro', isa => 'Aws::Config::ConfigExportDeliveryInfo');
  has configSnapshotDeliveryInfo => (is => 'ro', isa => 'Aws::Config::ConfigExportDeliveryInfo');
  has configStreamDeliveryInfo => (is => 'ro', isa => 'Aws::Config::ConfigStreamDeliveryInfo');
  has name => (is => 'ro', isa => 'Str');
}
1;
