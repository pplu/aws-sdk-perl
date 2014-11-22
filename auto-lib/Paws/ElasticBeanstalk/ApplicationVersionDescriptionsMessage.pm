
package Paws::ElasticBeanstalk::ApplicationVersionDescriptionsMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has ApplicationVersions => (is => 'ro', isa => 'ArrayRef[Paws::ElasticBeanstalk::ApplicationVersionDescription]');

}
1;