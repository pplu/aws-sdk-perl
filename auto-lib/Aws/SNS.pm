
use AWS::API;


package Aws::SNS::Endpoint {
  use Moose;
  with ('AWS::API::ResultParser');
  has Attributes => (is => 'ro', isa => 'Aws::SNS::MapStringToString');
  has EndpointArn => (is => 'ro', isa => 'Str');
}

package Aws::SNS::MapStringToString {
  use Moose;
  with 'AWS::API::StrToStrMapParser';
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}

package Aws::SNS::MessageAttributeMap {
  use Moose;
  with 'AWS::API::StrToStrMapParser';
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}

package Aws::SNS::PlatformApplication {
  use Moose;
  with ('AWS::API::ResultParser');
  has Attributes => (is => 'ro', isa => 'Aws::SNS::MapStringToString');
  has PlatformApplicationArn => (is => 'ro', isa => 'Str');
}

package Aws::SNS::Subscription {
  use Moose;
  with ('AWS::API::ResultParser');
  has Endpoint => (is => 'ro', isa => 'Str');
  has Owner => (is => 'ro', isa => 'Str');
  has Protocol => (is => 'ro', isa => 'Str');
  has SubscriptionArn => (is => 'ro', isa => 'Str');
  has TopicArn => (is => 'ro', isa => 'Str');
}

package Aws::SNS::SubscriptionAttributesMap {
  use Moose;
  with 'AWS::API::StrToStrMapParser';
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}

package Aws::SNS::Topic {
  use Moose;
  with ('AWS::API::ResultParser');
  has TopicArn => (is => 'ro', isa => 'Str');
}

package Aws::SNS::TopicAttributesMap {
  use Moose;
  with 'AWS::API::StrToStrMapParser';
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}



package Aws::SNS::AddPermission {
  use Moose;
  has ActionName => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has AWSAccountId => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has Label => (is => 'ro', isa => 'Str', required => 1);
  has TopicArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AddPermission');
  has _returns => (isa => 'Aws::SNS::AddPermissionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AddPermissionResult');  
}
package Aws::SNS::ConfirmSubscription {
  use Moose;
  has AuthenticateOnUnsubscribe => (is => 'ro', isa => 'Str');
  has Token => (is => 'ro', isa => 'Str', required => 1);
  has TopicArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ConfirmSubscription');
  has _returns => (isa => 'Aws::SNS::ConfirmSubscriptionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ConfirmSubscriptionResult');  
}
package Aws::SNS::CreatePlatformApplication {
  use Moose;
  has Attributes => (is => 'ro', isa => 'Aws::SNS::MapStringToString', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Platform => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePlatformApplication');
  has _returns => (isa => 'Aws::SNS::CreatePlatformApplicationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreatePlatformApplicationResult');  
}
package Aws::SNS::CreatePlatformEndpoint {
  use Moose;
  has Attributes => (is => 'ro', isa => 'Aws::SNS::MapStringToString');
  has CustomUserData => (is => 'ro', isa => 'Str');
  has PlatformApplicationArn => (is => 'ro', isa => 'Str', required => 1);
  has Token => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePlatformEndpoint');
  has _returns => (isa => 'Aws::SNS::CreatePlatformEndpointResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreatePlatformEndpointResult');  
}
package Aws::SNS::CreateTopic {
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTopic');
  has _returns => (isa => 'Aws::SNS::CreateTopicResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateTopicResult');  
}
package Aws::SNS::DeleteEndpoint {
  use Moose;
  has EndpointArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteEndpoint');
  has _returns => (isa => 'Aws::SNS::DeleteEndpointResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteEndpointResult');  
}
package Aws::SNS::DeletePlatformApplication {
  use Moose;
  has PlatformApplicationArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePlatformApplication');
  has _returns => (isa => 'Aws::SNS::DeletePlatformApplicationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeletePlatformApplicationResult');  
}
package Aws::SNS::DeleteTopic {
  use Moose;
  has TopicArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTopic');
  has _returns => (isa => 'Aws::SNS::DeleteTopicResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteTopicResult');  
}
package Aws::SNS::GetEndpointAttributes {
  use Moose;
  has EndpointArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetEndpointAttributes');
  has _returns => (isa => 'Aws::SNS::GetEndpointAttributesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetEndpointAttributesResult');  
}
package Aws::SNS::GetPlatformApplicationAttributes {
  use Moose;
  has PlatformApplicationArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetPlatformApplicationAttributes');
  has _returns => (isa => 'Aws::SNS::GetPlatformApplicationAttributesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetPlatformApplicationAttributesResult');  
}
package Aws::SNS::GetSubscriptionAttributes {
  use Moose;
  has SubscriptionArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetSubscriptionAttributes');
  has _returns => (isa => 'Aws::SNS::GetSubscriptionAttributesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetSubscriptionAttributesResult');  
}
package Aws::SNS::GetTopicAttributes {
  use Moose;
  has TopicArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetTopicAttributes');
  has _returns => (isa => 'Aws::SNS::GetTopicAttributesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetTopicAttributesResult');  
}
package Aws::SNS::ListEndpointsByPlatformApplication {
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PlatformApplicationArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListEndpointsByPlatformApplication');
  has _returns => (isa => 'Aws::SNS::ListEndpointsByPlatformApplicationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListEndpointsByPlatformApplicationResult');  
}
package Aws::SNS::ListPlatformApplications {
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListPlatformApplications');
  has _returns => (isa => 'Aws::SNS::ListPlatformApplicationsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListPlatformApplicationsResult');  
}
package Aws::SNS::ListSubscriptions {
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListSubscriptions');
  has _returns => (isa => 'Aws::SNS::ListSubscriptionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListSubscriptionsResult');  
}
package Aws::SNS::ListSubscriptionsByTopic {
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has TopicArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListSubscriptionsByTopic');
  has _returns => (isa => 'Aws::SNS::ListSubscriptionsByTopicResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListSubscriptionsByTopicResult');  
}
package Aws::SNS::ListTopics {
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListTopics');
  has _returns => (isa => 'Aws::SNS::ListTopicsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListTopicsResult');  
}
package Aws::SNS::Publish {
  use Moose;
  has Message => (is => 'ro', isa => 'Str', required => 1);
  has MessageAttributes => (is => 'ro', isa => 'Aws::SNS::MessageAttributeMap', traits => ['NameInRequest'], request_name => 'Value' );
  has MessageStructure => (is => 'ro', isa => 'Str');
  has Subject => (is => 'ro', isa => 'Str');
  has TargetArn => (is => 'ro', isa => 'Str');
  has TopicArn => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'Publish');
  has _returns => (isa => 'Aws::SNS::PublishResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PublishResult');  
}
package Aws::SNS::RemovePermission {
  use Moose;
  has Label => (is => 'ro', isa => 'Str', required => 1);
  has TopicArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RemovePermission');
  has _returns => (isa => 'Aws::SNS::RemovePermissionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RemovePermissionResult');  
}
package Aws::SNS::SetEndpointAttributes {
  use Moose;
  has Attributes => (is => 'ro', isa => 'Aws::SNS::MapStringToString', required => 1);
  has EndpointArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetEndpointAttributes');
  has _returns => (isa => 'Aws::SNS::SetEndpointAttributesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetEndpointAttributesResult');  
}
package Aws::SNS::SetPlatformApplicationAttributes {
  use Moose;
  has Attributes => (is => 'ro', isa => 'Aws::SNS::MapStringToString', required => 1);
  has PlatformApplicationArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetPlatformApplicationAttributes');
  has _returns => (isa => 'Aws::SNS::SetPlatformApplicationAttributesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetPlatformApplicationAttributesResult');  
}
package Aws::SNS::SetSubscriptionAttributes {
  use Moose;
  has AttributeName => (is => 'ro', isa => 'Str', required => 1);
  has AttributeValue => (is => 'ro', isa => 'Str');
  has SubscriptionArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetSubscriptionAttributes');
  has _returns => (isa => 'Aws::SNS::SetSubscriptionAttributesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetSubscriptionAttributesResult');  
}
package Aws::SNS::SetTopicAttributes {
  use Moose;
  has AttributeName => (is => 'ro', isa => 'Str', required => 1);
  has AttributeValue => (is => 'ro', isa => 'Str');
  has TopicArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetTopicAttributes');
  has _returns => (isa => 'Aws::SNS::SetTopicAttributesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetTopicAttributesResult');  
}
package Aws::SNS::Subscribe {
  use Moose;
  has Endpoint => (is => 'ro', isa => 'Str');
  has Protocol => (is => 'ro', isa => 'Str', required => 1);
  has TopicArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'Subscribe');
  has _returns => (isa => 'Aws::SNS::SubscribeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SubscribeResult');  
}
package Aws::SNS::Unsubscribe {
  use Moose;
  has SubscriptionArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'Unsubscribe');
  has _returns => (isa => 'Aws::SNS::UnsubscribeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UnsubscribeResult');  
}

package Aws::SNS::ConfirmSubscriptionResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has SubscriptionArn => (is => 'ro', isa => 'Str');

}
package Aws::SNS::CreatePlatformApplicationResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has PlatformApplicationArn => (is => 'ro', isa => 'Str');

}
package Aws::SNS::CreatePlatformEndpointResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has EndpointArn => (is => 'ro', isa => 'Str');

}
package Aws::SNS::CreateTopicResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has TopicArn => (is => 'ro', isa => 'Str');

}
package Aws::SNS::GetEndpointAttributesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Attributes => (is => 'ro', isa => 'Aws::SNS::MapStringToString');

}
package Aws::SNS::GetPlatformApplicationAttributesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Attributes => (is => 'ro', isa => 'Aws::SNS::MapStringToString');

}
package Aws::SNS::GetSubscriptionAttributesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Attributes => (is => 'ro', isa => 'Aws::SNS::SubscriptionAttributesMap');

}
package Aws::SNS::GetTopicAttributesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Attributes => (is => 'ro', isa => 'Aws::SNS::TopicAttributesMap');

}
package Aws::SNS::ListEndpointsByPlatformApplicationResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Endpoints => (is => 'ro', isa => 'ArrayRef[Aws::SNS::Endpoint]');
  has NextToken => (is => 'ro', isa => 'Str');

}
package Aws::SNS::ListPlatformApplicationsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has NextToken => (is => 'ro', isa => 'Str');
  has PlatformApplications => (is => 'ro', isa => 'ArrayRef[Aws::SNS::PlatformApplication]');

}
package Aws::SNS::ListSubscriptionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has NextToken => (is => 'ro', isa => 'Str');
  has Subscriptions => (is => 'ro', isa => 'ArrayRef[Aws::SNS::Subscription]');

}
package Aws::SNS::ListSubscriptionsByTopicResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has NextToken => (is => 'ro', isa => 'Str');
  has Subscriptions => (is => 'ro', isa => 'ArrayRef[Aws::SNS::Subscription]');

}
package Aws::SNS::ListTopicsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has NextToken => (is => 'ro', isa => 'Str');
  has Topics => (is => 'ro', isa => 'ArrayRef[Aws::SNS::Topic]');

}
package Aws::SNS::PublishResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has MessageId => (is => 'ro', isa => 'Str');

}
package Aws::SNS::SubscribeResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has SubscriptionArn => (is => 'ro', isa => 'Str');

}

package Aws::SNS {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'sns');
  has version => (is => 'ro', isa => 'Str', default => '2010-03-31');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '0');

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::QueryCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::XMLResponse');

  
  sub AddPermission {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::SNS::AddPermission', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub ConfirmSubscription {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::SNS::ConfirmSubscription', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SNS::ConfirmSubscriptionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub CreatePlatformApplication {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::SNS::CreatePlatformApplication', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SNS::CreatePlatformApplicationResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub CreatePlatformEndpoint {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::SNS::CreatePlatformEndpoint', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SNS::CreatePlatformEndpointResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub CreateTopic {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::SNS::CreateTopic', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SNS::CreateTopicResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DeleteEndpoint {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::SNS::DeleteEndpoint', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeletePlatformApplication {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::SNS::DeletePlatformApplication', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteTopic {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::SNS::DeleteTopic', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub GetEndpointAttributes {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::SNS::GetEndpointAttributes', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SNS::GetEndpointAttributesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub GetPlatformApplicationAttributes {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::SNS::GetPlatformApplicationAttributes', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SNS::GetPlatformApplicationAttributesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub GetSubscriptionAttributes {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::SNS::GetSubscriptionAttributes', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SNS::GetSubscriptionAttributesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub GetTopicAttributes {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::SNS::GetTopicAttributes', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SNS::GetTopicAttributesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ListEndpointsByPlatformApplication {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::SNS::ListEndpointsByPlatformApplication', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SNS::ListEndpointsByPlatformApplicationResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ListPlatformApplications {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::SNS::ListPlatformApplications', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SNS::ListPlatformApplicationsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ListSubscriptions {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::SNS::ListSubscriptions', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SNS::ListSubscriptionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ListSubscriptionsByTopic {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::SNS::ListSubscriptionsByTopic', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SNS::ListSubscriptionsByTopicResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ListTopics {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::SNS::ListTopics', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SNS::ListTopicsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub Publish {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::SNS::Publish', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SNS::PublishResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub RemovePermission {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::SNS::RemovePermission', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub SetEndpointAttributes {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::SNS::SetEndpointAttributes', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub SetPlatformApplicationAttributes {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::SNS::SetPlatformApplicationAttributes', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub SetSubscriptionAttributes {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::SNS::SetSubscriptionAttributes', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub SetTopicAttributes {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::SNS::SetTopicAttributes', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub Subscribe {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::SNS::Subscribe', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SNS::SubscribeResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub Unsubscribe {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::SNS::Unsubscribe', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
}
1;
