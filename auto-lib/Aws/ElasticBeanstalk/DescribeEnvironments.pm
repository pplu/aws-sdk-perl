
package Aws::ElasticBeanstalk::DescribeEnvironments {
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str');
  has EnvironmentIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has EnvironmentNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has IncludedDeletedBackTo => (is => 'ro', isa => 'Str');
  has IncludeDeleted => (is => 'ro', isa => 'Bool');
  has VersionLabel => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEnvironments');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElasticBeanstalk::DescribeEnvironmentsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEnvironmentsResult');
}
1;
  