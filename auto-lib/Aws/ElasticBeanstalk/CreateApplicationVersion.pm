
package Aws::ElasticBeanstalk::CreateApplicationVersion {
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has AutoCreateApplication => (is => 'ro', isa => 'Bool');
  has Description => (is => 'ro', isa => 'Str');
  has SourceBundle => (is => 'ro', isa => 'Aws::ElasticBeanstalk::S3Location');
  has VersionLabel => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApplicationVersion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElasticBeanstalk::ApplicationVersionDescriptionMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateApplicationVersionResult');
}
1;