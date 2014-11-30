
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

### main pod documentation begin ###

=head1 NAME

Paws::SNS - Perl Interface to AWS Amazon Simple Notification Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('...')->new;
  my $res = $obj->Method(Arg1 => $val1, Arg2 => $val2);

=head1 DESCRIPTION



Amazon Simple Notification Service

Amazon Simple Notification Service (Amazon SNS) is a web service that
enables you to build distributed web-enabled applications. Applications
can use Amazon SNS to easily push real-time notification messages to
interested subscribers over multiple delivery protocols. For more
information about this product see http://aws.amazon.com/sns. For
detailed information about Amazon SNS features and their associated API
calls, see the Amazon SNS Developer Guide.

We also provide SDKs that enable you to access Amazon SNS from your
preferred programming language. The SDKs contain functionality that
automatically takes care of tasks such as: cryptographically signing
your service requests, retrying requests, and handling error responses.
For a list of available SDKs, go to Tools for Amazon Web Services.










=head1 METHODS

=head2 AddPermission()

  Arguments described in: L<Paws::SNS::AddPermission>

  Returns: nothing

  

Adds a statement to a topic's access control policy, granting access
for the specified AWS accounts to the specified actions.











=head2 ConfirmSubscription()

  Arguments described in: L<Paws::SNS::ConfirmSubscription>

  Returns: L<Paws::SNS::ConfirmSubscriptionResponse>

  

Verifies an endpoint owner's intent to receive messages by validating
the token sent to the endpoint by an earlier C<Subscribe> action. If
the token is valid, the action creates a new subscription and returns
its Amazon Resource Name (ARN). This call requires an AWS signature
only when the C<AuthenticateOnUnsubscribe> flag is set to "true".











=head2 CreatePlatformApplication()

  Arguments described in: L<Paws::SNS::CreatePlatformApplication>

  Returns: L<Paws::SNS::CreatePlatformApplicationResponse>

  

Creates a platform application object for one of the supported push
notification services, such as APNS and GCM, to which devices and
mobile apps may register. You must specify PlatformPrincipal and
PlatformCredential attributes when using the
C<CreatePlatformApplication> action. The PlatformPrincipal is received
from the notification service. For APNS/APNS_SANDBOX, PlatformPrincipal
is "SSL certificate". For GCM, PlatformPrincipal is not applicable. For
ADM, PlatformPrincipal is "client id". The PlatformCredential is also
received from the notification service. For APNS/APNS_SANDBOX,
PlatformCredential is "private key". For GCM, PlatformCredential is
"API key". For ADM, PlatformCredential is "client secret". The
PlatformApplicationArn that is returned when using
C<CreatePlatformApplication> is then used as an attribute for the
C<CreatePlatformEndpoint> action. For more information, see Using
Amazon SNS Mobile Push Notifications.











=head2 CreatePlatformEndpoint()

  Arguments described in: L<Paws::SNS::CreatePlatformEndpoint>

  Returns: L<Paws::SNS::CreateEndpointResponse>

  

Creates an endpoint for a device and mobile app on one of the supported
push notification services, such as GCM and APNS.
C<CreatePlatformEndpoint> requires the PlatformApplicationArn that is
returned from C<CreatePlatformApplication>. The EndpointArn that is
returned when using C<CreatePlatformEndpoint> can then be used by the
C<Publish> action to send a message to a mobile app or by the
C<Subscribe> action for subscription to a topic. The
C<CreatePlatformEndpoint> action is idempotent, so if the requester
already owns an endpoint with the same device token and attributes,
that endpoint's ARN is returned without creating a new endpoint. For
more information, see Using Amazon SNS Mobile Push Notifications.

When using C<CreatePlatformEndpoint> with Baidu, two attributes must be
provided: ChannelId and UserId. The token field must also contain the
ChannelId. For more information, see Creating an Amazon SNS Endpoint
for Baidu.











=head2 CreateTopic()

  Arguments described in: L<Paws::SNS::CreateTopic>

  Returns: L<Paws::SNS::CreateTopicResponse>

  

Creates a topic to which notifications can be published. Users can
create at most 3000 topics. For more information, see
http://aws.amazon.com/sns. This action is idempotent, so if the
requester already owns a topic with the specified name, that topic's
ARN is returned without creating a new topic.











=head2 DeleteEndpoint()

  Arguments described in: L<Paws::SNS::DeleteEndpoint>

  Returns: nothing

  

Deletes the endpoint from Amazon SNS. This action is idempotent. For
more information, see Using Amazon SNS Mobile Push Notifications.











=head2 DeletePlatformApplication()

  Arguments described in: L<Paws::SNS::DeletePlatformApplication>

  Returns: nothing

  

Deletes a platform application object for one of the supported push
notification services, such as APNS and GCM. For more information, see
Using Amazon SNS Mobile Push Notifications.











=head2 DeleteTopic()

  Arguments described in: L<Paws::SNS::DeleteTopic>

  Returns: nothing

  

Deletes a topic and all its subscriptions. Deleting a topic might
prevent some messages previously sent to the topic from being delivered
to subscribers. This action is idempotent, so deleting a topic that
does not exist does not result in an error.











=head2 GetEndpointAttributes()

  Arguments described in: L<Paws::SNS::GetEndpointAttributes>

  Returns: L<Paws::SNS::GetEndpointAttributesResponse>

  

Retrieves the endpoint attributes for a device on one of the supported
push notification services, such as GCM and APNS. For more information,
see Using Amazon SNS Mobile Push Notifications.











=head2 GetPlatformApplicationAttributes()

  Arguments described in: L<Paws::SNS::GetPlatformApplicationAttributes>

  Returns: L<Paws::SNS::GetPlatformApplicationAttributesResponse>

  

Retrieves the attributes of the platform application object for the
supported push notification services, such as APNS and GCM. For more
information, see Using Amazon SNS Mobile Push Notifications.











=head2 GetSubscriptionAttributes()

  Arguments described in: L<Paws::SNS::GetSubscriptionAttributes>

  Returns: L<Paws::SNS::GetSubscriptionAttributesResponse>

  

Returns all of the properties of a subscription.











=head2 GetTopicAttributes()

  Arguments described in: L<Paws::SNS::GetTopicAttributes>

  Returns: L<Paws::SNS::GetTopicAttributesResponse>

  

Returns all of the properties of a topic. Topic properties returned
might differ based on the authorization of the user.











=head2 ListEndpointsByPlatformApplication()

  Arguments described in: L<Paws::SNS::ListEndpointsByPlatformApplication>

  Returns: L<Paws::SNS::ListEndpointsByPlatformApplicationResponse>

  

Lists the endpoints and endpoint attributes for devices in a supported
push notification service, such as GCM and APNS. The results for
C<ListEndpointsByPlatformApplication> are paginated and return a
limited list of endpoints, up to 100. If additional records are
available after the first page results, then a NextToken string will be
returned. To receive the next page, you call
C<ListEndpointsByPlatformApplication> again using the NextToken string
received from the previous call. When there are no more records to
return, NextToken will be null. For more information, see Using Amazon
SNS Mobile Push Notifications.











=head2 ListPlatformApplications()

  Arguments described in: L<Paws::SNS::ListPlatformApplications>

  Returns: L<Paws::SNS::ListPlatformApplicationsResponse>

  

Lists the platform application objects for the supported push
notification services, such as APNS and GCM. The results for
C<ListPlatformApplications> are paginated and return a limited list of
applications, up to 100. If additional records are available after the
first page results, then a NextToken string will be returned. To
receive the next page, you call C<ListPlatformApplications> using the
NextToken string received from the previous call. When there are no
more records to return, NextToken will be null. For more information,
see Using Amazon SNS Mobile Push Notifications.











=head2 ListSubscriptions()

  Arguments described in: L<Paws::SNS::ListSubscriptions>

  Returns: L<Paws::SNS::ListSubscriptionsResponse>

  

Returns a list of the requester's subscriptions. Each call returns a
limited list of subscriptions, up to 100. If there are more
subscriptions, a C<NextToken> is also returned. Use the C<NextToken>
parameter in a new C<ListSubscriptions> call to get further results.











=head2 ListSubscriptionsByTopic()

  Arguments described in: L<Paws::SNS::ListSubscriptionsByTopic>

  Returns: L<Paws::SNS::ListSubscriptionsByTopicResponse>

  

Returns a list of the subscriptions to a specific topic. Each call
returns a limited list of subscriptions, up to 100. If there are more
subscriptions, a C<NextToken> is also returned. Use the C<NextToken>
parameter in a new C<ListSubscriptionsByTopic> call to get further
results.











=head2 ListTopics()

  Arguments described in: L<Paws::SNS::ListTopics>

  Returns: L<Paws::SNS::ListTopicsResponse>

  

Returns a list of the requester's topics. Each call returns a limited
list of topics, up to 100. If there are more topics, a C<NextToken> is
also returned. Use the C<NextToken> parameter in a new C<ListTopics>
call to get further results.











=head2 Publish()

  Arguments described in: L<Paws::SNS::Publish>

  Returns: L<Paws::SNS::PublishResponse>

  

Sends a message to all of a topic's subscribed endpoints. When a
C<messageId> is returned, the message has been saved and Amazon SNS
will attempt to deliver it to the topic's subscribers shortly. The
format of the outgoing message to each subscribed endpoint depends on
the notification protocol selected.

To use the C<Publish> action for sending a message to a mobile
endpoint, such as an app on a Kindle device or mobile phone, you must
specify the EndpointArn. The EndpointArn is returned when making a call
with the C<CreatePlatformEndpoint> action. The second example below
shows a request and response for publishing to a mobile endpoint.











=head2 RemovePermission()

  Arguments described in: L<Paws::SNS::RemovePermission>

  Returns: nothing

  

Removes a statement from a topic's access control policy.











=head2 SetEndpointAttributes()

  Arguments described in: L<Paws::SNS::SetEndpointAttributes>

  Returns: nothing

  

Sets the attributes for an endpoint for a device on one of the
supported push notification services, such as GCM and APNS. For more
information, see Using Amazon SNS Mobile Push Notifications.











=head2 SetPlatformApplicationAttributes()

  Arguments described in: L<Paws::SNS::SetPlatformApplicationAttributes>

  Returns: nothing

  

Sets the attributes of the platform application object for the
supported push notification services, such as APNS and GCM. For more
information, see Using Amazon SNS Mobile Push Notifications.











=head2 SetSubscriptionAttributes()

  Arguments described in: L<Paws::SNS::SetSubscriptionAttributes>

  Returns: nothing

  

Allows a subscription owner to set an attribute of the topic to a new
value.











=head2 SetTopicAttributes()

  Arguments described in: L<Paws::SNS::SetTopicAttributes>

  Returns: nothing

  

Allows a topic owner to set an attribute of the topic to a new value.











=head2 Subscribe()

  Arguments described in: L<Paws::SNS::Subscribe>

  Returns: L<Paws::SNS::SubscribeResponse>

  

Prepares to subscribe an endpoint by sending the endpoint a
confirmation message. To actually create a subscription, the endpoint
owner must call the C<ConfirmSubscription> action with the token from
the confirmation message. Confirmation tokens are valid for three days.











=head2 Unsubscribe()

  Arguments described in: L<Paws::SNS::Unsubscribe>

  Returns: nothing

  

Deletes a subscription. If the subscription requires authentication for
deletion, only the owner of the subscription or the topic's owner can
unsubscribe, and an AWS signature is required. If the C<Unsubscribe>
call does not require authentication and the requester is not the
subscription owner, a final cancellation message is delivered to the
endpoint, so that the endpoint owner can easily resubscribe to the
topic if the C<Unsubscribe> request was unintended.











=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

