
package Aws::ElasticBeanstalk::DescribeEnvironmentResourcesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has EnvironmentResources => (is => 'ro', isa => 'Aws::ElasticBeanstalk::EnvironmentResourceDescription');

}
1;