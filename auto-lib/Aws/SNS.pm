
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
  with 'AWS::API::StrToObjMapParser';
  has Map => (is => 'ro', isa => 'HashRef[Aws::SNS::MessageAttributeValue]');
}

package Aws::SNS::MessageAttributeValue {
  use Moose;
  with ('AWS::API::ResultParser');
  has BinaryValue => (is => 'ro', isa => 'Str');
  has DataType => (is => 'ro', isa => 'Str', required => 1);
  has StringValue => (is => 'ro', isa => 'Str');
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

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddPermission');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::SNS::ConfirmSubscription {
  use Moose;
  has AuthenticateOnUnsubscribe => (is => 'ro', isa => 'Str');
  has Token => (is => 'ro', isa => 'Str', required => 1);
  has TopicArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ConfirmSubscription');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SNS::ConfirmSubscriptionResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ConfirmSubscriptionResult');
}
package Aws::SNS::CreatePlatformApplication {
  use Moose;
  has Attributes => (is => 'ro', isa => 'Aws::SNS::MapStringToString', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Platform => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePlatformApplication');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SNS::CreatePlatformApplicationResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreatePlatformApplicationResult');
}
package Aws::SNS::CreatePlatformEndpoint {
  use Moose;
  has Attributes => (is => 'ro', isa => 'Aws::SNS::MapStringToString');
  has CustomUserData => (is => 'ro', isa => 'Str');
  has PlatformApplicationArn => (is => 'ro', isa => 'Str', required => 1);
  has Token => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePlatformEndpoint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SNS::CreatePlatformEndpointResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreatePlatformEndpointResult');
}
package Aws::SNS::CreateTopic {
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTopic');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SNS::CreateTopicResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateTopicResult');
}
package Aws::SNS::DeleteEndpoint {
  use Moose;
  has EndpointArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteEndpoint');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::SNS::DeletePlatformApplication {
  use Moose;
  has PlatformApplicationArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePlatformApplication');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::SNS::DeleteTopic {
  use Moose;
  has TopicArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTopic');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::SNS::GetEndpointAttributes {
  use Moose;
  has EndpointArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetEndpointAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SNS::GetEndpointAttributesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetEndpointAttributesResult');
}
package Aws::SNS::GetPlatformApplicationAttributes {
  use Moose;
  has PlatformApplicationArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPlatformApplicationAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SNS::GetPlatformApplicationAttributesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetPlatformApplicationAttributesResult');
}
package Aws::SNS::GetSubscriptionAttributes {
  use Moose;
  has SubscriptionArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSubscriptionAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SNS::GetSubscriptionAttributesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetSubscriptionAttributesResult');
}
package Aws::SNS::GetTopicAttributes {
  use Moose;
  has TopicArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTopicAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SNS::GetTopicAttributesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetTopicAttributesResult');
}
package Aws::SNS::ListEndpointsByPlatformApplication {
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PlatformApplicationArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEndpointsByPlatformApplication');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SNS::ListEndpointsByPlatformApplicationResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListEndpointsByPlatformApplicationResult');
}
package Aws::SNS::ListPlatformApplications {
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPlatformApplications');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SNS::ListPlatformApplicationsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListPlatformApplicationsResult');
}
package Aws::SNS::ListSubscriptions {
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSubscriptions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SNS::ListSubscriptionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListSubscriptionsResult');
}
package Aws::SNS::ListSubscriptionsByTopic {
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has TopicArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSubscriptionsByTopic');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SNS::ListSubscriptionsByTopicResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListSubscriptionsByTopicResult');
}
package Aws::SNS::ListTopics {
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTopics');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SNS::ListTopicsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListTopicsResult');
}
package Aws::SNS::Publish {
  use Moose;
  has Message => (is => 'ro', isa => 'Str', required => 1);
  has MessageAttributes => (is => 'ro', isa => 'Aws::SNS::MessageAttributeMap', traits => ['NameInRequest'], request_name => 'Value' );
  has MessageStructure => (is => 'ro', isa => 'Str');
  has Subject => (is => 'ro', isa => 'Str');
  has TargetArn => (is => 'ro', isa => 'Str');
  has TopicArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Publish');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SNS::PublishResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'PublishResult');
}
package Aws::SNS::RemovePermission {
  use Moose;
  has Label => (is => 'ro', isa => 'Str', required => 1);
  has TopicArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemovePermission');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::SNS::SetEndpointAttributes {
  use Moose;
  has Attributes => (is => 'ro', isa => 'Aws::SNS::MapStringToString', required => 1);
  has EndpointArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetEndpointAttributes');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::SNS::SetPlatformApplicationAttributes {
  use Moose;
  has Attributes => (is => 'ro', isa => 'Aws::SNS::MapStringToString', required => 1);
  has PlatformApplicationArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetPlatformApplicationAttributes');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::SNS::SetSubscriptionAttributes {
  use Moose;
  has AttributeName => (is => 'ro', isa => 'Str', required => 1);
  has AttributeValue => (is => 'ro', isa => 'Str');
  has SubscriptionArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetSubscriptionAttributes');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::SNS::SetTopicAttributes {
  use Moose;
  has AttributeName => (is => 'ro', isa => 'Str', required => 1);
  has AttributeValue => (is => 'ro', isa => 'Str');
  has TopicArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetTopicAttributes');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::SNS::Subscribe {
  use Moose;
  has Endpoint => (is => 'ro', isa => 'Str');
  has Protocol => (is => 'ro', isa => 'Str', required => 1);
  has TopicArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Subscribe');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SNS::SubscribeResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SubscribeResult');
}
package Aws::SNS::Unsubscribe {
  use Moose;
  has SubscriptionArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Unsubscribe');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
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
    return $self->do_call('Aws::SNS::AddPermission', @_);
  }
  sub ConfirmSubscription {
    my $self = shift;
    return $self->do_call('Aws::SNS::ConfirmSubscription', @_);
  }
  sub CreatePlatformApplication {
    my $self = shift;
    return $self->do_call('Aws::SNS::CreatePlatformApplication', @_);
  }
  sub CreatePlatformEndpoint {
    my $self = shift;
    return $self->do_call('Aws::SNS::CreatePlatformEndpoint', @_);
  }
  sub CreateTopic {
    my $self = shift;
    return $self->do_call('Aws::SNS::CreateTopic', @_);
  }
  sub DeleteEndpoint {
    my $self = shift;
    return $self->do_call('Aws::SNS::DeleteEndpoint', @_);
  }
  sub DeletePlatformApplication {
    my $self = shift;
    return $self->do_call('Aws::SNS::DeletePlatformApplication', @_);
  }
  sub DeleteTopic {
    my $self = shift;
    return $self->do_call('Aws::SNS::DeleteTopic', @_);
  }
  sub GetEndpointAttributes {
    my $self = shift;
    return $self->do_call('Aws::SNS::GetEndpointAttributes', @_);
  }
  sub GetPlatformApplicationAttributes {
    my $self = shift;
    return $self->do_call('Aws::SNS::GetPlatformApplicationAttributes', @_);
  }
  sub GetSubscriptionAttributes {
    my $self = shift;
    return $self->do_call('Aws::SNS::GetSubscriptionAttributes', @_);
  }
  sub GetTopicAttributes {
    my $self = shift;
    return $self->do_call('Aws::SNS::GetTopicAttributes', @_);
  }
  sub ListEndpointsByPlatformApplication {
    my $self = shift;
    return $self->do_call('Aws::SNS::ListEndpointsByPlatformApplication', @_);
  }
  sub ListPlatformApplications {
    my $self = shift;
    return $self->do_call('Aws::SNS::ListPlatformApplications', @_);
  }
  sub ListSubscriptions {
    my $self = shift;
    return $self->do_call('Aws::SNS::ListSubscriptions', @_);
  }
  sub ListSubscriptionsByTopic {
    my $self = shift;
    return $self->do_call('Aws::SNS::ListSubscriptionsByTopic', @_);
  }
  sub ListTopics {
    my $self = shift;
    return $self->do_call('Aws::SNS::ListTopics', @_);
  }
  sub Publish {
    my $self = shift;
    return $self->do_call('Aws::SNS::Publish', @_);
  }
  sub RemovePermission {
    my $self = shift;
    return $self->do_call('Aws::SNS::RemovePermission', @_);
  }
  sub SetEndpointAttributes {
    my $self = shift;
    return $self->do_call('Aws::SNS::SetEndpointAttributes', @_);
  }
  sub SetPlatformApplicationAttributes {
    my $self = shift;
    return $self->do_call('Aws::SNS::SetPlatformApplicationAttributes', @_);
  }
  sub SetSubscriptionAttributes {
    my $self = shift;
    return $self->do_call('Aws::SNS::SetSubscriptionAttributes', @_);
  }
  sub SetTopicAttributes {
    my $self = shift;
    return $self->do_call('Aws::SNS::SetTopicAttributes', @_);
  }
  sub Subscribe {
    my $self = shift;
    return $self->do_call('Aws::SNS::Subscribe', @_);
  }
  sub Unsubscribe {
    my $self = shift;
    return $self->do_call('Aws::SNS::Unsubscribe', @_);
  }
}
1;
