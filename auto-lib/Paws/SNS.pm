
use Paws::API;


package Paws::SNS {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'sns');
  has version => (is => 'ro', isa => 'Str', default => '2010-03-31');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '0');

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'Paws::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::QueryCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::XMLResponse');

  
  sub AddPermission {
    my $self = shift;
    return $self->do_call('Paws::SNS::AddPermission', @_);
  }
  sub ConfirmSubscription {
    my $self = shift;
    return $self->do_call('Paws::SNS::ConfirmSubscription', @_);
  }
  sub CreatePlatformApplication {
    my $self = shift;
    return $self->do_call('Paws::SNS::CreatePlatformApplication', @_);
  }
  sub CreatePlatformEndpoint {
    my $self = shift;
    return $self->do_call('Paws::SNS::CreatePlatformEndpoint', @_);
  }
  sub CreateTopic {
    my $self = shift;
    return $self->do_call('Paws::SNS::CreateTopic', @_);
  }
  sub DeleteEndpoint {
    my $self = shift;
    return $self->do_call('Paws::SNS::DeleteEndpoint', @_);
  }
  sub DeletePlatformApplication {
    my $self = shift;
    return $self->do_call('Paws::SNS::DeletePlatformApplication', @_);
  }
  sub DeleteTopic {
    my $self = shift;
    return $self->do_call('Paws::SNS::DeleteTopic', @_);
  }
  sub GetEndpointAttributes {
    my $self = shift;
    return $self->do_call('Paws::SNS::GetEndpointAttributes', @_);
  }
  sub GetPlatformApplicationAttributes {
    my $self = shift;
    return $self->do_call('Paws::SNS::GetPlatformApplicationAttributes', @_);
  }
  sub GetSubscriptionAttributes {
    my $self = shift;
    return $self->do_call('Paws::SNS::GetSubscriptionAttributes', @_);
  }
  sub GetTopicAttributes {
    my $self = shift;
    return $self->do_call('Paws::SNS::GetTopicAttributes', @_);
  }
  sub ListEndpointsByPlatformApplication {
    my $self = shift;
    return $self->do_call('Paws::SNS::ListEndpointsByPlatformApplication', @_);
  }
  sub ListPlatformApplications {
    my $self = shift;
    return $self->do_call('Paws::SNS::ListPlatformApplications', @_);
  }
  sub ListSubscriptions {
    my $self = shift;
    return $self->do_call('Paws::SNS::ListSubscriptions', @_);
  }
  sub ListSubscriptionsByTopic {
    my $self = shift;
    return $self->do_call('Paws::SNS::ListSubscriptionsByTopic', @_);
  }
  sub ListTopics {
    my $self = shift;
    return $self->do_call('Paws::SNS::ListTopics', @_);
  }
  sub Publish {
    my $self = shift;
    return $self->do_call('Paws::SNS::Publish', @_);
  }
  sub RemovePermission {
    my $self = shift;
    return $self->do_call('Paws::SNS::RemovePermission', @_);
  }
  sub SetEndpointAttributes {
    my $self = shift;
    return $self->do_call('Paws::SNS::SetEndpointAttributes', @_);
  }
  sub SetPlatformApplicationAttributes {
    my $self = shift;
    return $self->do_call('Paws::SNS::SetPlatformApplicationAttributes', @_);
  }
  sub SetSubscriptionAttributes {
    my $self = shift;
    return $self->do_call('Paws::SNS::SetSubscriptionAttributes', @_);
  }
  sub SetTopicAttributes {
    my $self = shift;
    return $self->do_call('Paws::SNS::SetTopicAttributes', @_);
  }
  sub Subscribe {
    my $self = shift;
    return $self->do_call('Paws::SNS::Subscribe', @_);
  }
  sub Unsubscribe {
    my $self = shift;
    return $self->do_call('Paws::SNS::Unsubscribe', @_);
  }
}
1;