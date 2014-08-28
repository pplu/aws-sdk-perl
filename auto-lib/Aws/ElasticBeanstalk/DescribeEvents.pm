
package Aws::ElasticBeanstalk::DescribeEvents {
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str');
  has EndTime => (is => 'ro', isa => 'Str');
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has RequestId => (is => 'ro', isa => 'Str');
  has Severity => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str');
  has VersionLabel => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEvents');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElasticBeanstalk::DescribeEventsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEventsResult');
}
1;
  