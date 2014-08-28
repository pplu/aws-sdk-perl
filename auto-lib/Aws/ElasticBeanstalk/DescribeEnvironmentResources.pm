
package Aws::ElasticBeanstalk::DescribeEnvironmentResources {
  use Moose;
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEnvironmentResources');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElasticBeanstalk::DescribeEnvironmentResourcesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEnvironmentResourcesResult');
}
1;
