
package Paws::Route53::CreateHealthCheck {
  use Moose;
  has CallerReference => (is => 'ro', isa => 'Str', required => 1);
  has HealthCheckConfig => (is => 'ro', isa => 'Paws::Route53::HealthCheckConfig', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateHealthCheck');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::CreateHealthCheckResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateHealthCheckResult');
}
1;