
use MooseX::Declare;
use AWS::API;


class AWS::CloudTrail::Trail with (AWS::API::ResultParser, AWS::API::ToParams) {
  has IncludeGlobalServiceEvents => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has S3BucketName => (is => 'ro', isa => 'Str');
  has S3KeyPrefix => (is => 'ro', isa => 'Str');
  has SnsTopicName => (is => 'ro', isa => 'Str');
}



class AWS::CloudTrail::CreateTrail {
  has IncludeGlobalServiceEvents => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has S3BucketName => (is => 'ro', isa => 'Str');
  has S3KeyPrefix => (is => 'ro', isa => 'Str');
  has SnsTopicName => (is => 'ro', isa => 'Str');
  has trail => (is => 'ro', isa => 'AWS::CloudTrail::Trail');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTrail');
  has _returns => (isa => 'AWS::CloudTrail::CreateTrailResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateTrailResult');  
}
class AWS::CloudTrail::DeleteTrail {
  has Name => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTrail');
  has _returns => (isa => 'AWS::CloudTrail::DeleteTrailResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteTrailResult');  
}
class AWS::CloudTrail::DescribeTrails {
  has trailNameList => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTrails');
  has _returns => (isa => 'AWS::CloudTrail::DescribeTrailsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeTrailsResult');  
}
class AWS::CloudTrail::GetTrailStatus {
  has Name => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetTrailStatus');
  has _returns => (isa => 'AWS::CloudTrail::GetTrailStatusResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetTrailStatusResult');  
}
class AWS::CloudTrail::StartLogging {
  has Name => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'StartLogging');
  has _returns => (isa => 'AWS::CloudTrail::StartLoggingResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'StartLoggingResult');  
}
class AWS::CloudTrail::StopLogging {
  has Name => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'StopLogging');
  has _returns => (isa => 'AWS::CloudTrail::StopLoggingResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'StopLoggingResult');  
}
class AWS::CloudTrail::UpdateTrail {
  has IncludeGlobalServiceEvents => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has S3BucketName => (is => 'ro', isa => 'Str');
  has S3KeyPrefix => (is => 'ro', isa => 'Str');
  has SnsTopicName => (is => 'ro', isa => 'Str');
  has trail => (is => 'ro', isa => 'AWS::CloudTrail::Trail');

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTrail');
  has _returns => (isa => 'AWS::CloudTrail::UpdateTrailResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateTrailResult');  
}

class AWS::CloudTrail::CreateTrailResult with AWS::API::ResultParser {
  has IncludeGlobalServiceEvents => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has S3BucketName => (is => 'ro', isa => 'Str');
  has S3KeyPrefix => (is => 'ro', isa => 'Str');
  has SnsTopicName => (is => 'ro', isa => 'Str');
  has trail => (is => 'ro', isa => 'AWS::CloudTrail::Trail');

}
class AWS::CloudTrail::DeleteTrailResult with AWS::API::ResultParser {

}
class AWS::CloudTrail::DescribeTrailsResult with AWS::API::ResultParser {
  has trailList => (is => 'ro', isa => 'ArrayRef[AWS::CloudTrail::Trail]');

}
class AWS::CloudTrail::GetTrailStatusResult with AWS::API::ResultParser {
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
class AWS::CloudTrail::StartLoggingResult with AWS::API::ResultParser {

}
class AWS::CloudTrail::StopLoggingResult with AWS::API::ResultParser {

}
class AWS::CloudTrail::UpdateTrailResult with AWS::API::ResultParser {
  has IncludeGlobalServiceEvents => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has S3BucketName => (is => 'ro', isa => 'Str');
  has S3KeyPrefix => (is => 'ro', isa => 'Str');
  has SnsTopicName => (is => 'ro', isa => 'Str');
  has trail => (is => 'ro', isa => 'AWS::CloudTrail::Trail');

}

class AWS::CloudTrail with (Net::AWS::Caller, AWS::API::RegionalEndpointCaller, Net::AWS::V4Signature, Net::AWS::JsonCaller, Net::AWS::XMLResponse) {
  has service => (is => 'ro', isa => 'Str', default => 'cloudtrail');
  has version => (is => 'ro', isa => 'Str', default => '2013-11-01');
  
  method CreateTrail (%args) {
    my $call = AWS::CloudTrail::CreateTrail->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::CloudTrail::CreateTrailResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DeleteTrail (%args) {
    my $call = AWS::CloudTrail::DeleteTrail->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::CloudTrail::DeleteTrailResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeTrails (%args) {
    my $call = AWS::CloudTrail::DescribeTrails->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::CloudTrail::DescribeTrailsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method GetTrailStatus (%args) {
    my $call = AWS::CloudTrail::GetTrailStatus->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::CloudTrail::GetTrailStatusResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method StartLogging (%args) {
    my $call = AWS::CloudTrail::StartLogging->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::CloudTrail::StartLoggingResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method StopLogging (%args) {
    my $call = AWS::CloudTrail::StopLogging->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::CloudTrail::StopLoggingResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method UpdateTrail (%args) {
    my $call = AWS::CloudTrail::UpdateTrail->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::CloudTrail::UpdateTrailResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
}
