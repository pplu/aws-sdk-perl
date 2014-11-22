
package Paws::ELB::ConfigureHealthCheckOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has HealthCheck => (is => 'ro', isa => 'Paws::ELB::HealthCheck');

}
1;