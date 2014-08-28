
use AWS::API;


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
