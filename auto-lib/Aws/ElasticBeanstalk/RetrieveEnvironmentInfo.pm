
package Aws::ElasticBeanstalk::RetrieveEnvironmentInfo {
  use Moose;
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has InfoType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RetrieveEnvironmentInfo');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElasticBeanstalk::RetrieveEnvironmentInfoResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RetrieveEnvironmentInfoResult');
}
1;
