
package Paws::ElasticBeanstalk::ApplicationVersionDescriptionMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has ApplicationVersion => (is => 'ro', isa => 'Paws::ElasticBeanstalk::ApplicationVersionDescription');

}
1;