
package Paws::ElasticBeanstalk::ApplicationDescriptionMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has Application => (is => 'ro', isa => 'Paws::ElasticBeanstalk::ApplicationDescription');

}
1;