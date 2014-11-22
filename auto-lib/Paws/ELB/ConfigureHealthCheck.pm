
package Paws::ELB::ConfigureHealthCheck {
  use Moose;
  has HealthCheck => (is => 'ro', isa => 'Paws::ELB::HealthCheck', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ConfigureHealthCheck');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELB::ConfigureHealthCheckOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ConfigureHealthCheckResult');
}
1;