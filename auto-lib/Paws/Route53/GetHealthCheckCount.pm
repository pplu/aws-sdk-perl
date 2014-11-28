
package Paws::Route53::GetHealthCheckCount {
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetHealthCheckCount');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::GetHealthCheckCountResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetHealthCheckCountResult');
}
1;