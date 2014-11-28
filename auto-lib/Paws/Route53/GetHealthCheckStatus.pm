
package Paws::Route53::GetHealthCheckStatus {
  use Moose;
  has HealthCheckId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetHealthCheckStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::GetHealthCheckStatusResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetHealthCheckStatusResult');
}
1;