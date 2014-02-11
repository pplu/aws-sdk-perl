
use AWS::API;


package Aws::CloudTrail::Trail {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has IncludeGlobalServiceEvents => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has S3BucketName => (is => 'ro', isa => 'Str');
  has S3KeyPrefix => (is => 'ro', isa => 'Str');
  has SnsTopicName => (is => 'ro', isa => 'Str');
}



package Aws::CloudTrail::CreateTrail {
  use Moose;
  has IncludeGlobalServiceEvents => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has S3BucketName => (is => 'ro', isa => 'Str');
  has S3KeyPrefix => (is => 'ro', isa => 'Str');
  has SnsTopicName => (is => 'ro', isa => 'Str');
  has trail => (is => 'ro', isa => 'Aws::CloudTrail::Trail');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTrail');
  has _returns => (isa => 'Aws::CloudTrail::CreateTrailResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateTrailResult');  
}
package Aws::CloudTrail::DeleteTrail {
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTrail');
  has _returns => (isa => 'Aws::CloudTrail::DeleteTrailResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteTrailResult');  
}
package Aws::CloudTrail::DescribeTrails {
  use Moose;
  has trailNameList => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTrails');
  has _returns => (isa => 'Aws::CloudTrail::DescribeTrailsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeTrailsResult');  
}
package Aws::CloudTrail::GetTrailStatus {
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetTrailStatus');
  has _returns => (isa => 'Aws::CloudTrail::GetTrailStatusResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetTrailStatusResult');  
}
package Aws::CloudTrail::StartLogging {
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'StartLogging');
  has _returns => (isa => 'Aws::CloudTrail::StartLoggingResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'StartLoggingResult');  
}
package Aws::CloudTrail::StopLogging {
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'StopLogging');
  has _returns => (isa => 'Aws::CloudTrail::StopLoggingResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'StopLoggingResult');  
}
package Aws::CloudTrail::UpdateTrail {
  use Moose;
  has IncludeGlobalServiceEvents => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has S3BucketName => (is => 'ro', isa => 'Str');
  has S3KeyPrefix => (is => 'ro', isa => 'Str');
  has SnsTopicName => (is => 'ro', isa => 'Str');
  has trail => (is => 'ro', isa => 'Aws::CloudTrail::Trail');

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTrail');
  has _returns => (isa => 'Aws::CloudTrail::UpdateTrailResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateTrailResult');  
}

package Aws::CloudTrail::CreateTrailResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has IncludeGlobalServiceEvents => (is => 'ro', isa => 'Str');
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
  has IsLogging => (is => 'ro', isa => 'Str');
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
  has IncludeGlobalServiceEvents => (is => 'ro', isa => 'Str');
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
  with ('Net::AWS::Caller', 'AWS::API::RegionalEndpointCaller', 'Net::AWS::V4Signature', 'Net::AWS::JsonCaller', 'Net::AWS::JsonResponse');
  
  sub CreateTrail {
    my $self = shift;
    my $call = new_with_coercions('Aws::CloudTrail::CreateTrail', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudTrail::CreateTrailResult->from_result($result);return $o_result;
  }
  sub DeleteTrail {
    my $self = shift;
    my $call = new_with_coercions('Aws::CloudTrail::DeleteTrail', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudTrail::DeleteTrailResult->from_result($result);return $o_result;
  }
  sub DescribeTrails {
    my $self = shift;
    my $call = new_with_coercions('Aws::CloudTrail::DescribeTrails', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudTrail::DescribeTrailsResult->from_result($result);return $o_result;
  }
  sub GetTrailStatus {
    my $self = shift;
    my $call = new_with_coercions('Aws::CloudTrail::GetTrailStatus', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudTrail::GetTrailStatusResult->from_result($result);return $o_result;
  }
  sub StartLogging {
    my $self = shift;
    my $call = new_with_coercions('Aws::CloudTrail::StartLogging', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudTrail::StartLoggingResult->from_result($result);return $o_result;
  }
  sub StopLogging {
    my $self = shift;
    my $call = new_with_coercions('Aws::CloudTrail::StopLogging', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudTrail::StopLoggingResult->from_result($result);return $o_result;
  }
  sub UpdateTrail {
    my $self = shift;
    my $call = new_with_coercions('Aws::CloudTrail::UpdateTrail', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudTrail::UpdateTrailResult->from_result($result);return $o_result;
  }
}
