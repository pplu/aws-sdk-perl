
package Aws::ElasticBeanstalk::DescribeApplicationVersions {
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str');
  has VersionLabels => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeApplicationVersions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElasticBeanstalk::ApplicationVersionDescriptionsMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeApplicationVersionsResult');
}
1;