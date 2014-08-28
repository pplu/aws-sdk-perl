
package Aws::EC2::MonitorInstancesResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has InstanceMonitorings => (is => 'ro', isa => 'ArrayRef[Aws::EC2::InstanceMonitoring]', traits => ['Unwrapped'], xmlname => 'instancesSet');

}
1;