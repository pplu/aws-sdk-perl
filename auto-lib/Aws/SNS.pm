
use AWS::API;


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