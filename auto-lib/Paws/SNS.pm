package Paws::SNS;
  use Moose;
  sub service { 'sns' }
  sub signing_name { 'sns' }
  sub version { '2010-03-31' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::QueryCaller';

  
  sub AddPermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SNS::AddPermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CheckIfPhoneNumberIsOptedOut {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SNS::CheckIfPhoneNumberIsOptedOut', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ConfirmSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SNS::ConfirmSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePlatformApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SNS::CreatePlatformApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePlatformEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SNS::CreatePlatformEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTopic {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SNS::CreateTopic', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SNS::DeleteEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePlatformApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SNS::DeletePlatformApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTopic {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SNS::DeleteTopic', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEndpointAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SNS::GetEndpointAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPlatformApplicationAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SNS::GetPlatformApplicationAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSMSAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SNS::GetSMSAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSubscriptionAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SNS::GetSubscriptionAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTopicAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SNS::GetTopicAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEndpointsByPlatformApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SNS::ListEndpointsByPlatformApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPhoneNumbersOptedOut {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SNS::ListPhoneNumbersOptedOut', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPlatformApplications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SNS::ListPlatformApplications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSubscriptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SNS::ListSubscriptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSubscriptionsByTopic {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SNS::ListSubscriptionsByTopic', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTopics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SNS::ListTopics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub OptInPhoneNumber {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SNS::OptInPhoneNumber', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub Publish {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SNS::Publish', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemovePermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SNS::RemovePermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetEndpointAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SNS::SetEndpointAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetPlatformApplicationAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SNS::SetPlatformApplicationAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetSMSAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SNS::SetSMSAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetSubscriptionAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SNS::SetSubscriptionAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetTopicAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SNS::SetTopicAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub Subscribe {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SNS::Subscribe', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub Unsubscribe {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SNS::Unsubscribe', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllEndpointsByPlatformApplication {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEndpointsByPlatformApplication(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListEndpointsByPlatformApplication(@_, NextToken => $next_result->NextToken);
        push @{ $result->Endpoints }, @{ $next_result->Endpoints };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Endpoints') foreach (@{ $result->Endpoints });
        $result = $self->ListEndpointsByPlatformApplication(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Endpoints') foreach (@{ $result->Endpoints });
    }

    return undef
  }
  sub ListAllPhoneNumbersOptedOut {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPhoneNumbersOptedOut(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListPhoneNumbersOptedOut(@_, nextToken => $next_result->nextToken);
        push @{ $result->phoneNumbers }, @{ $next_result->phoneNumbers };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'phoneNumbers') foreach (@{ $result->phoneNumbers });
        $result = $self->ListPhoneNumbersOptedOut(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'phoneNumbers') foreach (@{ $result->phoneNumbers });
    }

    return undef
  }
  sub ListAllPlatformApplications {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPlatformApplications(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPlatformApplications(@_, NextToken => $next_result->NextToken);
        push @{ $result->PlatformApplications }, @{ $next_result->PlatformApplications };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PlatformApplications') foreach (@{ $result->PlatformApplications });
        $result = $self->ListPlatformApplications(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PlatformApplications') foreach (@{ $result->PlatformApplications });
    }

    return undef
  }
  sub ListAllSubscriptions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSubscriptions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListSubscriptions(@_, NextToken => $next_result->NextToken);
        push @{ $result->Subscriptions }, @{ $next_result->Subscriptions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Subscriptions') foreach (@{ $result->Subscriptions });
        $result = $self->ListSubscriptions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Subscriptions') foreach (@{ $result->Subscriptions });
    }

    return undef
  }
  sub ListAllSubscriptionsByTopic {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSubscriptionsByTopic(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListSubscriptionsByTopic(@_, NextToken => $next_result->NextToken);
        push @{ $result->Subscriptions }, @{ $next_result->Subscriptions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Subscriptions') foreach (@{ $result->Subscriptions });
        $result = $self->ListSubscriptionsByTopic(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Subscriptions') foreach (@{ $result->Subscriptions });
    }

    return undef
  }
  sub ListAllTopics {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTopics(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTopics(@_, NextToken => $next_result->NextToken);
        push @{ $result->Topics }, @{ $next_result->Topics };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Topics') foreach (@{ $result->Topics });
        $result = $self->ListTopics(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Topics') foreach (@{ $result->Topics });
    }

    return undef
  }


  sub operations { qw/AddPermission CheckIfPhoneNumberIsOptedOut ConfirmSubscription CreatePlatformApplication CreatePlatformEndpoint CreateTopic DeleteEndpoint DeletePlatformApplication DeleteTopic GetEndpointAttributes GetPlatformApplicationAttributes GetSMSAttributes GetSubscriptionAttributes GetTopicAttributes ListEndpointsByPlatformApplication ListPhoneNumbersOptedOut ListPlatformApplications ListSubscriptions ListSubscriptionsByTopic ListTopics OptInPhoneNumber Publish RemovePermission SetEndpointAttributes SetPlatformApplicationAttributes SetSMSAttributes SetSubscriptionAttributes SetTopicAttributes Subscribe Unsubscribe / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS - Perl Interface to AWS Amazon Simple Notification Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('SNS');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Amazon Simple Notification Service

Amazon Simple Notification Service (Amazon SNS) is a web service that
enables you to build distributed web-enabled applications. Applications
can use Amazon SNS to easily push real-time notification messages to
interested subscribers over multiple delivery protocols. For more
information about this product see http://aws.amazon.com/sns
(http://aws.amazon.com/sns/). For detailed information about Amazon SNS
features and their associated API calls, see the Amazon SNS Developer
Guide (http://docs.aws.amazon.com/sns/latest/dg/).

We also provide SDKs that enable you to access Amazon SNS from your
preferred programming language. The SDKs contain functionality that
automatically takes care of tasks such as: cryptographically signing
your service requests, retrying requests, and handling error responses.
For a list of available SDKs, go to Tools for Amazon Web Services
(http://aws.amazon.com/tools/).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sns-2010-03-31>


=head1 METHODS

=head2 AddPermission

=over

=item ActionName => ArrayRef[Str|Undef]

=item AWSAccountId => ArrayRef[Str|Undef]

=item Label => Str

=item TopicArn => Str


=back

Each argument is described in detail in: L<Paws::SNS::AddPermission>

Returns: nothing

Adds a statement to a topic's access control policy, granting access
for the specified AWS accounts to the specified actions.


=head2 CheckIfPhoneNumberIsOptedOut

=over

=item PhoneNumber => Str


=back

Each argument is described in detail in: L<Paws::SNS::CheckIfPhoneNumberIsOptedOut>

Returns: a L<Paws::SNS::CheckIfPhoneNumberIsOptedOutResponse> instance

Accepts a phone number and indicates whether the phone holder has opted
out of receiving SMS messages from your account. You cannot send SMS
messages to a number that is opted out.

To resume sending messages, you can opt in the number by using the
C<OptInPhoneNumber> action.


=head2 ConfirmSubscription

=over

=item Token => Str

=item TopicArn => Str

=item [AuthenticateOnUnsubscribe => Str]


=back

Each argument is described in detail in: L<Paws::SNS::ConfirmSubscription>

Returns: a L<Paws::SNS::ConfirmSubscriptionResponse> instance

Verifies an endpoint owner's intent to receive messages by validating
the token sent to the endpoint by an earlier C<Subscribe> action. If
the token is valid, the action creates a new subscription and returns
its Amazon Resource Name (ARN). This call requires an AWS signature
only when the C<AuthenticateOnUnsubscribe> flag is set to "true".


=head2 CreatePlatformApplication

=over

=item Attributes => L<Paws::SNS::MapStringToString>

=item Name => Str

=item Platform => Str


=back

Each argument is described in detail in: L<Paws::SNS::CreatePlatformApplication>

Returns: a L<Paws::SNS::CreatePlatformApplicationResponse> instance

Creates a platform application object for one of the supported push
notification services, such as APNS and GCM, to which devices and
mobile apps may register. You must specify PlatformPrincipal and
PlatformCredential attributes when using the
C<CreatePlatformApplication> action. The PlatformPrincipal is received
from the notification service. For APNS/APNS_SANDBOX, PlatformPrincipal
is "SSL certificate". For GCM, PlatformPrincipal is not applicable. For
ADM, PlatformPrincipal is "client id". The PlatformCredential is also
received from the notification service. For WNS, PlatformPrincipal is
"Package Security Identifier". For MPNS, PlatformPrincipal is "TLS
certificate". For Baidu, PlatformPrincipal is "API key".

For APNS/APNS_SANDBOX, PlatformCredential is "private key". For GCM,
PlatformCredential is "API key". For ADM, PlatformCredential is "client
secret". For WNS, PlatformCredential is "secret key". For MPNS,
PlatformCredential is "private key". For Baidu, PlatformCredential is
"secret key". The PlatformApplicationArn that is returned when using
C<CreatePlatformApplication> is then used as an attribute for the
C<CreatePlatformEndpoint> action. For more information, see Using
Amazon SNS Mobile Push Notifications
(http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html). For more
information about obtaining the PlatformPrincipal and
PlatformCredential for each of the supported push notification
services, see Getting Started with Apple Push Notification Service
(http://docs.aws.amazon.com/sns/latest/dg/mobile-push-apns.html),
Getting Started with Amazon Device Messaging
(http://docs.aws.amazon.com/sns/latest/dg/mobile-push-adm.html),
Getting Started with Baidu Cloud Push
(http://docs.aws.amazon.com/sns/latest/dg/mobile-push-baidu.html),
Getting Started with Google Cloud Messaging for Android
(http://docs.aws.amazon.com/sns/latest/dg/mobile-push-gcm.html),
Getting Started with MPNS
(http://docs.aws.amazon.com/sns/latest/dg/mobile-push-mpns.html), or
Getting Started with WNS
(http://docs.aws.amazon.com/sns/latest/dg/mobile-push-wns.html).


=head2 CreatePlatformEndpoint

=over

=item PlatformApplicationArn => Str

=item Token => Str

=item [Attributes => L<Paws::SNS::MapStringToString>]

=item [CustomUserData => Str]


=back

Each argument is described in detail in: L<Paws::SNS::CreatePlatformEndpoint>

Returns: a L<Paws::SNS::CreateEndpointResponse> instance

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
more information, see Using Amazon SNS Mobile Push Notifications
(http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html).

When using C<CreatePlatformEndpoint> with Baidu, two attributes must be
provided: ChannelId and UserId. The token field must also contain the
ChannelId. For more information, see Creating an Amazon SNS Endpoint
for Baidu
(http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePushBaiduEndpoint.html).


=head2 CreateTopic

=over

=item Name => Str

=item [Attributes => L<Paws::SNS::TopicAttributesMap>]


=back

Each argument is described in detail in: L<Paws::SNS::CreateTopic>

Returns: a L<Paws::SNS::CreateTopicResponse> instance

Creates a topic to which notifications can be published. Users can
create at most 100,000 topics. For more information, see
http://aws.amazon.com/sns (http://aws.amazon.com/sns/). This action is
idempotent, so if the requester already owns a topic with the specified
name, that topic's ARN is returned without creating a new topic.


=head2 DeleteEndpoint

=over

=item EndpointArn => Str


=back

Each argument is described in detail in: L<Paws::SNS::DeleteEndpoint>

Returns: nothing

Deletes the endpoint for a device and mobile app from Amazon SNS. This
action is idempotent. For more information, see Using Amazon SNS Mobile
Push Notifications
(http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html).

When you delete an endpoint that is also subscribed to a topic, then
you must also unsubscribe the endpoint from the topic.


=head2 DeletePlatformApplication

=over

=item PlatformApplicationArn => Str


=back

Each argument is described in detail in: L<Paws::SNS::DeletePlatformApplication>

Returns: nothing

Deletes a platform application object for one of the supported push
notification services, such as APNS and GCM. For more information, see
Using Amazon SNS Mobile Push Notifications
(http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html).


=head2 DeleteTopic

=over

=item TopicArn => Str


=back

Each argument is described in detail in: L<Paws::SNS::DeleteTopic>

Returns: nothing

Deletes a topic and all its subscriptions. Deleting a topic might
prevent some messages previously sent to the topic from being delivered
to subscribers. This action is idempotent, so deleting a topic that
does not exist does not result in an error.


=head2 GetEndpointAttributes

=over

=item EndpointArn => Str


=back

Each argument is described in detail in: L<Paws::SNS::GetEndpointAttributes>

Returns: a L<Paws::SNS::GetEndpointAttributesResponse> instance

Retrieves the endpoint attributes for a device on one of the supported
push notification services, such as GCM and APNS. For more information,
see Using Amazon SNS Mobile Push Notifications
(http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html).


=head2 GetPlatformApplicationAttributes

=over

=item PlatformApplicationArn => Str


=back

Each argument is described in detail in: L<Paws::SNS::GetPlatformApplicationAttributes>

Returns: a L<Paws::SNS::GetPlatformApplicationAttributesResponse> instance

Retrieves the attributes of the platform application object for the
supported push notification services, such as APNS and GCM. For more
information, see Using Amazon SNS Mobile Push Notifications
(http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html).


=head2 GetSMSAttributes

=over

=item [Attributes => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::SNS::GetSMSAttributes>

Returns: a L<Paws::SNS::GetSMSAttributesResponse> instance

Returns the settings for sending SMS messages from your account.

These settings are set with the C<SetSMSAttributes> action.


=head2 GetSubscriptionAttributes

=over

=item SubscriptionArn => Str


=back

Each argument is described in detail in: L<Paws::SNS::GetSubscriptionAttributes>

Returns: a L<Paws::SNS::GetSubscriptionAttributesResponse> instance

Returns all of the properties of a subscription.


=head2 GetTopicAttributes

=over

=item TopicArn => Str


=back

Each argument is described in detail in: L<Paws::SNS::GetTopicAttributes>

Returns: a L<Paws::SNS::GetTopicAttributesResponse> instance

Returns all of the properties of a topic. Topic properties returned
might differ based on the authorization of the user.


=head2 ListEndpointsByPlatformApplication

=over

=item PlatformApplicationArn => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SNS::ListEndpointsByPlatformApplication>

Returns: a L<Paws::SNS::ListEndpointsByPlatformApplicationResponse> instance

Lists the endpoints and endpoint attributes for devices in a supported
push notification service, such as GCM and APNS. The results for
C<ListEndpointsByPlatformApplication> are paginated and return a
limited list of endpoints, up to 100. If additional records are
available after the first page results, then a NextToken string will be
returned. To receive the next page, you call
C<ListEndpointsByPlatformApplication> again using the NextToken string
received from the previous call. When there are no more records to
return, NextToken will be null. For more information, see Using Amazon
SNS Mobile Push Notifications
(http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html).

This action is throttled at 30 transactions per second (TPS).


=head2 ListPhoneNumbersOptedOut

=over

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SNS::ListPhoneNumbersOptedOut>

Returns: a L<Paws::SNS::ListPhoneNumbersOptedOutResponse> instance

Returns a list of phone numbers that are opted out, meaning you cannot
send SMS messages to them.

The results for C<ListPhoneNumbersOptedOut> are paginated, and each
page returns up to 100 phone numbers. If additional phone numbers are
available after the first page of results, then a C<NextToken> string
will be returned. To receive the next page, you call
C<ListPhoneNumbersOptedOut> again using the C<NextToken> string
received from the previous call. When there are no more records to
return, C<NextToken> will be null.


=head2 ListPlatformApplications

=over

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SNS::ListPlatformApplications>

Returns: a L<Paws::SNS::ListPlatformApplicationsResponse> instance

Lists the platform application objects for the supported push
notification services, such as APNS and GCM. The results for
C<ListPlatformApplications> are paginated and return a limited list of
applications, up to 100. If additional records are available after the
first page results, then a NextToken string will be returned. To
receive the next page, you call C<ListPlatformApplications> using the
NextToken string received from the previous call. When there are no
more records to return, NextToken will be null. For more information,
see Using Amazon SNS Mobile Push Notifications
(http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html).

This action is throttled at 15 transactions per second (TPS).


=head2 ListSubscriptions

=over

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SNS::ListSubscriptions>

Returns: a L<Paws::SNS::ListSubscriptionsResponse> instance

Returns a list of the requester's subscriptions. Each call returns a
limited list of subscriptions, up to 100. If there are more
subscriptions, a C<NextToken> is also returned. Use the C<NextToken>
parameter in a new C<ListSubscriptions> call to get further results.

This action is throttled at 30 transactions per second (TPS).


=head2 ListSubscriptionsByTopic

=over

=item TopicArn => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SNS::ListSubscriptionsByTopic>

Returns: a L<Paws::SNS::ListSubscriptionsByTopicResponse> instance

Returns a list of the subscriptions to a specific topic. Each call
returns a limited list of subscriptions, up to 100. If there are more
subscriptions, a C<NextToken> is also returned. Use the C<NextToken>
parameter in a new C<ListSubscriptionsByTopic> call to get further
results.

This action is throttled at 30 transactions per second (TPS).


=head2 ListTopics

=over

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SNS::ListTopics>

Returns: a L<Paws::SNS::ListTopicsResponse> instance

Returns a list of the requester's topics. Each call returns a limited
list of topics, up to 100. If there are more topics, a C<NextToken> is
also returned. Use the C<NextToken> parameter in a new C<ListTopics>
call to get further results.

This action is throttled at 30 transactions per second (TPS).


=head2 OptInPhoneNumber

=over

=item PhoneNumber => Str


=back

Each argument is described in detail in: L<Paws::SNS::OptInPhoneNumber>

Returns: a L<Paws::SNS::OptInPhoneNumberResponse> instance

Use this request to opt in a phone number that is opted out, which
enables you to resume sending SMS messages to the number.

You can opt in a phone number only once every 30 days.


=head2 Publish

=over

=item Message => Str

=item [MessageAttributes => L<Paws::SNS::MessageAttributeMap>]

=item [MessageStructure => Str]

=item [PhoneNumber => Str]

=item [Subject => Str]

=item [TargetArn => Str]

=item [TopicArn => Str]


=back

Each argument is described in detail in: L<Paws::SNS::Publish>

Returns: a L<Paws::SNS::PublishResponse> instance

Sends a message to an Amazon SNS topic or sends a text message (SMS
message) directly to a phone number.

If you send a message to a topic, Amazon SNS delivers the message to
each endpoint that is subscribed to the topic. The format of the
message depends on the notification protocol for each subscribed
endpoint.

When a C<messageId> is returned, the message has been saved and Amazon
SNS will attempt to deliver it shortly.

To use the C<Publish> action for sending a message to a mobile
endpoint, such as an app on a Kindle device or mobile phone, you must
specify the EndpointArn for the TargetArn parameter. The EndpointArn is
returned when making a call with the C<CreatePlatformEndpoint> action.

For more information about formatting messages, see Send Custom
Platform-Specific Payloads in Messages to Mobile Devices
(http://docs.aws.amazon.com/sns/latest/dg/mobile-push-send-custommessage.html).


=head2 RemovePermission

=over

=item Label => Str

=item TopicArn => Str


=back

Each argument is described in detail in: L<Paws::SNS::RemovePermission>

Returns: nothing

Removes a statement from a topic's access control policy.


=head2 SetEndpointAttributes

=over

=item Attributes => L<Paws::SNS::MapStringToString>

=item EndpointArn => Str


=back

Each argument is described in detail in: L<Paws::SNS::SetEndpointAttributes>

Returns: nothing

Sets the attributes for an endpoint for a device on one of the
supported push notification services, such as GCM and APNS. For more
information, see Using Amazon SNS Mobile Push Notifications
(http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html).


=head2 SetPlatformApplicationAttributes

=over

=item Attributes => L<Paws::SNS::MapStringToString>

=item PlatformApplicationArn => Str


=back

Each argument is described in detail in: L<Paws::SNS::SetPlatformApplicationAttributes>

Returns: nothing

Sets the attributes of the platform application object for the
supported push notification services, such as APNS and GCM. For more
information, see Using Amazon SNS Mobile Push Notifications
(http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html). For
information on configuring attributes for message delivery status, see
Using Amazon SNS Application Attributes for Message Delivery Status
(http://docs.aws.amazon.com/sns/latest/dg/sns-msg-status.html).


=head2 SetSMSAttributes

=over

=item Attributes => L<Paws::SNS::MapStringToString>


=back

Each argument is described in detail in: L<Paws::SNS::SetSMSAttributes>

Returns: a L<Paws::SNS::SetSMSAttributesResponse> instance

Use this request to set the default settings for sending SMS messages
and receiving daily SMS usage reports.

You can override some of these settings for a single message when you
use the C<Publish> action with the C<MessageAttributes.entry.N>
parameter. For more information, see Sending an SMS Message
(http://docs.aws.amazon.com/sns/latest/dg/sms_publish-to-phone.html) in
the I<Amazon SNS Developer Guide>.


=head2 SetSubscriptionAttributes

=over

=item AttributeName => Str

=item SubscriptionArn => Str

=item [AttributeValue => Str]


=back

Each argument is described in detail in: L<Paws::SNS::SetSubscriptionAttributes>

Returns: nothing

Allows a subscription owner to set an attribute of the subscription to
a new value.


=head2 SetTopicAttributes

=over

=item AttributeName => Str

=item TopicArn => Str

=item [AttributeValue => Str]


=back

Each argument is described in detail in: L<Paws::SNS::SetTopicAttributes>

Returns: nothing

Allows a topic owner to set an attribute of the topic to a new value.


=head2 Subscribe

=over

=item Protocol => Str

=item TopicArn => Str

=item [Attributes => L<Paws::SNS::SubscriptionAttributesMap>]

=item [Endpoint => Str]

=item [ReturnSubscriptionArn => Bool]


=back

Each argument is described in detail in: L<Paws::SNS::Subscribe>

Returns: a L<Paws::SNS::SubscribeResponse> instance

Prepares to subscribe an endpoint by sending the endpoint a
confirmation message. To actually create a subscription, the endpoint
owner must call the C<ConfirmSubscription> action with the token from
the confirmation message. Confirmation tokens are valid for three days.

This action is throttled at 100 transactions per second (TPS).


=head2 Unsubscribe

=over

=item SubscriptionArn => Str


=back

Each argument is described in detail in: L<Paws::SNS::Unsubscribe>

Returns: nothing

Deletes a subscription. If the subscription requires authentication for
deletion, only the owner of the subscription or the topic's owner can
unsubscribe, and an AWS signature is required. If the C<Unsubscribe>
call does not require authentication and the requester is not the
subscription owner, a final cancellation message is delivered to the
endpoint, so that the endpoint owner can easily resubscribe to the
topic if the C<Unsubscribe> request was unintended.

This action is throttled at 100 transactions per second (TPS).




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllEndpointsByPlatformApplication(sub { },PlatformApplicationArn => Str, [NextToken => Str])

=head2 ListAllEndpointsByPlatformApplication(PlatformApplicationArn => Str, [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Endpoints, passing the object as the first parameter, and the string 'Endpoints' as the second parameter 

If not, it will return a a L<Paws::SNS::ListEndpointsByPlatformApplicationResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPhoneNumbersOptedOut(sub { },[NextToken => Str])

=head2 ListAllPhoneNumbersOptedOut([NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - phoneNumbers, passing the object as the first parameter, and the string 'phoneNumbers' as the second parameter 

If not, it will return a a L<Paws::SNS::ListPhoneNumbersOptedOutResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPlatformApplications(sub { },[NextToken => Str])

=head2 ListAllPlatformApplications([NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PlatformApplications, passing the object as the first parameter, and the string 'PlatformApplications' as the second parameter 

If not, it will return a a L<Paws::SNS::ListPlatformApplicationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSubscriptions(sub { },[NextToken => Str])

=head2 ListAllSubscriptions([NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Subscriptions, passing the object as the first parameter, and the string 'Subscriptions' as the second parameter 

If not, it will return a a L<Paws::SNS::ListSubscriptionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSubscriptionsByTopic(sub { },TopicArn => Str, [NextToken => Str])

=head2 ListAllSubscriptionsByTopic(TopicArn => Str, [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Subscriptions, passing the object as the first parameter, and the string 'Subscriptions' as the second parameter 

If not, it will return a a L<Paws::SNS::ListSubscriptionsByTopicResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTopics(sub { },[NextToken => Str])

=head2 ListAllTopics([NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Topics, passing the object as the first parameter, and the string 'Topics' as the second parameter 

If not, it will return a a L<Paws::SNS::ListTopicsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

