
use Paws::API;


package Paws::CloudWatchLogs {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'logs');
  has version => (is => 'ro', isa => 'Str', default => '2014-03-28');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'Logs_20140328');
  has json_version => (is => 'ro', isa => 'Str', default => "1.1");

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'Paws::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::JsonCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::JsonResponse');

  
  sub CreateLogGroup {
    my $self = shift;
    return $self->do_call('Paws::CloudWatchLogs::CreateLogGroup', @_);
  }
  sub CreateLogStream {
    my $self = shift;
    return $self->do_call('Paws::CloudWatchLogs::CreateLogStream', @_);
  }
  sub DeleteLogGroup {
    my $self = shift;
    return $self->do_call('Paws::CloudWatchLogs::DeleteLogGroup', @_);
  }
  sub DeleteLogStream {
    my $self = shift;
    return $self->do_call('Paws::CloudWatchLogs::DeleteLogStream', @_);
  }
  sub DeleteMetricFilter {
    my $self = shift;
    return $self->do_call('Paws::CloudWatchLogs::DeleteMetricFilter', @_);
  }
  sub DeleteRetentionPolicy {
    my $self = shift;
    return $self->do_call('Paws::CloudWatchLogs::DeleteRetentionPolicy', @_);
  }
  sub DescribeLogGroups {
    my $self = shift;
    return $self->do_call('Paws::CloudWatchLogs::DescribeLogGroups', @_);
  }
  sub DescribeLogStreams {
    my $self = shift;
    return $self->do_call('Paws::CloudWatchLogs::DescribeLogStreams', @_);
  }
  sub DescribeMetricFilters {
    my $self = shift;
    return $self->do_call('Paws::CloudWatchLogs::DescribeMetricFilters', @_);
  }
  sub GetLogEvents {
    my $self = shift;
    return $self->do_call('Paws::CloudWatchLogs::GetLogEvents', @_);
  }
  sub PutLogEvents {
    my $self = shift;
    return $self->do_call('Paws::CloudWatchLogs::PutLogEvents', @_);
  }
  sub PutMetricFilter {
    my $self = shift;
    return $self->do_call('Paws::CloudWatchLogs::PutMetricFilter', @_);
  }
  sub PutRetentionPolicy {
    my $self = shift;
    return $self->do_call('Paws::CloudWatchLogs::PutRetentionPolicy', @_);
  }
  sub TestMetricFilter {
    my $self = shift;
    return $self->do_call('Paws::CloudWatchLogs::TestMetricFilter', @_);
  }
}
1;
