
use Paws::API;


package Paws::CloudTrail {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'cloudtrail');
  has version => (is => 'ro', isa => 'Str', default => '2013-11-01');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101');
  has json_version => (is => 'ro', isa => 'Str', default => "1.1");

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'Paws::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::JsonCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::JsonResponse');

  
  sub CreateTrail {
    my $self = shift;
    return $self->do_call('Paws::CloudTrail::CreateTrail', @_);
  }
  sub DeleteTrail {
    my $self = shift;
    return $self->do_call('Paws::CloudTrail::DeleteTrail', @_);
  }
  sub DescribeTrails {
    my $self = shift;
    return $self->do_call('Paws::CloudTrail::DescribeTrails', @_);
  }
  sub GetTrailStatus {
    my $self = shift;
    return $self->do_call('Paws::CloudTrail::GetTrailStatus', @_);
  }
  sub StartLogging {
    my $self = shift;
    return $self->do_call('Paws::CloudTrail::StartLogging', @_);
  }
  sub StopLogging {
    my $self = shift;
    return $self->do_call('Paws::CloudTrail::StopLogging', @_);
  }
  sub UpdateTrail {
    my $self = shift;
    return $self->do_call('Paws::CloudTrail::UpdateTrail', @_);
  }
}
1;
