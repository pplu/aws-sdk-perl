
use AWS::API;

use Moose::Util::TypeConstraints;
enum 'Aws::CloudWatch::ComparisonOperator', ['GreaterThanOrEqualToThreshold','GreaterThanThreshold','LessThanThreshold','LessThanOrEqualToThreshold',];
enum 'Aws::CloudWatch::HistoryItemType', ['ConfigurationUpdate','StateUpdate','Action',];
enum 'Aws::CloudWatch::StandardUnit', ['Seconds','Microseconds','Milliseconds','Bytes','Kilobytes','Megabytes','Gigabytes','Terabytes','Bits','Kilobits','Megabits','Gigabits','Terabits','Percent','Count','Bytes/Second','Kilobytes/Second','Megabytes/Second','Gigabytes/Second','Terabytes/Second','Bits/Second','Kilobits/Second','Megabits/Second','Gigabits/Second','Terabits/Second','Count/Second','None',];
enum 'Aws::CloudWatch::StateValue', ['OK','ALARM','INSUFFICIENT_DATA',];
enum 'Aws::CloudWatch::Statistic', ['SampleCount','Average','Sum','Minimum','Maximum',];


package Aws::CloudWatch::AlarmHistoryItem {
  use Moose;
  with ('AWS::API::ResultParser');
  has AlarmName => (is => 'ro', isa => 'Str');
  has HistoryData => (is => 'ro', isa => 'Str');
  has HistoryItemType => (is => 'ro', isa => 'Aws::CloudWatch::HistoryItemType');
  has HistorySummary => (is => 'ro', isa => 'Str');
  has Timestamp => (is => 'ro', isa => 'Str');
}

package Aws::CloudWatch::Datapoint {
  use Moose;
  with ('AWS::API::ResultParser');
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
  with ('AWS::API::ResultParser');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::CloudWatch::DimensionFilter {
  use Moose;
  with ('AWS::API::ResultParser');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str');
}

package Aws::CloudWatch::Metric {
  use Moose;
  with ('AWS::API::ResultParser');
  has Dimensions => (is => 'ro', isa => 'ArrayRef[Aws::CloudWatch::Dimension]');
  has MetricName => (is => 'ro', isa => 'Str');
  has Namespace => (is => 'ro', isa => 'Str');
}

package Aws::CloudWatch::MetricAlarm {
  use Moose;
  with ('AWS::API::ResultParser');
  has ActionsEnabled => (is => 'ro', isa => 'Bool');
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
  with ('AWS::API::ResultParser');
  has Dimensions => (is => 'ro', isa => 'ArrayRef[Aws::CloudWatch::Dimension]');
  has MetricName => (is => 'ro', isa => 'Str', required => 1);
  has StatisticValues => (is => 'ro', isa => 'Aws::CloudWatch::StatisticSet');
  has Timestamp => (is => 'ro', isa => 'Str');
  has Unit => (is => 'ro', isa => 'Aws::CloudWatch::StandardUnit');
  has Value => (is => 'ro', isa => 'Num');
}

package Aws::CloudWatch::StatisticSet {
  use Moose;
  with ('AWS::API::ResultParser');
  has Maximum => (is => 'ro', isa => 'Num', required => 1);
  has Minimum => (is => 'ro', isa => 'Num', required => 1);
  has SampleCount => (is => 'ro', isa => 'Num', required => 1);
  has Sum => (is => 'ro', isa => 'Num', required => 1);
}



package Aws::CloudWatch::DeleteAlarms {
  use Moose;
  has AlarmNames => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAlarms');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::CloudWatch::DescribeAlarmHistory {
  use Moose;
  has AlarmName => (is => 'ro', isa => 'Str');
  has EndDate => (is => 'ro', isa => 'Str');
  has HistoryItemType => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has StartDate => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAlarmHistory');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudWatch::DescribeAlarmHistoryResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAlarmHistoryResult');
}
package Aws::CloudWatch::DescribeAlarms {
  use Moose;
  has ActionPrefix => (is => 'ro', isa => 'Str');
  has AlarmNamePrefix => (is => 'ro', isa => 'Str');
  has AlarmNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has StateValue => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAlarms');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudWatch::DescribeAlarmsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAlarmsResult');
}
package Aws::CloudWatch::DescribeAlarmsForMetric {
  use Moose;
  has Dimensions => (is => 'ro', isa => 'ArrayRef[Aws::CloudWatch::Dimension]');
  has MetricName => (is => 'ro', isa => 'Str', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', required => 1);
  has Period => (is => 'ro', isa => 'Int');
  has Statistic => (is => 'ro', isa => 'Str');
  has Unit => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAlarmsForMetric');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudWatch::DescribeAlarmsForMetricResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAlarmsForMetricResult');
}
package Aws::CloudWatch::DisableAlarmActions {
  use Moose;
  has AlarmNames => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisableAlarmActions');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::CloudWatch::EnableAlarmActions {
  use Moose;
  has AlarmNames => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EnableAlarmActions');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
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

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMetricStatistics');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudWatch::GetMetricStatisticsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetMetricStatisticsResult');
}
package Aws::CloudWatch::ListMetrics {
  use Moose;
  has Dimensions => (is => 'ro', isa => 'ArrayRef[Aws::CloudWatch::DimensionFilter]');
  has MetricName => (is => 'ro', isa => 'Str');
  has Namespace => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMetrics');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudWatch::ListMetricsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListMetricsResult');
}
package Aws::CloudWatch::PutMetricAlarm {
  use Moose;
  has ActionsEnabled => (is => 'ro', isa => 'Bool');
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

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutMetricAlarm');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::CloudWatch::PutMetricData {
  use Moose;
  has MetricData => (is => 'ro', isa => 'ArrayRef[Aws::CloudWatch::MetricDatum]', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutMetricData');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::CloudWatch::SetAlarmState {
  use Moose;
  has AlarmName => (is => 'ro', isa => 'Str', required => 1);
  has StateReason => (is => 'ro', isa => 'Str', required => 1);
  has StateReasonData => (is => 'ro', isa => 'Str');
  has StateValue => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetAlarmState');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
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

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::QueryCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::XMLResponse');

  
  sub DeleteAlarms {
    my $self = shift;
    return $self->do_call('Aws::CloudWatch::DeleteAlarms', @_);
  }
  sub DescribeAlarmHistory {
    my $self = shift;
    return $self->do_call('Aws::CloudWatch::DescribeAlarmHistory', @_);
  }
  sub DescribeAlarms {
    my $self = shift;
    return $self->do_call('Aws::CloudWatch::DescribeAlarms', @_);
  }
  sub DescribeAlarmsForMetric {
    my $self = shift;
    return $self->do_call('Aws::CloudWatch::DescribeAlarmsForMetric', @_);
  }
  sub DisableAlarmActions {
    my $self = shift;
    return $self->do_call('Aws::CloudWatch::DisableAlarmActions', @_);
  }
  sub EnableAlarmActions {
    my $self = shift;
    return $self->do_call('Aws::CloudWatch::EnableAlarmActions', @_);
  }
  sub GetMetricStatistics {
    my $self = shift;
    return $self->do_call('Aws::CloudWatch::GetMetricStatistics', @_);
  }
  sub ListMetrics {
    my $self = shift;
    return $self->do_call('Aws::CloudWatch::ListMetrics', @_);
  }
  sub PutMetricAlarm {
    my $self = shift;
    return $self->do_call('Aws::CloudWatch::PutMetricAlarm', @_);
  }
  sub PutMetricData {
    my $self = shift;
    return $self->do_call('Aws::CloudWatch::PutMetricData', @_);
  }
  sub SetAlarmState {
    my $self = shift;
    return $self->do_call('Aws::CloudWatch::SetAlarmState', @_);
  }
}
1;
