
package Aws::ElasticBeanstalk::TerminateEnvironment {
  use Moose;
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has TerminateResources => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TerminateEnvironment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElasticBeanstalk::TerminateEnvironmentResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'TerminateEnvironmentResult');
}
1;
  