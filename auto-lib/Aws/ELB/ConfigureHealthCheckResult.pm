
package Aws::ELB::ConfigureHealthCheckResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has HealthCheck => (is => 'ro', isa => 'Aws::ELB::HealthCheck');

}
1;