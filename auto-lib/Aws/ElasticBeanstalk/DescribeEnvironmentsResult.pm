
package Aws::ElasticBeanstalk::DescribeEnvironmentsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Environments => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::EnvironmentDescription]');

}
1;