
use AWS::API;


package Aws::CloudTrail::Trail {
  use Moose;
  with ('AWS::API::ResultParser');
  has IncludeGlobalServiceEvents => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str');
  has S3BucketName => (is => 'ro', isa => 'Str');
  has S3KeyPrefix => (is => 'ro', isa => 'Str');
  has SnsTopicName => (is => 'ro', isa => 'Str');
}



package Aws::CloudTrail::CreateTrail {
  use Moose;
  has IncludeGlobalServiceEvents => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str');
  has S3BucketName => (is => 'ro', isa => 'Str');
  has S3KeyPrefix => (is => 'ro', isa => 'Str');
  has SnsTopicName => (is => 'ro', isa => 'Str');
  has trail => (is => 'ro', isa => 'Aws::CloudTrail::Trail');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTrail');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudTrail::CreateTrailResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::CloudTrail::DeleteTrail {
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTrail');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudTrail::DeleteTrailResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::CloudTrail::DescribeTrails {
  use Moose;
  has trailNameList => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTrails');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudTrail::DescribeTrailsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::CloudTrail::GetTrailStatus {
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTrailStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudTrail::GetTrailStatusResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::CloudTrail::StartLogging {
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartLogging');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudTrail::StartLoggingResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::CloudTrail::StopLogging {
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopLogging');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudTrail::StopLoggingResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::CloudTrail::UpdateTrail {
  use Moose;
  has IncludeGlobalServiceEvents => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str');
  has S3BucketName => (is => 'ro', isa => 'Str');
  has S3KeyPrefix => (is => 'ro', isa => 'Str');
  has SnsTopicName => (is => 'ro', isa => 'Str');
  has trail => (is => 'ro', isa => 'Aws::CloudTrail::Trail');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTrail');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudTrail::UpdateTrailResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}

package Aws::CloudTrail::CreateTrailResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has IncludeGlobalServiceEvents => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str');
  has S3BucketName => (is => 'ro', isa => 'Str');
  has S3KeyPrefix => (is => 'ro', isa => 'Str');
  has SnsTopicName => (is => 'ro', isa => 'Str');
  has trail => (is => 'ro', isa => 'Aws::CloudTrail::Trail');

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
  has LatestDeliveryAttemptSucceeded => (is => 'ro', isa => 'Str');
  has LatestDeliveryAttemptTime => (is => 'ro', isa => 'Str');
  has LatestDeliveryError => (is => 'ro', isa => 'Str');
  has LatestDeliveryTime => (is => 'ro', isa => 'Str');
  has LatestNotificationAttemptSucceeded => (is => 'ro', isa => 'Str');
  has LatestNotificationAttemptTime => (is => 'ro', isa => 'Str');
  has LatestNotificationError => (is => 'ro', isa => 'Str');
  has LatestNotificationTime => (is => 'ro', isa => 'Str');
  has StartLoggingTime => (is => 'ro', isa => 'Str');
  has StopLoggingTime => (is => 'ro', isa => 'Str');
  has TimeLoggingStarted => (is => 'ro', isa => 'Str');
  has TimeLoggingStopped => (is => 'ro', isa => 'Str');

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
  has trail => (is => 'ro', isa => 'Aws::CloudTrail::Trail');

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
