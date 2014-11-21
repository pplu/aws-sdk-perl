
use AWS::API;


package Aws::Config {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'config');
  has version => (is => 'ro', isa => 'Str', default => '2014-11-12');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'StarlingDoveService');
  has json_version => (is => 'ro', isa => 'Str', default => "1.1");

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::JsonCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::JsonResponse');

  
  sub DeleteDeliveryChannel {
    my $self = shift;
    return $self->do_call('Aws::Config::DeleteDeliveryChannel', @_);
  }
  sub DeliverConfigSnapshot {
    my $self = shift;
    return $self->do_call('Aws::Config::DeliverConfigSnapshot', @_);
  }
  sub DescribeConfigurationRecorders {
    my $self = shift;
    return $self->do_call('Aws::Config::DescribeConfigurationRecorders', @_);
  }
  sub DescribeConfigurationRecorderStatus {
    my $self = shift;
    return $self->do_call('Aws::Config::DescribeConfigurationRecorderStatus', @_);
  }
  sub DescribeDeliveryChannels {
    my $self = shift;
    return $self->do_call('Aws::Config::DescribeDeliveryChannels', @_);
  }
  sub DescribeDeliveryChannelStatus {
    my $self = shift;
    return $self->do_call('Aws::Config::DescribeDeliveryChannelStatus', @_);
  }
  sub GetResourceConfigHistory {
    my $self = shift;
    return $self->do_call('Aws::Config::GetResourceConfigHistory', @_);
  }
  sub PutConfigurationRecorder {
    my $self = shift;
    return $self->do_call('Aws::Config::PutConfigurationRecorder', @_);
  }
  sub PutDeliveryChannel {
    my $self = shift;
    return $self->do_call('Aws::Config::PutDeliveryChannel', @_);
  }
  sub StartConfigurationRecorder {
    my $self = shift;
    return $self->do_call('Aws::Config::StartConfigurationRecorder', @_);
  }
  sub StopConfigurationRecorder {
    my $self = shift;
    return $self->do_call('Aws::Config::StopConfigurationRecorder', @_);
  }
}
1;
