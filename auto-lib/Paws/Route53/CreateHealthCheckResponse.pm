
package Paws::Route53::CreateHealthCheckResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has HealthCheck => (is => 'ro', isa => 'Paws::Route53::HealthCheck', required => 1);
  has Location => (is => 'ro', isa => 'Str', required => 1);

}
1;