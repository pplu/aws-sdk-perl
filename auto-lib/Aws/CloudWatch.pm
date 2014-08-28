
use AWS::API;


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