
package Aws::StorageGateway::DescribeMaintenanceStartTimeOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has DayOfWeek => (is => 'ro', isa => 'Int');
  has GatewayARN => (is => 'ro', isa => 'Str');
  has HourOfDay => (is => 'ro', isa => 'Int');
  has MinuteOfHour => (is => 'ro', isa => 'Int');
  has Timezone => (is => 'ro', isa => 'Str');

}
1;