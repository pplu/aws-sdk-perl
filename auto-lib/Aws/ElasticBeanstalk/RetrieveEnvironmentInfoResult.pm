
package Aws::ElasticBeanstalk::RetrieveEnvironmentInfoResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has EnvironmentInfo => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::EnvironmentInfoDescription]');

}
1;