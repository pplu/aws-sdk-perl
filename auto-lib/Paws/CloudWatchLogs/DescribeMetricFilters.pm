
package Paws::CloudWatchLogs::DescribeMetricFilters {
  use Moose;
  has filterNamePrefix => (is => 'ro', isa => 'Str');
  has limit => (is => 'ro', isa => 'Int');
  has logGroupName => (is => 'ro', isa => 'Str', required => 1);
  has nextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeMetricFilters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchLogs::DescribeMetricFiltersResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;