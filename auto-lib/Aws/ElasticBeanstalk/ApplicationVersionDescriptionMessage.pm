
package Aws::ElasticBeanstalk::ApplicationVersionDescriptionMessage {
  use Moose;
  with 'AWS::API::ResultParser';
  has ApplicationVersion => (is => 'ro', isa => 'Aws::ElasticBeanstalk::ApplicationVersionDescription');

}
1;