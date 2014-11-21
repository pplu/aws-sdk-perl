
package Aws::ElasticBeanstalk::DescribeApplications {
  use Moose;
  has ApplicationNames => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeApplications');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElasticBeanstalk::ApplicationDescriptionsMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeApplicationsResult');
}
1;