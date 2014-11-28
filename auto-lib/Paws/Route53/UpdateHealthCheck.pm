
package Paws::Route53::UpdateHealthCheck {
  use Moose;
  has FailureThreshold => (is => 'ro', isa => 'Int');
  has FullyQualifiedDomainName => (is => 'ro', isa => 'Str');
  has HealthCheckId => (is => 'ro', isa => 'Str', required => 1);
  has HealthCheckVersion => (is => 'ro', isa => 'Num');
  has IPAddress => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has ResourcePath => (is => 'ro', isa => 'Str');
  has SearchString => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateHealthCheck');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::UpdateHealthCheckResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateHealthCheckResult');
}
1;