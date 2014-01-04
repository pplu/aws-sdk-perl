
use MooseX::Declare;
use AWS::API;


class Aws::SNS::Endpoint with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Attributes => (is => 'ro', isa => 'Aws::SNS::MapStringToString');
  has EndpointArn => (is => 'ro', isa => 'Str');
}

class Aws::SNS::MapStringToString with AWS::API::StrToStrMapParser {
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}

class Aws::SNS::PlatformApplication with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Attributes => (is => 'ro', isa => 'Aws::SNS::MapStringToString');
  has PlatformApplicationArn => (is => 'ro', isa => 'Str');
}

class Aws::SNS::Subscription with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Endpoint => (is => 'ro', isa => 'Str');
  has Owner => (is => 'ro', isa => 'Str');
  has Protocol => (is => 'ro', isa => 'Str');
  has SubscriptionArn => (is => 'ro', isa => 'Str');
  has TopicArn => (is => 'ro', isa => 'Str');
}

class Aws::SNS::SubscriptionAttributesMap with AWS::API::StrToStrMapParser {
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}

class Aws::SNS::Topic with (AWS::API::ResultParser, AWS::API::ToParams) {
  has TopicArn => (is => 'ro', isa => 'Str');
}

class Aws::SNS::TopicAttributesMap with AWS::API::StrToStrMapParser {
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}



class Aws::SNS::AddPermission {
  has ActionName => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has AWSAccountId => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has Label => (is => 'ro', isa => 'Str', required => 1);
  has TopicArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AddPermission');
  has _returns => (isa => 'Aws::SNS::AddPermissionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AddPermissionResult');  
}
class Aws::SNS::ConfirmSubscription {
  has AuthenticateOnUnsubscribe => (is => 'ro', isa => 'Str');
  has Token => (is => 'ro', isa => 'Str', required => 1);
  has TopicArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ConfirmSubscription');
  has _returns => (isa => 'Aws::SNS::ConfirmSubscriptionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ConfirmSubscriptionResult');  
}
class Aws::SNS::CreatePlatformApplication {
  has Attributes => (is => 'ro', isa => 'Aws::SNS::MapStringToString', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Platform => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePlatformApplication');
  has _returns => (isa => 'Aws::SNS::CreatePlatformApplicationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreatePlatformApplicationResult');  
}
class Aws::SNS::CreatePlatformEndpoint {
  has Attributes => (is => 'ro', isa => 'Aws::SNS::MapStringToString');
  has CustomUserData => (is => 'ro', isa => 'Str');
  has PlatformApplicationArn => (is => 'ro', isa => 'Str', required => 1);
  has Token => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePlatformEndpoint');
  has _returns => (isa => 'Aws::SNS::CreatePlatformEndpointResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreatePlatformEndpointResult');  
}
class Aws::SNS::CreateTopic {
  has Name => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTopic');
  has _returns => (isa => 'Aws::SNS::CreateTopicResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateTopicResult');  
}
class Aws::SNS::DeleteEndpoint {
  has EndpointArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteEndpoint');
  has _returns => (isa => 'Aws::SNS::DeleteEndpointResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteEndpointResult');  
}
class Aws::SNS::DeletePlatformApplication {
  has PlatformApplicationArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePlatformApplication');
  has _returns => (isa => 'Aws::SNS::DeletePlatformApplicationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeletePlatformApplicationResult');  
}
class Aws::SNS::DeleteTopic {
  has TopicArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTopic');
  has _returns => (isa => 'Aws::SNS::DeleteTopicResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteTopicResult');  
}
class Aws::SNS::GetEndpointAttributes {
  has EndpointArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetEndpointAttributes');
  has _returns => (isa => 'Aws::SNS::GetEndpointAttributesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetEndpointAttributesResult');  
}
class Aws::SNS::GetPlatformApplicationAttributes {
  has PlatformApplicationArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetPlatformApplicationAttributes');
  has _returns => (isa => 'Aws::SNS::GetPlatformApplicationAttributesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetPlatformApplicationAttributesResult');  
}
class Aws::SNS::GetSubscriptionAttributes {
  has SubscriptionArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetSubscriptionAttributes');
  has _returns => (isa => 'Aws::SNS::GetSubscriptionAttributesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetSubscriptionAttributesResult');  
}
class Aws::SNS::GetTopicAttributes {
  has TopicArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetTopicAttributes');
  has _returns => (isa => 'Aws::SNS::GetTopicAttributesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetTopicAttributesResult');  
}
class Aws::SNS::ListEndpointsByPlatformApplication {
  has NextToken => (is => 'ro', isa => 'Str');
  has PlatformApplicationArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListEndpointsByPlatformApplication');
  has _returns => (isa => 'Aws::SNS::ListEndpointsByPlatformApplicationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListEndpointsByPlatformApplicationResult');  
}
class Aws::SNS::ListPlatformApplications {
  has NextToken => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListPlatformApplications');
  has _returns => (isa => 'Aws::SNS::ListPlatformApplicationsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListPlatformApplicationsResult');  
}
class Aws::SNS::ListSubscriptions {
  has NextToken => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListSubscriptions');
  has _returns => (isa => 'Aws::SNS::ListSubscriptionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListSubscriptionsResult');  
}
class Aws::SNS::ListSubscriptionsByTopic {
  has NextToken => (is => 'ro', isa => 'Str');
  has TopicArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListSubscriptionsByTopic');
  has _returns => (isa => 'Aws::SNS::ListSubscriptionsByTopicResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListSubscriptionsByTopicResult');  
}
class Aws::SNS::ListTopics {
  has NextToken => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListTopics');
  has _returns => (isa => 'Aws::SNS::ListTopicsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListTopicsResult');  
}
class Aws::SNS::Publish {
  has Message => (is => 'ro', isa => 'Str', required => 1);
  has MessageStructure => (is => 'ro', isa => 'Str');
  has Subject => (is => 'ro', isa => 'Str');
  has TargetArn => (is => 'ro', isa => 'Str');
  has TopicArn => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'Publish');
  has _returns => (isa => 'Aws::SNS::PublishResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PublishResult');  
}
class Aws::SNS::RemovePermission {
  has Label => (is => 'ro', isa => 'Str', required => 1);
  has TopicArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RemovePermission');
  has _returns => (isa => 'Aws::SNS::RemovePermissionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RemovePermissionResult');  
}
class Aws::SNS::SetEndpointAttributes {
  has Attributes => (is => 'ro', isa => 'Aws::SNS::MapStringToString', required => 1);
  has EndpointArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetEndpointAttributes');
  has _returns => (isa => 'Aws::SNS::SetEndpointAttributesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetEndpointAttributesResult');  
}
class Aws::SNS::SetPlatformApplicationAttributes {
  has Attributes => (is => 'ro', isa => 'Aws::SNS::MapStringToString', required => 1);
  has PlatformApplicationArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetPlatformApplicationAttributes');
  has _returns => (isa => 'Aws::SNS::SetPlatformApplicationAttributesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetPlatformApplicationAttributesResult');  
}
class Aws::SNS::SetSubscriptionAttributes {
  has AttributeName => (is => 'ro', isa => 'Str', required => 1);
  has AttributeValue => (is => 'ro', isa => 'Str');
  has SubscriptionArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetSubscriptionAttributes');
  has _returns => (isa => 'Aws::SNS::SetSubscriptionAttributesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetSubscriptionAttributesResult');  
}
class Aws::SNS::SetTopicAttributes {
  has AttributeName => (is => 'ro', isa => 'Str', required => 1);
  has AttributeValue => (is => 'ro', isa => 'Str');
  has TopicArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetTopicAttributes');
  has _returns => (isa => 'Aws::SNS::SetTopicAttributesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetTopicAttributesResult');  
}
class Aws::SNS::Subscribe {
  has Endpoint => (is => 'ro', isa => 'Str');
  has Protocol => (is => 'ro', isa => 'Str', required => 1);
  has TopicArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'Subscribe');
  has _returns => (isa => 'Aws::SNS::SubscribeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SubscribeResult');  
}
class Aws::SNS::Unsubscribe {
  has SubscriptionArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'Unsubscribe');
  has _returns => (isa => 'Aws::SNS::UnsubscribeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UnsubscribeResult');  
}

class Aws::SNS::ConfirmSubscriptionResult with AWS::API::ResultParser {
  has SubscriptionArn => (is => 'ro', isa => 'Str');

}
class Aws::SNS::CreatePlatformApplicationResult with AWS::API::ResultParser {
  has PlatformApplicationArn => (is => 'ro', isa => 'Str');

}
class Aws::SNS::CreatePlatformEndpointResult with AWS::API::ResultParser {
  has EndpointArn => (is => 'ro', isa => 'Str');

}
class Aws::SNS::CreateTopicResult with AWS::API::ResultParser {
  has TopicArn => (is => 'ro', isa => 'Str');

}
class Aws::SNS::GetEndpointAttributesResult with AWS::API::ResultParser {
  has Attributes => (is => 'ro', isa => 'Aws::SNS::MapStringToString');

}
class Aws::SNS::GetPlatformApplicationAttributesResult with AWS::API::ResultParser {
  has Attributes => (is => 'ro', isa => 'Aws::SNS::MapStringToString');

}
class Aws::SNS::GetSubscriptionAttributesResult with AWS::API::ResultParser {
  has Attributes => (is => 'ro', isa => 'Aws::SNS::SubscriptionAttributesMap');

}
class Aws::SNS::GetTopicAttributesResult with AWS::API::ResultParser {
  has Attributes => (is => 'ro', isa => 'Aws::SNS::TopicAttributesMap');

}
class Aws::SNS::ListEndpointsByPlatformApplicationResult with AWS::API::ResultParser {
  has Endpoints => (is => 'ro', isa => 'ArrayRef[Aws::SNS::Endpoint]');
  has NextToken => (is => 'ro', isa => 'Str');

}
class Aws::SNS::ListPlatformApplicationsResult with AWS::API::ResultParser {
  has NextToken => (is => 'ro', isa => 'Str');
  has PlatformApplications => (is => 'ro', isa => 'ArrayRef[Aws::SNS::PlatformApplication]');

}
class Aws::SNS::ListSubscriptionsResult with AWS::API::ResultParser {
  has NextToken => (is => 'ro', isa => 'Str');
  has Subscriptions => (is => 'ro', isa => 'ArrayRef[Aws::SNS::Subscription]');

}
class Aws::SNS::ListSubscriptionsByTopicResult with AWS::API::ResultParser {
  has NextToken => (is => 'ro', isa => 'Str');
  has Subscriptions => (is => 'ro', isa => 'ArrayRef[Aws::SNS::Subscription]');

}
class Aws::SNS::ListTopicsResult with AWS::API::ResultParser {
  has NextToken => (is => 'ro', isa => 'Str');
  has Topics => (is => 'ro', isa => 'ArrayRef[Aws::SNS::Topic]');

}
class Aws::SNS::PublishResult with AWS::API::ResultParser {
  has MessageId => (is => 'ro', isa => 'Str');

}
class Aws::SNS::SubscribeResult with AWS::API::ResultParser {
  has SubscriptionArn => (is => 'ro', isa => 'Str');

}

class Aws::SNS with (Net::AWS::Caller, AWS::API::RegionalEndpointCaller, Net::AWS::V4Signature, Net::AWS::QueryCaller, Net::AWS::XMLResponse) {
  has service => (is => 'ro', isa => 'Str', default => 'sns');
  has version => (is => 'ro', isa => 'Str', default => '2010-03-31');
  
  method AddPermission (%args) {
    my $call = Aws::SNS::AddPermission->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method ConfirmSubscription (%args) {
    my $call = Aws::SNS::ConfirmSubscription->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SNS::ConfirmSubscriptionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreatePlatformApplication (%args) {
    my $call = Aws::SNS::CreatePlatformApplication->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SNS::CreatePlatformApplicationResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreatePlatformEndpoint (%args) {
    my $call = Aws::SNS::CreatePlatformEndpoint->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SNS::CreatePlatformEndpointResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateTopic (%args) {
    my $call = Aws::SNS::CreateTopic->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SNS::CreateTopicResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DeleteEndpoint (%args) {
    my $call = Aws::SNS::DeleteEndpoint->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeletePlatformApplication (%args) {
    my $call = Aws::SNS::DeletePlatformApplication->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteTopic (%args) {
    my $call = Aws::SNS::DeleteTopic->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method GetEndpointAttributes (%args) {
    my $call = Aws::SNS::GetEndpointAttributes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SNS::GetEndpointAttributesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method GetPlatformApplicationAttributes (%args) {
    my $call = Aws::SNS::GetPlatformApplicationAttributes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SNS::GetPlatformApplicationAttributesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method GetSubscriptionAttributes (%args) {
    my $call = Aws::SNS::GetSubscriptionAttributes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SNS::GetSubscriptionAttributesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method GetTopicAttributes (%args) {
    my $call = Aws::SNS::GetTopicAttributes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SNS::GetTopicAttributesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListEndpointsByPlatformApplication (%args) {
    my $call = Aws::SNS::ListEndpointsByPlatformApplication->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SNS::ListEndpointsByPlatformApplicationResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListPlatformApplications (%args) {
    my $call = Aws::SNS::ListPlatformApplications->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SNS::ListPlatformApplicationsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListSubscriptions (%args) {
    my $call = Aws::SNS::ListSubscriptions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SNS::ListSubscriptionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListSubscriptionsByTopic (%args) {
    my $call = Aws::SNS::ListSubscriptionsByTopic->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SNS::ListSubscriptionsByTopicResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListTopics (%args) {
    my $call = Aws::SNS::ListTopics->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SNS::ListTopicsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method Publish (%args) {
    my $call = Aws::SNS::Publish->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SNS::PublishResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method RemovePermission (%args) {
    my $call = Aws::SNS::RemovePermission->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method SetEndpointAttributes (%args) {
    my $call = Aws::SNS::SetEndpointAttributes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method SetPlatformApplicationAttributes (%args) {
    my $call = Aws::SNS::SetPlatformApplicationAttributes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method SetSubscriptionAttributes (%args) {
    my $call = Aws::SNS::SetSubscriptionAttributes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method SetTopicAttributes (%args) {
    my $call = Aws::SNS::SetTopicAttributes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method Subscribe (%args) {
    my $call = Aws::SNS::Subscribe->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SNS::SubscribeResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method Unsubscribe (%args) {
    my $call = Aws::SNS::Unsubscribe->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
}
