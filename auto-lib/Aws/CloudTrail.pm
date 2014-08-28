
use AWS::API;


package Aws::CloudTrail {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'cloudtrail');
  has version => (is => 'ro', isa => 'Str', default => '2013-11-01');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101');
  has json_version => (is => 'ro', isa => 'Str', default => "1.1");

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::JsonCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::JsonResponse');

  
  sub CreateTrail {
    my $self = shift;
    return $self->do_call('Aws::CloudTrail::CreateTrail', @_);
  }
  sub DeleteTrail {
    my $self = shift;
    return $self->do_call('Aws::CloudTrail::DeleteTrail', @_);
  }
  sub DescribeTrails {
    my $self = shift;
    return $self->do_call('Aws::CloudTrail::DescribeTrails', @_);
  }
  sub GetTrailStatus {
    my $self = shift;
    return $self->do_call('Aws::CloudTrail::GetTrailStatus', @_);
  }
  sub StartLogging {
    my $self = shift;
    return $self->do_call('Aws::CloudTrail::StartLogging', @_);
  }
  sub StopLogging {
    my $self = shift;
    return $self->do_call('Aws::CloudTrail::StopLogging', @_);
  }
  sub UpdateTrail {
    my $self = shift;
    return $self->do_call('Aws::CloudTrail::UpdateTrail', @_);
  }
}
1;
