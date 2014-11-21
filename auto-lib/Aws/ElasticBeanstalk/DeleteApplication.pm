
package Aws::ElasticBeanstalk::DeleteApplication {
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has TerminateEnvByForce => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteApplication');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;