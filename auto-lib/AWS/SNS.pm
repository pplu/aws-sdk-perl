
use MooseX::Declare;
use AWS::API;


class AWS::SNS::Endpoint with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Attributes => (is => 'ro', isa => 'AWS::SNS::MapStringToString');
  has EndpointArn => (is => 'ro', isa => 'Str');
}

class AWS::SNS::MapStringToString with AWS::API::MapParser {
class AWS::SNS::PlatformApplication with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Attributes => (is => 'ro', isa => 'AWS::SNS::MapStringToString');
  has PlatformApplicationArn => (is => 'ro', isa => 'Str');
}

class AWS::SNS::Subscription with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Endpoint => (is => 'ro', isa => 'Str');
  has Owner => (is => 'ro', isa => 'Str');
  has Protocol => (is => 'ro', isa => 'Str');
  has SubscriptionArn => (is => 'ro', isa => 'Str');
  has TopicArn => (is => 'ro', isa => 'Str');
}

class AWS::SNS::SubscriptionAttributesMap with AWS::API::MapParser {
class AWS::SNS::Topic with (AWS::API::ResultParser, AWS::API::ToParams) {
  has TopicArn => (is => 'ro', isa => 'Str');
}

class AWS::SNS::TopicAttributesMap with AWS::API::MapParser {


class AWS::SNS::AddPermission {
  has ActionName => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has AWSAccountId => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has Label => (is => 'ro', isa => 'Str', required => 1);
  has TopicArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AddPermission');
  has _returns => (isa => 'AWS::SNS::AddPermissionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AddPermissionResult');  
}
class AWS::SNS::ConfirmSubscription {
  has AuthenticateOnUnsubscribe => (is => 'ro', isa => 'Str');
  has Token => (is => 'ro', isa => 'Str', required => 1);
  has TopicArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ConfirmSubscription');
  has _returns => (isa => 'AWS::SNS::ConfirmSubscriptionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ConfirmSubscriptionResult');  
}
class AWS::SNS::CreatePlatformApplication {
  has Attributes => (is => 'ro', isa => 'AWS::SNS::MapStringToString', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Platform => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePlatformApplication');
  has _returns => (isa => 'AWS::SNS::CreatePlatformApplicationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreatePlatformApplicationResult');  
}
class AWS::SNS::CreatePlatformEndpoint {
  has Attributes => (is => 'ro', isa => 'AWS::SNS::MapStringToString');
  has CustomUserData => (is => 'ro', isa => 'Str');
  has PlatformApplicationArn => (is => 'ro', isa => 'Str', required => 1);
  has Token => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePlatformEndpoint');
  has _returns => (isa => 'AWS::SNS::CreatePlatformEndpointResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreatePlatformEndpointResult');  
}
class AWS::SNS::CreateTopic {
  has Name => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTopic');
  has _returns => (isa => 'AWS::SNS::CreateTopicResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateTopicResult');  
}
class AWS::SNS::DeleteEndpoint {
  has EndpointArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteEndpoint');
  has _returns => (isa => 'AWS::SNS::DeleteEndpointResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteEndpointResult');  
}
class AWS::SNS::DeletePlatformApplication {
  has PlatformApplicationArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePlatformApplication');
  has _returns => (isa => 'AWS::SNS::DeletePlatformApplicationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeletePlatformApplicationResult');  
}
class AWS::SNS::DeleteTopic {
  has TopicArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTopic');
  has _returns => (isa => 'AWS::SNS::DeleteTopicResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteTopicResult');  
}
class AWS::SNS::GetEndpointAttributes {
  has EndpointArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetEndpointAttributes');
  has _returns => (isa => 'AWS::SNS::GetEndpointAttributesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetEndpointAttributesResult');  
}
class AWS::SNS::GetPlatformApplicationAttributes {
  has PlatformApplicationArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetPlatformApplicationAttributes');
  has _returns => (isa => 'AWS::SNS::GetPlatformApplicationAttributesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetPlatformApplicationAttributesResult');  
}
class AWS::SNS::GetSubscriptionAttributes {
  has SubscriptionArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetSubscriptionAttributes');
  has _returns => (isa => 'AWS::SNS::GetSubscriptionAttributesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetSubscriptionAttributesResult');  
}
class AWS::SNS::GetTopicAttributes {
  has TopicArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetTopicAttributes');
  has _returns => (isa => 'AWS::SNS::GetTopicAttributesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetTopicAttributesResult');  
}
class AWS::SNS::ListEndpointsByPlatformApplication {
  has NextToken => (is => 'ro', isa => 'Str');
  has PlatformApplicationArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListEndpointsByPlatformApplication');
  has _returns => (isa => 'AWS::SNS::ListEndpointsByPlatformApplicationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListEndpointsByPlatformApplicationResult');  
}
class AWS::SNS::ListPlatformApplications {
  has NextToken => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListPlatformApplications');
  has _returns => (isa => 'AWS::SNS::ListPlatformApplicationsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListPlatformApplicationsResult');  
}
class AWS::SNS::ListSubscriptions {
  has NextToken => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListSubscriptions');
  has _returns => (isa => 'AWS::SNS::ListSubscriptionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListSubscriptionsResult');  
}
class AWS::SNS::ListSubscriptionsByTopic {
  has NextToken => (is => 'ro', isa => 'Str');
  has TopicArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListSubscriptionsByTopic');
  has _returns => (isa => 'AWS::SNS::ListSubscriptionsByTopicResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListSubscriptionsByTopicResult');  
}
class AWS::SNS::ListTopics {
  has NextToken => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListTopics');
  has _returns => (isa => 'AWS::SNS::ListTopicsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListTopicsResult');  
}
class AWS::SNS::Publish {
  has Message => (is => 'ro', isa => 'Str', required => 1);
  has MessageStructure => (is => 'ro', isa => 'Str');
  has Subject => (is => 'ro', isa => 'Str');
  has TargetArn => (is => 'ro', isa => 'Str');
  has TopicArn => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'Publish');
  has _returns => (isa => 'AWS::SNS::PublishResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PublishResult');  
}
class AWS::SNS::RemovePermission {
  has Label => (is => 'ro', isa => 'Str', required => 1);
  has TopicArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RemovePermission');
  has _returns => (isa => 'AWS::SNS::RemovePermissionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RemovePermissionResult');  
}
class AWS::SNS::SetEndpointAttributes {
  has Attributes => (is => 'ro', isa => 'AWS::SNS::MapStringToString', required => 1);
  has EndpointArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetEndpointAttributes');
  has _returns => (isa => 'AWS::SNS::SetEndpointAttributesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetEndpointAttributesResult');  
}
class AWS::SNS::SetPlatformApplicationAttributes {
  has Attributes => (is => 'ro', isa => 'AWS::SNS::MapStringToString', required => 1);
  has PlatformApplicationArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetPlatformApplicationAttributes');
  has _returns => (isa => 'AWS::SNS::SetPlatformApplicationAttributesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetPlatformApplicationAttributesResult');  
}
class AWS::SNS::SetSubscriptionAttributes {
  has AttributeName => (is => 'ro', isa => 'Str', required => 1);
  has AttributeValue => (is => 'ro', isa => 'Str');
  has SubscriptionArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetSubscriptionAttributes');
  has _returns => (isa => 'AWS::SNS::SetSubscriptionAttributesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetSubscriptionAttributesResult');  
}
class AWS::SNS::SetTopicAttributes {
  has AttributeName => (is => 'ro', isa => 'Str', required => 1);
  has AttributeValue => (is => 'ro', isa => 'Str');
  has TopicArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetTopicAttributes');
  has _returns => (isa => 'AWS::SNS::SetTopicAttributesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetTopicAttributesResult');  
}
class AWS::SNS::Subscribe {
  has Endpoint => (is => 'ro', isa => 'Str');
  has Protocol => (is => 'ro', isa => 'Str', required => 1);
  has TopicArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'Subscribe');
  has _returns => (isa => 'AWS::SNS::SubscribeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SubscribeResult');  
}
class AWS::SNS::Unsubscribe {
  has SubscriptionArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'Unsubscribe');
  has _returns => (isa => 'AWS::SNS::UnsubscribeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UnsubscribeResult');  
}

class AWS::SNS::ConfirmSubscriptionResult with AWS::API::ResultParser {
  has SubscriptionArn => (is => 'ro', isa => 'Str');

}
class AWS::SNS::CreatePlatformApplicationResult with AWS::API::ResultParser {
  has PlatformApplicationArn => (is => 'ro', isa => 'Str');

}
class AWS::SNS::CreatePlatformEndpointResult with AWS::API::ResultParser {
  has EndpointArn => (is => 'ro', isa => 'Str');

}
class AWS::SNS::CreateTopicResult with AWS::API::ResultParser {
  has TopicArn => (is => 'ro', isa => 'Str');

}
class AWS::SNS::GetEndpointAttributesResult with AWS::API::ResultParser {
  has Attributes => (is => 'ro', isa => 'AWS::SNS::MapStringToString');

}
class AWS::SNS::GetPlatformApplicationAttributesResult with AWS::API::ResultParser {
  has Attributes => (is => 'ro', isa => 'AWS::SNS::MapStringToString');

}
class AWS::SNS::GetSubscriptionAttributesResult with AWS::API::ResultParser {
  has Attributes => (is => 'ro', isa => 'AWS::SNS::SubscriptionAttributesMap');

}
class AWS::SNS::GetTopicAttributesResult with AWS::API::ResultParser {
  has Attributes => (is => 'ro', isa => 'AWS::SNS::TopicAttributesMap');

}
class AWS::SNS::ListEndpointsByPlatformApplicationResult with AWS::API::ResultParser {
  has Endpoints => (is => 'ro', isa => 'ArrayRef[AWS::SNS::Endpoint]');
  has NextToken => (is => 'ro', isa => 'Str');

}
class AWS::SNS::ListPlatformApplicationsResult with AWS::API::ResultParser {
  has NextToken => (is => 'ro', isa => 'Str');
  has PlatformApplications => (is => 'ro', isa => 'ArrayRef[AWS::SNS::PlatformApplication]');

}
class AWS::SNS::ListSubscriptionsResult with AWS::API::ResultParser {
  has NextToken => (is => 'ro', isa => 'Str');
  has Subscriptions => (is => 'ro', isa => 'ArrayRef[AWS::SNS::Subscription]');

}
class AWS::SNS::ListSubscriptionsByTopicResult with AWS::API::ResultParser {
  has NextToken => (is => 'ro', isa => 'Str');
  has Subscriptions => (is => 'ro', isa => 'ArrayRef[AWS::SNS::Subscription]');

}
class AWS::SNS::ListTopicsResult with AWS::API::ResultParser {
  has NextToken => (is => 'ro', isa => 'Str');
  has Topics => (is => 'ro', isa => 'ArrayRef[AWS::SNS::Topic]');

}
class AWS::SNS::PublishResult with AWS::API::ResultParser {
  has MessageId => (is => 'ro', isa => 'Str');

}
class AWS::SNS::SubscribeResult with AWS::API::ResultParser {
  has SubscriptionArn => (is => 'ro', isa => 'Str');

}

class AWS::SNS with (Net::AWS::Caller, AWS::API::RegionalEndpointCaller, Net::AWS::V4Signature, Net::AWS::QueryCaller) {
  has service => (is => 'ro', isa => 'Str', default => 'sns');
  has version => (is => 'ro', isa => 'Str', default => '2010-03-31');
  
  method AddPermission (%args) {
    my $call = AWS::SNS::AddPermission->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method ConfirmSubscription (%args) {
    my $call = AWS::SNS::ConfirmSubscription->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SNS::ConfirmSubscriptionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreatePlatformApplication (%args) {
    my $call = AWS::SNS::CreatePlatformApplication->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SNS::CreatePlatformApplicationResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreatePlatformEndpoint (%args) {
    my $call = AWS::SNS::CreatePlatformEndpoint->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SNS::CreatePlatformEndpointResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateTopic (%args) {
    my $call = AWS::SNS::CreateTopic->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SNS::CreateTopicResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DeleteEndpoint (%args) {
    my $call = AWS::SNS::DeleteEndpoint->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeletePlatformApplication (%args) {
    my $call = AWS::SNS::DeletePlatformApplication->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteTopic (%args) {
    my $call = AWS::SNS::DeleteTopic->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method GetEndpointAttributes (%args) {
    my $call = AWS::SNS::GetEndpointAttributes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SNS::GetEndpointAttributesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method GetPlatformApplicationAttributes (%args) {
    my $call = AWS::SNS::GetPlatformApplicationAttributes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SNS::GetPlatformApplicationAttributesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method GetSubscriptionAttributes (%args) {
    my $call = AWS::SNS::GetSubscriptionAttributes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SNS::GetSubscriptionAttributesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method GetTopicAttributes (%args) {
    my $call = AWS::SNS::GetTopicAttributes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SNS::GetTopicAttributesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListEndpointsByPlatformApplication (%args) {
    my $call = AWS::SNS::ListEndpointsByPlatformApplication->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SNS::ListEndpointsByPlatformApplicationResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListPlatformApplications (%args) {
    my $call = AWS::SNS::ListPlatformApplications->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SNS::ListPlatformApplicationsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListSubscriptions (%args) {
    my $call = AWS::SNS::ListSubscriptions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SNS::ListSubscriptionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListSubscriptionsByTopic (%args) {
    my $call = AWS::SNS::ListSubscriptionsByTopic->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SNS::ListSubscriptionsByTopicResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListTopics (%args) {
    my $call = AWS::SNS::ListTopics->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SNS::ListTopicsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method Publish (%args) {
    my $call = AWS::SNS::Publish->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SNS::PublishResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method RemovePermission (%args) {
    my $call = AWS::SNS::RemovePermission->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method SetEndpointAttributes (%args) {
    my $call = AWS::SNS::SetEndpointAttributes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method SetPlatformApplicationAttributes (%args) {
    my $call = AWS::SNS::SetPlatformApplicationAttributes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method SetSubscriptionAttributes (%args) {
    my $call = AWS::SNS::SetSubscriptionAttributes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method SetTopicAttributes (%args) {
    my $call = AWS::SNS::SetTopicAttributes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method Subscribe (%args) {
    my $call = AWS::SNS::Subscribe->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SNS::SubscribeResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method Unsubscribe (%args) {
    my $call = AWS::SNS::Unsubscribe->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
}
