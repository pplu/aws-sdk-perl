
package Aws::StorageGateway::DescribeMaintenanceStartTime {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeMaintenanceStartTime');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::DescribeMaintenanceStartTimeResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}

1;
