
package Aws::StorageGateway::UpdateMaintenanceStartTime {
  use Moose;
  has DayOfWeek => (is => 'ro', isa => 'Int', required => 1);
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has HourOfDay => (is => 'ro', isa => 'Int', required => 1);
  has MinuteOfHour => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMaintenanceStartTime');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::UpdateMaintenanceStartTimeOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;