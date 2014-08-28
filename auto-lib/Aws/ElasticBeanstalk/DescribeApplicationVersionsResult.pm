
package Aws::ElasticBeanstalk::DescribeApplicationVersionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ApplicationVersions => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::ApplicationVersionDescription]');

}
1;