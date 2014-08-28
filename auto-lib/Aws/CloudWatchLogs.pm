
use AWS::API;


package Aws::CloudWatchLogs::DescribeLogGroupsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has logGroups => (is => 'ro', isa => 'ArrayRef[Aws::CloudWatchLogs::LogGroup]');
  has nextToken => (is => 'ro', isa => 'Str');

}
package Aws::CloudWatchLogs::DescribeLogStreamsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has logStreams => (is => 'ro', isa => 'ArrayRef[Aws::CloudWatchLogs::LogStream]');
  has nextToken => (is => 'ro', isa => 'Str');

}
package Aws::CloudWatchLogs::DescribeMetricFiltersResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has metricFilters => (is => 'ro', isa => 'ArrayRef[Aws::CloudWatchLogs::MetricFilter]');
  has nextToken => (is => 'ro', isa => 'Str');

}
package Aws::CloudWatchLogs::GetLogEventsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has events => (is => 'ro', isa => 'ArrayRef[Aws::CloudWatchLogs::OutputLogEvent]');
  has nextBackwardToken => (is => 'ro', isa => 'Str');
  has nextForwardToken => (is => 'ro', isa => 'Str');

}
package Aws::CloudWatchLogs::PutLogEventsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has nextSequenceToken => (is => 'ro', isa => 'Str');

}
package Aws::CloudWatchLogs::TestMetricFilterResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has matches => (is => 'ro', isa => 'ArrayRef[Aws::CloudWatchLogs::MetricFilterMatchRecord]');

}

package Aws::CloudWatchLogs {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'logs');
  has version => (is => 'ro', isa => 'Str', default => '2014-03-28');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'Logs_20140328');
  has json_version => (is => 'ro', isa => 'Str', default => "1.1");

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::JsonCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::JsonResponse');

  
  sub CreateLogGroup {
    my $self = shift;
    return $self->do_call('Aws::CloudWatchLogs::CreateLogGroup', @_);
  }
  sub CreateLogStream {
    my $self = shift;
    return $self->do_call('Aws::CloudWatchLogs::CreateLogStream', @_);
  }
  sub DeleteLogGroup {
    my $self = shift;
    return $self->do_call('Aws::CloudWatchLogs::DeleteLogGroup', @_);
  }
  sub DeleteLogStream {
    my $self = shift;
    return $self->do_call('Aws::CloudWatchLogs::DeleteLogStream', @_);
  }
  sub DeleteMetricFilter {
    my $self = shift;
    return $self->do_call('Aws::CloudWatchLogs::DeleteMetricFilter', @_);
  }
  sub DeleteRetentionPolicy {
    my $self = shift;
    return $self->do_call('Aws::CloudWatchLogs::DeleteRetentionPolicy', @_);
  }
  sub DescribeLogGroups {
    my $self = shift;
    return $self->do_call('Aws::CloudWatchLogs::DescribeLogGroups', @_);
  }
  sub DescribeLogStreams {
    my $self = shift;
    return $self->do_call('Aws::CloudWatchLogs::DescribeLogStreams', @_);
  }
  sub DescribeMetricFilters {
    my $self = shift;
    return $self->do_call('Aws::CloudWatchLogs::DescribeMetricFilters', @_);
  }
  sub GetLogEvents {
    my $self = shift;
    return $self->do_call('Aws::CloudWatchLogs::GetLogEvents', @_);
  }
  sub PutLogEvents {
    my $self = shift;
    return $self->do_call('Aws::CloudWatchLogs::PutLogEvents', @_);
  }
  sub PutMetricFilter {
    my $self = shift;
    return $self->do_call('Aws::CloudWatchLogs::PutMetricFilter', @_);
  }
  sub PutRetentionPolicy {
    my $self = shift;
    return $self->do_call('Aws::CloudWatchLogs::PutRetentionPolicy', @_);
  }
  sub TestMetricFilter {
    my $self = shift;
    return $self->do_call('Aws::CloudWatchLogs::TestMetricFilter', @_);
  }
}
1;
