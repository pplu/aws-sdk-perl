
package Paws::Route53::GetHealthCheckCountResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has HealthCheckCount => (is => 'ro', isa => 'Num', required => 1);

}
1;