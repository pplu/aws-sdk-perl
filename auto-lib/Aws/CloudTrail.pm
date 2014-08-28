
use AWS::API;


package Aws::CloudTrail::CreateTrailResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has IncludeGlobalServiceEvents => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str');
  has S3BucketName => (is => 'ro', isa => 'Str');
  has S3KeyPrefix => (is => 'ro', isa => 'Str');
  has SnsTopicName => (is => 'ro', isa => 'Str');

}
package Aws::CloudTrail::DeleteTrailResult {
  use Moose;
  with 'AWS::API::ResultParser';

}
package Aws::CloudTrail::DescribeTrailsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has trailList => (is => 'ro', isa => 'ArrayRef[Aws::CloudTrail::Trail]');

}
package Aws::CloudTrail::GetTrailStatusResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has IsLogging => (is => 'ro', isa => 'Bool');
  has LatestDeliveryError => (is => 'ro', isa => 'Str');
  has LatestDeliveryTime => (is => 'ro', isa => 'Str');
  has LatestNotificationError => (is => 'ro', isa => 'Str');
  has LatestNotificationTime => (is => 'ro', isa => 'Str');
  has StartLoggingTime => (is => 'ro', isa => 'Str');
  has StopLoggingTime => (is => 'ro', isa => 'Str');

}
package Aws::CloudTrail::StartLoggingResult {
  use Moose;
  with 'AWS::API::ResultParser';

}
package Aws::CloudTrail::StopLoggingResult {
  use Moose;
  with 'AWS::API::ResultParser';

}
package Aws::CloudTrail::UpdateTrailResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has IncludeGlobalServiceEvents => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str');
  has S3BucketName => (is => 'ro', isa => 'Str');
  has S3KeyPrefix => (is => 'ro', isa => 'Str');
  has SnsTopicName => (is => 'ro', isa => 'Str');

}

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
