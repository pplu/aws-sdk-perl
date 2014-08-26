
use AWS::API;


package Aws::CloudWatchLogs::CreateLogGroup {
  use Moose;
  has logGroupName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLogGroup');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::CloudWatchLogs::CreateLogStream {
  use Moose;
  has logGroupName => (is => 'ro', isa => 'Str', required => 1);
  has logStreamName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLogStream');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::CloudWatchLogs::DeleteLogGroup {
  use Moose;
  has logGroupName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteLogGroup');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::CloudWatchLogs::DeleteLogStream {
  use Moose;
  has logGroupName => (is => 'ro', isa => 'Str', required => 1);
  has logStreamName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteLogStream');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::CloudWatchLogs::DeleteMetricFilter {
  use Moose;
  has filterName => (is => 'ro', isa => 'Str', required => 1);
  has logGroupName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteMetricFilter');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::CloudWatchLogs::DeleteRetentionPolicy {
  use Moose;
  has logGroupName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRetentionPolicy');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::CloudWatchLogs::DescribeLogGroups {
  use Moose;
  has limit => (is => 'ro', isa => 'Int');
  has logGroupNamePrefix => (is => 'ro', isa => 'Str');
  has nextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLogGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudWatchLogs::DescribeLogGroupsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::CloudWatchLogs::DescribeLogStreams {
  use Moose;
  has limit => (is => 'ro', isa => 'Int');
  has logGroupName => (is => 'ro', isa => 'Str', required => 1);
  has logStreamNamePrefix => (is => 'ro', isa => 'Str');
  has nextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLogStreams');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudWatchLogs::DescribeLogStreamsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::CloudWatchLogs::DescribeMetricFilters {
  use Moose;
  has filterNamePrefix => (is => 'ro', isa => 'Str');
  has limit => (is => 'ro', isa => 'Int');
  has logGroupName => (is => 'ro', isa => 'Str', required => 1);
  has nextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeMetricFilters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudWatchLogs::DescribeMetricFiltersResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::CloudWatchLogs::GetLogEvents {
  use Moose;
  has endTime => (is => 'ro', isa => 'Num');
  has limit => (is => 'ro', isa => 'Int');
  has logGroupName => (is => 'ro', isa => 'Str', required => 1);
  has logStreamName => (is => 'ro', isa => 'Str', required => 1);
  has nextToken => (is => 'ro', isa => 'Str');
  has startFromHead => (is => 'ro', isa => 'Bool');
  has startTime => (is => 'ro', isa => 'Num');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetLogEvents');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudWatchLogs::GetLogEventsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::CloudWatchLogs::PutLogEvents {
  use Moose;
  has logEvents => (is => 'ro', isa => 'ArrayRef[Aws::CloudWatchLogs::InputLogEvent]', required => 1);
  has logGroupName => (is => 'ro', isa => 'Str', required => 1);
  has logStreamName => (is => 'ro', isa => 'Str', required => 1);
  has sequenceToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutLogEvents');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudWatchLogs::PutLogEventsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::CloudWatchLogs::PutMetricFilter {
  use Moose;
  has filterName => (is => 'ro', isa => 'Str', required => 1);
  has filterPattern => (is => 'ro', isa => 'Str', required => 1);
  has logGroupName => (is => 'ro', isa => 'Str', required => 1);
  has metricTransformations => (is => 'ro', isa => 'ArrayRef[Aws::CloudWatchLogs::MetricTransformation]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutMetricFilter');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::CloudWatchLogs::PutRetentionPolicy {
  use Moose;
  has logGroupName => (is => 'ro', isa => 'Str', required => 1);
  has retentionInDays => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutRetentionPolicy');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::CloudWatchLogs::TestMetricFilter {
  use Moose;
  has filterPattern => (is => 'ro', isa => 'Str', required => 1);
  has logEventMessages => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TestMetricFilter');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudWatchLogs::TestMetricFilterResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}

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
