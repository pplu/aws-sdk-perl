
use Paws::API;


package Paws::Config {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'config');
  has version => (is => 'ro', isa => 'Str', default => '2014-11-12');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'StarlingDoveService');
  has json_version => (is => 'ro', isa => 'Str', default => "1.1");

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'Paws::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::JsonCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::JsonResponse');

  
  sub DeleteDeliveryChannel {
    my $self = shift;
    return $self->do_call('Paws::Config::DeleteDeliveryChannel', @_);
  }
  sub DeliverConfigSnapshot {
    my $self = shift;
    return $self->do_call('Paws::Config::DeliverConfigSnapshot', @_);
  }
  sub DescribeConfigurationRecorders {
    my $self = shift;
    return $self->do_call('Paws::Config::DescribeConfigurationRecorders', @_);
  }
  sub DescribeConfigurationRecorderStatus {
    my $self = shift;
    return $self->do_call('Paws::Config::DescribeConfigurationRecorderStatus', @_);
  }
  sub DescribeDeliveryChannels {
    my $self = shift;
    return $self->do_call('Paws::Config::DescribeDeliveryChannels', @_);
  }
  sub DescribeDeliveryChannelStatus {
    my $self = shift;
    return $self->do_call('Paws::Config::DescribeDeliveryChannelStatus', @_);
  }
  sub GetResourceConfigHistory {
    my $self = shift;
    return $self->do_call('Paws::Config::GetResourceConfigHistory', @_);
  }
  sub PutConfigurationRecorder {
    my $self = shift;
    return $self->do_call('Paws::Config::PutConfigurationRecorder', @_);
  }
  sub PutDeliveryChannel {
    my $self = shift;
    return $self->do_call('Paws::Config::PutDeliveryChannel', @_);
  }
  sub StartConfigurationRecorder {
    my $self = shift;
    return $self->do_call('Paws::Config::StartConfigurationRecorder', @_);
  }
  sub StopConfigurationRecorder {
    my $self = shift;
    return $self->do_call('Paws::Config::StopConfigurationRecorder', @_);
  }
}
1;
