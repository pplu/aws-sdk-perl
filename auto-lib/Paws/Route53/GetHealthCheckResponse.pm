
package Paws::Route53::GetHealthCheckResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has HealthCheck => (is => 'ro', isa => 'Paws::Route53::HealthCheck', required => 1);

}
1;