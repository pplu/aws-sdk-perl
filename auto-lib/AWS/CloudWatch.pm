
use MooseX::Declare;
use AWS::API;

use Moose::Util::TypeConstraints;
enum 'AWS::CloudWatch::ComparisonOperator', [qw(GreaterThanOrEqualToThreshold GreaterThanThreshold LessThanThreshold LessThanOrEqualToThreshold )];
enum 'AWS::CloudWatch::HistoryItemType', [qw(ConfigurationUpdate StateUpdate Action )];
enum 'AWS::CloudWatch::StandardUnit', [qw(Seconds Microseconds Milliseconds Bytes Kilobytes Megabytes Gigabytes Terabytes Bits Kilobits Megabits Gigabits Terabits Percent Count Bytes/Second Kilobytes/Second Megabytes/Second Gigabytes/Second Terabytes/Second Bits/Second Kilobits/Second Megabits/Second Gigabits/Second Terabits/Second Count/Second None )];
enum 'AWS::CloudWatch::StateValue', [qw(OK ALARM INSUFFICIENT_DATA )];
enum 'AWS::CloudWatch::Statistic', [qw(SampleCount Average Sum Minimum Maximum )];


class AWS::CloudWatch::AlarmHistoryItem with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AlarmName => (is => 'ro', isa => 'Str');
  has HistoryData => (is => 'ro', isa => 'Str');
  has HistoryItemType => (is => 'ro', isa => 'AWS::CloudWatch::HistoryItemType');
  has HistorySummary => (is => 'ro', isa => 'Str');
  has Timestamp => (is => 'ro', isa => 'Str');
}

class AWS::CloudWatch::Datapoint with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Average => (is => 'ro', isa => 'Num');
  has Maximum => (is => 'ro', isa => 'Num');
  has Minimum => (is => 'ro', isa => 'Num');
  has SampleCount => (is => 'ro', isa => 'Num');
  has Sum => (is => 'ro', isa => 'Num');
  has Timestamp => (is => 'ro', isa => 'Str');
  has Unit => (is => 'ro', isa => 'AWS::CloudWatch::StandardUnit');
}

class AWS::CloudWatch::Dimension with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::CloudWatch::DimensionFilter with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str');
}

class AWS::CloudWatch::Metric with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Dimensions => (is => 'ro', isa => 'ArrayRef[AWS::CloudWatch::Dimension]');
  has MetricName => (is => 'ro', isa => 'Str');
  has Namespace => (is => 'ro', isa => 'Str');
}

class AWS::CloudWatch::MetricAlarm with (AWS::API::ResultParser, AWS::API::ToParams) {
  has ActionsEnabled => (is => 'ro', isa => 'Str');
  has AlarmActions => (is => 'ro', isa => 'ArrayRef[Str]');
  has AlarmArn => (is => 'ro', isa => 'Str');
  has AlarmConfigurationUpdatedTimestamp => (is => 'ro', isa => 'Str');
  has AlarmDescription => (is => 'ro', isa => 'Str');
  has AlarmName => (is => 'ro', isa => 'Str');
  has ComparisonOperator => (is => 'ro', isa => 'AWS::CloudWatch::ComparisonOperator');
  has Dimensions => (is => 'ro', isa => 'ArrayRef[AWS::CloudWatch::Dimension]');
  has EvaluationPeriods => (is => 'ro', isa => 'Int');
  has InsufficientDataActions => (is => 'ro', isa => 'ArrayRef[Str]');
  has MetricName => (is => 'ro', isa => 'Str');
  has Namespace => (is => 'ro', isa => 'Str');
  has OKActions => (is => 'ro', isa => 'ArrayRef[Str]');
  has Period => (is => 'ro', isa => 'Int');
  has StateReason => (is => 'ro', isa => 'Str');
  has StateReasonData => (is => 'ro', isa => 'Str');
  has StateUpdatedTimestamp => (is => 'ro', isa => 'Str');
  has StateValue => (is => 'ro', isa => 'AWS::CloudWatch::StateValue');
  has Statistic => (is => 'ro', isa => 'AWS::CloudWatch::Statistic');
  has Threshold => (is => 'ro', isa => 'Num');
  has Unit => (is => 'ro', isa => 'AWS::CloudWatch::StandardUnit');
}

class AWS::CloudWatch::MetricDatum with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Dimensions => (is => 'ro', isa => 'ArrayRef[AWS::CloudWatch::Dimension]');
  has MetricName => (is => 'ro', isa => 'Str', required => 1);
  has StatisticValues => (is => 'ro', isa => 'AWS::CloudWatch::StatisticSet');
  has Timestamp => (is => 'ro', isa => 'Str');
  has Unit => (is => 'ro', isa => 'AWS::CloudWatch::StandardUnit');
  has Value => (is => 'ro', isa => 'Num');
}

class AWS::CloudWatch::StatisticSet with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Maximum => (is => 'ro', isa => 'Num', required => 1);
  has Minimum => (is => 'ro', isa => 'Num', required => 1);
  has SampleCount => (is => 'ro', isa => 'Num', required => 1);
  has Sum => (is => 'ro', isa => 'Num', required => 1);
}



class AWS::CloudWatch::DeleteAlarms {
  has AlarmNames => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAlarms');
  has _returns => (isa => 'AWS::CloudWatch::DeleteAlarmsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteAlarmsResult');  
}
class AWS::CloudWatch::DescribeAlarmHistory {
  has AlarmName => (is => 'ro', isa => 'Str');
  has EndDate => (is => 'ro', isa => 'Str');
  has HistoryItemType => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has StartDate => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAlarmHistory');
  has _returns => (isa => 'AWS::CloudWatch::DescribeAlarmHistoryResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAlarmHistoryResult');  
}
class AWS::CloudWatch::DescribeAlarms {
  has ActionPrefix => (is => 'ro', isa => 'Str');
  has AlarmNamePrefix => (is => 'ro', isa => 'Str');
  has AlarmNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has StateValue => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAlarms');
  has _returns => (isa => 'AWS::CloudWatch::DescribeAlarmsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAlarmsResult');  
}
class AWS::CloudWatch::DescribeAlarmsForMetric {
  has Dimensions => (is => 'ro', isa => 'ArrayRef[AWS::CloudWatch::Dimension]');
  has MetricName => (is => 'ro', isa => 'Str', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', required => 1);
  has Period => (is => 'ro', isa => 'Int');
  has Statistic => (is => 'ro', isa => 'Str');
  has Unit => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAlarmsForMetric');
  has _returns => (isa => 'AWS::CloudWatch::DescribeAlarmsForMetricResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAlarmsForMetricResult');  
}
class AWS::CloudWatch::DisableAlarmActions {
  has AlarmNames => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DisableAlarmActions');
  has _returns => (isa => 'AWS::CloudWatch::DisableAlarmActionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DisableAlarmActionsResult');  
}
class AWS::CloudWatch::EnableAlarmActions {
  has AlarmNames => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'EnableAlarmActions');
  has _returns => (isa => 'AWS::CloudWatch::EnableAlarmActionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'EnableAlarmActionsResult');  
}
class AWS::CloudWatch::GetMetricStatistics {
  has Dimensions => (is => 'ro', isa => 'ArrayRef[AWS::CloudWatch::Dimension]');
  has EndTime => (is => 'ro', isa => 'Str', required => 1);
  has MetricName => (is => 'ro', isa => 'Str', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', required => 1);
  has Period => (is => 'ro', isa => 'Int', required => 1);
  has StartTime => (is => 'ro', isa => 'Str', required => 1);
  has Statistics => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has Unit => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetMetricStatistics');
  has _returns => (isa => 'AWS::CloudWatch::GetMetricStatisticsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetMetricStatisticsResult');  
}
class AWS::CloudWatch::ListMetrics {
  has Dimensions => (is => 'ro', isa => 'ArrayRef[AWS::CloudWatch::DimensionFilter]');
  has MetricName => (is => 'ro', isa => 'Str');
  has Namespace => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListMetrics');
  has _returns => (isa => 'AWS::CloudWatch::ListMetricsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListMetricsResult');  
}
class AWS::CloudWatch::PutMetricAlarm {
  has ActionsEnabled => (is => 'ro', isa => 'Str');
  has AlarmActions => (is => 'ro', isa => 'ArrayRef[Str]');
  has AlarmDescription => (is => 'ro', isa => 'Str');
  has AlarmName => (is => 'ro', isa => 'Str', required => 1);
  has ComparisonOperator => (is => 'ro', isa => 'Str', required => 1);
  has Dimensions => (is => 'ro', isa => 'ArrayRef[AWS::CloudWatch::Dimension]');
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
  has _returns => (isa => 'AWS::CloudWatch::PutMetricAlarmResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PutMetricAlarmResult');  
}
class AWS::CloudWatch::PutMetricData {
  has MetricData => (is => 'ro', isa => 'ArrayRef[AWS::CloudWatch::MetricDatum]', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'PutMetricData');
  has _returns => (isa => 'AWS::CloudWatch::PutMetricDataResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PutMetricDataResult');  
}
class AWS::CloudWatch::SetAlarmState {
  has AlarmName => (is => 'ro', isa => 'Str', required => 1);
  has StateReason => (is => 'ro', isa => 'Str', required => 1);
  has StateReasonData => (is => 'ro', isa => 'Str');
  has StateValue => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetAlarmState');
  has _returns => (isa => 'AWS::CloudWatch::SetAlarmStateResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetAlarmStateResult');  
}

class AWS::CloudWatch::DescribeAlarmHistoryResult with AWS::API::ResultParser {
  has AlarmHistoryItems => (is => 'ro', isa => 'ArrayRef[AWS::CloudWatch::AlarmHistoryItem]');
  has NextToken => (is => 'ro', isa => 'Str');

}
class AWS::CloudWatch::DescribeAlarmsResult with AWS::API::ResultParser {
  has MetricAlarms => (is => 'ro', isa => 'ArrayRef[AWS::CloudWatch::MetricAlarm]');
  has NextToken => (is => 'ro', isa => 'Str');

}
class AWS::CloudWatch::DescribeAlarmsForMetricResult with AWS::API::ResultParser {
  has MetricAlarms => (is => 'ro', isa => 'ArrayRef[AWS::CloudWatch::MetricAlarm]');

}
class AWS::CloudWatch::GetMetricStatisticsResult with AWS::API::ResultParser {
  has Datapoints => (is => 'ro', isa => 'ArrayRef[AWS::CloudWatch::Datapoint]');
  has Label => (is => 'ro', isa => 'Str');

}
class AWS::CloudWatch::ListMetricsResult with AWS::API::ResultParser {
  has Metrics => (is => 'ro', isa => 'ArrayRef[AWS::CloudWatch::Metric]');
  has NextToken => (is => 'ro', isa => 'Str');

}

class AWS::CloudWatch with (Net::AWS::Caller, AWS::API::RegionalEndpointCaller, Net::AWS::V4Signature, Net::AWS::QueryCaller, Net::AWS::XMLResponse) {
  has service => (is => 'ro', isa => 'Str', default => 'monitoring');
  has version => (is => 'ro', isa => 'Str', default => '2010-08-01');
  
  method DeleteAlarms (%args) {
    my $call = AWS::CloudWatch::DeleteAlarms->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DescribeAlarmHistory (%args) {
    my $call = AWS::CloudWatch::DescribeAlarmHistory->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::CloudWatch::DescribeAlarmHistoryResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeAlarms (%args) {
    my $call = AWS::CloudWatch::DescribeAlarms->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::CloudWatch::DescribeAlarmsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeAlarmsForMetric (%args) {
    my $call = AWS::CloudWatch::DescribeAlarmsForMetric->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::CloudWatch::DescribeAlarmsForMetricResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DisableAlarmActions (%args) {
    my $call = AWS::CloudWatch::DisableAlarmActions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method EnableAlarmActions (%args) {
    my $call = AWS::CloudWatch::EnableAlarmActions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method GetMetricStatistics (%args) {
    my $call = AWS::CloudWatch::GetMetricStatistics->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::CloudWatch::GetMetricStatisticsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListMetrics (%args) {
    my $call = AWS::CloudWatch::ListMetrics->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::CloudWatch::ListMetricsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method PutMetricAlarm (%args) {
    my $call = AWS::CloudWatch::PutMetricAlarm->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method PutMetricData (%args) {
    my $call = AWS::CloudWatch::PutMetricData->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method SetAlarmState (%args) {
    my $call = AWS::CloudWatch::SetAlarmState->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
}
