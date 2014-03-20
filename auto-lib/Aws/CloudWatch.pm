
use AWS::API;

use Moose::Util::TypeConstraints;
enum 'Aws::CloudWatch::ComparisonOperator', ['GreaterThanOrEqualToThreshold','GreaterThanThreshold','LessThanThreshold','LessThanOrEqualToThreshold',];
enum 'Aws::CloudWatch::HistoryItemType', ['ConfigurationUpdate','StateUpdate','Action',];
enum 'Aws::CloudWatch::StandardUnit', ['Seconds','Microseconds','Milliseconds','Bytes','Kilobytes','Megabytes','Gigabytes','Terabytes','Bits','Kilobits','Megabits','Gigabits','Terabits','Percent','Count','Bytes/Second','Kilobytes/Second','Megabytes/Second','Gigabytes/Second','Terabytes/Second','Bits/Second','Kilobits/Second','Megabits/Second','Gigabits/Second','Terabits/Second','Count/Second','None',];
enum 'Aws::CloudWatch::StateValue', ['OK','ALARM','INSUFFICIENT_DATA',];
enum 'Aws::CloudWatch::Statistic', ['SampleCount','Average','Sum','Minimum','Maximum',];


package Aws::CloudWatch::AlarmHistoryItem {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has AlarmName => (is => 'ro', isa => 'Str');
  has HistoryData => (is => 'ro', isa => 'Str');
  has HistoryItemType => (is => 'ro', isa => 'Aws::CloudWatch::HistoryItemType');
  has HistorySummary => (is => 'ro', isa => 'Str');
  has Timestamp => (is => 'ro', isa => 'Str');
}

package Aws::CloudWatch::Datapoint {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Average => (is => 'ro', isa => 'Num');
  has Maximum => (is => 'ro', isa => 'Num');
  has Minimum => (is => 'ro', isa => 'Num');
  has SampleCount => (is => 'ro', isa => 'Num');
  has Sum => (is => 'ro', isa => 'Num');
  has Timestamp => (is => 'ro', isa => 'Str');
  has Unit => (is => 'ro', isa => 'Aws::CloudWatch::StandardUnit');
}

package Aws::CloudWatch::Dimension {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::CloudWatch::DimensionFilter {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str');
}

package Aws::CloudWatch::Metric {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Dimensions => (is => 'ro', isa => 'ArrayRef[Aws::CloudWatch::Dimension]');
  has MetricName => (is => 'ro', isa => 'Str');
  has Namespace => (is => 'ro', isa => 'Str');
}

package Aws::CloudWatch::MetricAlarm {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has ActionsEnabled => (is => 'ro', isa => 'Str');
  has AlarmActions => (is => 'ro', isa => 'ArrayRef[Str]');
  has AlarmArn => (is => 'ro', isa => 'Str');
  has AlarmConfigurationUpdatedTimestamp => (is => 'ro', isa => 'Str');
  has AlarmDescription => (is => 'ro', isa => 'Str');
  has AlarmName => (is => 'ro', isa => 'Str');
  has ComparisonOperator => (is => 'ro', isa => 'Aws::CloudWatch::ComparisonOperator');
  has Dimensions => (is => 'ro', isa => 'ArrayRef[Aws::CloudWatch::Dimension]');
  has EvaluationPeriods => (is => 'ro', isa => 'Int');
  has InsufficientDataActions => (is => 'ro', isa => 'ArrayRef[Str]');
  has MetricName => (is => 'ro', isa => 'Str');
  has Namespace => (is => 'ro', isa => 'Str');
  has OKActions => (is => 'ro', isa => 'ArrayRef[Str]');
  has Period => (is => 'ro', isa => 'Int');
  has StateReason => (is => 'ro', isa => 'Str');
  has StateReasonData => (is => 'ro', isa => 'Str');
  has StateUpdatedTimestamp => (is => 'ro', isa => 'Str');
  has StateValue => (is => 'ro', isa => 'Aws::CloudWatch::StateValue');
  has Statistic => (is => 'ro', isa => 'Aws::CloudWatch::Statistic');
  has Threshold => (is => 'ro', isa => 'Num');
  has Unit => (is => 'ro', isa => 'Aws::CloudWatch::StandardUnit');
}

package Aws::CloudWatch::MetricDatum {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Dimensions => (is => 'ro', isa => 'ArrayRef[Aws::CloudWatch::Dimension]');
  has MetricName => (is => 'ro', isa => 'Str', required => 1);
  has StatisticValues => (is => 'ro', isa => 'Aws::CloudWatch::StatisticSet');
  has Timestamp => (is => 'ro', isa => 'Str');
  has Unit => (is => 'ro', isa => 'Aws::CloudWatch::StandardUnit');
  has Value => (is => 'ro', isa => 'Num');
}

package Aws::CloudWatch::StatisticSet {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Maximum => (is => 'ro', isa => 'Num', required => 1);
  has Minimum => (is => 'ro', isa => 'Num', required => 1);
  has SampleCount => (is => 'ro', isa => 'Num', required => 1);
  has Sum => (is => 'ro', isa => 'Num', required => 1);
}



package Aws::CloudWatch::DeleteAlarms {
  use Moose;
  has AlarmNames => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAlarms');
  has _returns => (isa => 'Aws::CloudWatch::DeleteAlarmsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteAlarmsResult');  
}
package Aws::CloudWatch::DescribeAlarmHistory {
  use Moose;
  has AlarmName => (is => 'ro', isa => 'Str');
  has EndDate => (is => 'ro', isa => 'Str');
  has HistoryItemType => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has StartDate => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAlarmHistory');
  has _returns => (isa => 'Aws::CloudWatch::DescribeAlarmHistoryResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAlarmHistoryResult');  
}
package Aws::CloudWatch::DescribeAlarms {
  use Moose;
  has ActionPrefix => (is => 'ro', isa => 'Str');
  has AlarmNamePrefix => (is => 'ro', isa => 'Str');
  has AlarmNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has StateValue => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAlarms');
  has _returns => (isa => 'Aws::CloudWatch::DescribeAlarmsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAlarmsResult');  
}
package Aws::CloudWatch::DescribeAlarmsForMetric {
  use Moose;
  has Dimensions => (is => 'ro', isa => 'ArrayRef[Aws::CloudWatch::Dimension]');
  has MetricName => (is => 'ro', isa => 'Str', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', required => 1);
  has Period => (is => 'ro', isa => 'Int');
  has Statistic => (is => 'ro', isa => 'Str');
  has Unit => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAlarmsForMetric');
  has _returns => (isa => 'Aws::CloudWatch::DescribeAlarmsForMetricResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAlarmsForMetricResult');  
}
package Aws::CloudWatch::DisableAlarmActions {
  use Moose;
  has AlarmNames => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DisableAlarmActions');
  has _returns => (isa => 'Aws::CloudWatch::DisableAlarmActionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DisableAlarmActionsResult');  
}
package Aws::CloudWatch::EnableAlarmActions {
  use Moose;
  has AlarmNames => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'EnableAlarmActions');
  has _returns => (isa => 'Aws::CloudWatch::EnableAlarmActionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'EnableAlarmActionsResult');  
}
package Aws::CloudWatch::GetMetricStatistics {
  use Moose;
  has Dimensions => (is => 'ro', isa => 'ArrayRef[Aws::CloudWatch::Dimension]');
  has EndTime => (is => 'ro', isa => 'Str', required => 1);
  has MetricName => (is => 'ro', isa => 'Str', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', required => 1);
  has Period => (is => 'ro', isa => 'Int', required => 1);
  has StartTime => (is => 'ro', isa => 'Str', required => 1);
  has Statistics => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has Unit => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetMetricStatistics');
  has _returns => (isa => 'Aws::CloudWatch::GetMetricStatisticsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetMetricStatisticsResult');  
}
package Aws::CloudWatch::ListMetrics {
  use Moose;
  has Dimensions => (is => 'ro', isa => 'ArrayRef[Aws::CloudWatch::DimensionFilter]');
  has MetricName => (is => 'ro', isa => 'Str');
  has Namespace => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListMetrics');
  has _returns => (isa => 'Aws::CloudWatch::ListMetricsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListMetricsResult');  
}
package Aws::CloudWatch::PutMetricAlarm {
  use Moose;
  has ActionsEnabled => (is => 'ro', isa => 'Str');
  has AlarmActions => (is => 'ro', isa => 'ArrayRef[Str]');
  has AlarmDescription => (is => 'ro', isa => 'Str');
  has AlarmName => (is => 'ro', isa => 'Str', required => 1);
  has ComparisonOperator => (is => 'ro', isa => 'Str', required => 1);
  has Dimensions => (is => 'ro', isa => 'ArrayRef[Aws::CloudWatch::Dimension]');
  has EvaluationPeriods => (is => 'ro', isa => 'Int', required => 1);
  has InsufficientDataActions => (is => 'ro', isa => 'ArrayRef[Str]');
  has MetricName => (is => 'ro', isa => 'Str', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', required => 1);
  has OKActions => (is => 'ro', isa => 'ArrayRef[Str]');
  has Period => (is => 'ro', isa => 'Int', required => 1);
  has Statistic => (is => 'ro', isa => 'Str', required => 1);
  has Threshold => (is => 'ro', isa => 'Num', required => 1);
  has Unit => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'PutMetricAlarm');
  has _returns => (isa => 'Aws::CloudWatch::PutMetricAlarmResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PutMetricAlarmResult');  
}
package Aws::CloudWatch::PutMetricData {
  use Moose;
  has MetricData => (is => 'ro', isa => 'ArrayRef[Aws::CloudWatch::MetricDatum]', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'PutMetricData');
  has _returns => (isa => 'Aws::CloudWatch::PutMetricDataResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PutMetricDataResult');  
}
package Aws::CloudWatch::SetAlarmState {
  use Moose;
  has AlarmName => (is => 'ro', isa => 'Str', required => 1);
  has StateReason => (is => 'ro', isa => 'Str', required => 1);
  has StateReasonData => (is => 'ro', isa => 'Str');
  has StateValue => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetAlarmState');
  has _returns => (isa => 'Aws::CloudWatch::SetAlarmStateResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetAlarmStateResult');  
}

package Aws::CloudWatch::DescribeAlarmHistoryResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AlarmHistoryItems => (is => 'ro', isa => 'ArrayRef[Aws::CloudWatch::AlarmHistoryItem]');
  has NextToken => (is => 'ro', isa => 'Str');

}
package Aws::CloudWatch::DescribeAlarmsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has MetricAlarms => (is => 'ro', isa => 'ArrayRef[Aws::CloudWatch::MetricAlarm]');
  has NextToken => (is => 'ro', isa => 'Str');

}
package Aws::CloudWatch::DescribeAlarmsForMetricResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has MetricAlarms => (is => 'ro', isa => 'ArrayRef[Aws::CloudWatch::MetricAlarm]');

}
package Aws::CloudWatch::GetMetricStatisticsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Datapoints => (is => 'ro', isa => 'ArrayRef[Aws::CloudWatch::Datapoint]');
  has Label => (is => 'ro', isa => 'Str');

}
package Aws::CloudWatch::ListMetricsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Metrics => (is => 'ro', isa => 'ArrayRef[Aws::CloudWatch::Metric]');
  has NextToken => (is => 'ro', isa => 'Str');

}

package Aws::CloudWatch {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'monitoring');
  has version => (is => 'ro', isa => 'Str', default => '2010-08-01');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '0');
  with ('Net::AWS::Caller', 'AWS::API::RegionalEndpointCaller', 'Net::AWS::V4Signature', 'Net::AWS::QueryCaller', 'Net::AWS::XMLResponse');
  
  sub DeleteAlarms {
    my $self = shift;
    my $call = new_with_coercions('Aws::CloudWatch::DeleteAlarms', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DescribeAlarmHistory {
    my $self = shift;
    my $call = new_with_coercions('Aws::CloudWatch::DescribeAlarmHistory', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudWatch::DescribeAlarmHistoryResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeAlarms {
    my $self = shift;
    my $call = new_with_coercions('Aws::CloudWatch::DescribeAlarms', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudWatch::DescribeAlarmsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeAlarmsForMetric {
    my $self = shift;
    my $call = new_with_coercions('Aws::CloudWatch::DescribeAlarmsForMetric', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudWatch::DescribeAlarmsForMetricResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DisableAlarmActions {
    my $self = shift;
    my $call = new_with_coercions('Aws::CloudWatch::DisableAlarmActions', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub EnableAlarmActions {
    my $self = shift;
    my $call = new_with_coercions('Aws::CloudWatch::EnableAlarmActions', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub GetMetricStatistics {
    my $self = shift;
    my $call = new_with_coercions('Aws::CloudWatch::GetMetricStatistics', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudWatch::GetMetricStatisticsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ListMetrics {
    my $self = shift;
    my $call = new_with_coercions('Aws::CloudWatch::ListMetrics', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudWatch::ListMetricsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub PutMetricAlarm {
    my $self = shift;
    my $call = new_with_coercions('Aws::CloudWatch::PutMetricAlarm', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub PutMetricData {
    my $self = shift;
    my $call = new_with_coercions('Aws::CloudWatch::PutMetricData', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub SetAlarmState {
    my $self = shift;
    my $call = new_with_coercions('Aws::CloudWatch::SetAlarmState', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
}
