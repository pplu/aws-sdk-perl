
package Aws::ElasticBeanstalk::UpdateApplicationResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Application => (is => 'ro', isa => 'Aws::ElasticBeanstalk::ApplicationDescription');

}
1;