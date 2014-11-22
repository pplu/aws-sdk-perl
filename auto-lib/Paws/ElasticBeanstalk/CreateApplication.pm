
package Paws::ElasticBeanstalk::CreateApplication {
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApplication');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticBeanstalk::ApplicationDescriptionMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateApplicationResult');
}
1;