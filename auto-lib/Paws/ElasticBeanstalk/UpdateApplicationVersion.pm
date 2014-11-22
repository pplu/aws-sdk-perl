
package Paws::ElasticBeanstalk::UpdateApplicationVersion {
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has VersionLabel => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateApplicationVersion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticBeanstalk::ApplicationVersionDescriptionMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateApplicationVersionResult');
}
1;