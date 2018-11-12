package Paws::PinpointEmail;
  use Moose;
  sub service { 'email' }
  sub signing_name { 'ses' }
  sub version { '2018-07-26' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateConfigurationSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointEmail::CreateConfigurationSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateConfigurationSetEventDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointEmail::CreateConfigurationSetEventDestination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDedicatedIpPool {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointEmail::CreateDedicatedIpPool', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEmailIdentity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointEmail::CreateEmailIdentity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConfigurationSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointEmail::DeleteConfigurationSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConfigurationSetEventDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointEmail::DeleteConfigurationSetEventDestination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDedicatedIpPool {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointEmail::DeleteDedicatedIpPool', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEmailIdentity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointEmail::DeleteEmailIdentity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointEmail::GetAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConfigurationSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointEmail::GetConfigurationSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConfigurationSetEventDestinations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointEmail::GetConfigurationSetEventDestinations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDedicatedIp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointEmail::GetDedicatedIp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDedicatedIps {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointEmail::GetDedicatedIps', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEmailIdentity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointEmail::GetEmailIdentity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListConfigurationSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointEmail::ListConfigurationSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDedicatedIpPools {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointEmail::ListDedicatedIpPools', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEmailIdentities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointEmail::ListEmailIdentities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutAccountDedicatedIpWarmupAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointEmail::PutAccountDedicatedIpWarmupAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutAccountSendingAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointEmail::PutAccountSendingAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutConfigurationSetDeliveryOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointEmail::PutConfigurationSetDeliveryOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutConfigurationSetReputationOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointEmail::PutConfigurationSetReputationOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutConfigurationSetSendingOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointEmail::PutConfigurationSetSendingOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutConfigurationSetTrackingOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointEmail::PutConfigurationSetTrackingOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutDedicatedIpInPool {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointEmail::PutDedicatedIpInPool', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutDedicatedIpWarmupAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointEmail::PutDedicatedIpWarmupAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutEmailIdentityDkimAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointEmail::PutEmailIdentityDkimAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutEmailIdentityFeedbackAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointEmail::PutEmailIdentityFeedbackAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutEmailIdentityMailFromAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointEmail::PutEmailIdentityMailFromAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendEmail {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointEmail::SendEmail', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateConfigurationSetEventDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PinpointEmail::UpdateConfigurationSetEventDestination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateConfigurationSet CreateConfigurationSetEventDestination CreateDedicatedIpPool CreateEmailIdentity DeleteConfigurationSet DeleteConfigurationSetEventDestination DeleteDedicatedIpPool DeleteEmailIdentity GetAccount GetConfigurationSet GetConfigurationSetEventDestinations GetDedicatedIp GetDedicatedIps GetEmailIdentity ListConfigurationSets ListDedicatedIpPools ListEmailIdentities PutAccountDedicatedIpWarmupAttributes PutAccountSendingAttributes PutConfigurationSetDeliveryOptions PutConfigurationSetReputationOptions PutConfigurationSetSendingOptions PutConfigurationSetTrackingOptions PutDedicatedIpInPool PutDedicatedIpWarmupAttributes PutEmailIdentityDkimAttributes PutEmailIdentityFeedbackAttributes PutEmailIdentityMailFromAttributes SendEmail UpdateConfigurationSetEventDestination / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail - Perl Interface to AWS Amazon Pinpoint Email Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('PinpointEmail');
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

Amazon Pinpoint Email Service

This document contains reference information for the Amazon Pinpoint
(https://aws.amazon.com/pinpoint) Email API, version 1.0. This document
is best used in conjunction with the Amazon Pinpoint Developer Guide
(http://docs.aws.amazon.com/pinpoint/latest/developerguide/welcome.html).

The Amazon Pinpoint API is available in the US East (N. Virginia)
Region at the following endpoint: C<email.us-east-1.amazonaws.com>

For the AWS API documentation, see L<https://docs.aws.amazon.com/ses/>


=head1 METHODS

=head2 CreateConfigurationSet

=over

=item [ConfigurationSetName => Str]

=item [DeliveryOptions => L<Paws::PinpointEmail::DeliveryOptions>]

=item [ReputationOptions => L<Paws::PinpointEmail::ReputationOptions>]

=item [SendingOptions => L<Paws::PinpointEmail::SendingOptions>]

=item [TrackingOptions => L<Paws::PinpointEmail::TrackingOptions>]


=back

Each argument is described in detail in: L<Paws::PinpointEmail::CreateConfigurationSet>

Returns: a L<Paws::PinpointEmail::CreateConfigurationSetResponse> instance

Create a configuration set. I<Configuration sets> are groups of rules
that you can apply to the emails you send using Amazon Pinpoint. You
apply a configuration set to an email by including a reference to the
configuration set in the headers of the email. When you apply a
configuration set to an email, all of the rules in that configuration
set are applied to the email.


=head2 CreateConfigurationSetEventDestination

=over

=item ConfigurationSetName => Str

=item EventDestination => L<Paws::PinpointEmail::EventDestinationDefinition>

=item EventDestinationName => Str


=back

Each argument is described in detail in: L<Paws::PinpointEmail::CreateConfigurationSetEventDestination>

Returns: a L<Paws::PinpointEmail::CreateConfigurationSetEventDestinationResponse> instance

Create an event destination. In Amazon Pinpoint, I<events> include
message sends, deliveries, opens, clicks, bounces, and complaints.
I<Event destinations> are places that you can send information about
these events to. For example, you can send event data to Amazon SNS to
receive notifications when you receive bounces or complaints, or you
can use Amazon Kinesis Data Firehose to stream data to Amazon S3 for
long-term storage.

A single configuration set can include more than one event destination.


=head2 CreateDedicatedIpPool

=over

=item PoolName => Str


=back

Each argument is described in detail in: L<Paws::PinpointEmail::CreateDedicatedIpPool>

Returns: a L<Paws::PinpointEmail::CreateDedicatedIpPoolResponse> instance

Create a new pool of dedicated IP addresses. A pool can include one or
more dedicated IP addresses that are associated with your Amazon
Pinpoint account. You can associate a pool with a configuration set.
When you send an email that uses that configuration set, Amazon
Pinpoint sends it using only the IP addresses in the associated pool.


=head2 CreateEmailIdentity

=over

=item EmailIdentity => Str


=back

Each argument is described in detail in: L<Paws::PinpointEmail::CreateEmailIdentity>

Returns: a L<Paws::PinpointEmail::CreateEmailIdentityResponse> instance

Verifies an email identity for use with Amazon Pinpoint. In Amazon
Pinpoint, an identity is an email address or domain that you use when
you send email. Before you can use an identity to send email with
Amazon Pinpoint, you first have to verify it. By verifying an address,
you demonstrate that you're the owner of the address, and that you've
given Amazon Pinpoint permission to send email from the address.

When you verify an email address, Amazon Pinpoint sends an email to the
address. Your email address is verified as soon as you follow the link
in the verification email.

When you verify a domain, this operation provides a set of DKIM tokens,
which you can convert into CNAME tokens. You add these CNAME tokens to
the DNS configuration for your domain. Your domain is verified when
Amazon Pinpoint detects these records in the DNS configuration for your
domain. It usually takes around 72 hours to complete the domain
verification process.


=head2 DeleteConfigurationSet

=over

=item ConfigurationSetName => Str


=back

Each argument is described in detail in: L<Paws::PinpointEmail::DeleteConfigurationSet>

Returns: a L<Paws::PinpointEmail::DeleteConfigurationSetResponse> instance

Delete an existing configuration set.

In Amazon Pinpoint, I<configuration sets> are groups of rules that you
can apply to the emails you send. You apply a configuration set to an
email by including a reference to the configuration set in the headers
of the email. When you apply a configuration set to an email, all of
the rules in that configuration set are applied to the email.


=head2 DeleteConfigurationSetEventDestination

=over

=item ConfigurationSetName => Str

=item EventDestinationName => Str


=back

Each argument is described in detail in: L<Paws::PinpointEmail::DeleteConfigurationSetEventDestination>

Returns: a L<Paws::PinpointEmail::DeleteConfigurationSetEventDestinationResponse> instance

Delete an event destination.

In Amazon Pinpoint, I<events> include message sends, deliveries, opens,
clicks, bounces, and complaints. I<Event destinations> are places that
you can send information about these events to. For example, you can
send event data to Amazon SNS to receive notifications when you receive
bounces or complaints, or you can use Amazon Kinesis Data Firehose to
stream data to Amazon S3 for long-term storage.


=head2 DeleteDedicatedIpPool

=over

=item PoolName => Str


=back

Each argument is described in detail in: L<Paws::PinpointEmail::DeleteDedicatedIpPool>

Returns: a L<Paws::PinpointEmail::DeleteDedicatedIpPoolResponse> instance

Delete a dedicated IP pool.


=head2 DeleteEmailIdentity

=over

=item EmailIdentity => Str


=back

Each argument is described in detail in: L<Paws::PinpointEmail::DeleteEmailIdentity>

Returns: a L<Paws::PinpointEmail::DeleteEmailIdentityResponse> instance

Deletes an email identity that you previously verified for use with
Amazon Pinpoint. An identity can be either an email address or a domain
name.


=head2 GetAccount






Each argument is described in detail in: L<Paws::PinpointEmail::GetAccount>

Returns: a L<Paws::PinpointEmail::GetAccountResponse> instance

Obtain information about the email-sending status and capabilities of
your Amazon Pinpoint account in the current AWS Region.


=head2 GetConfigurationSet

=over

=item ConfigurationSetName => Str


=back

Each argument is described in detail in: L<Paws::PinpointEmail::GetConfigurationSet>

Returns: a L<Paws::PinpointEmail::GetConfigurationSetResponse> instance

Get information about an existing configuration set, including the
dedicated IP pool that it's associated with, whether or not it's
enabled for sending email, and more.

In Amazon Pinpoint, I<configuration sets> are groups of rules that you
can apply to the emails you send. You apply a configuration set to an
email by including a reference to the configuration set in the headers
of the email. When you apply a configuration set to an email, all of
the rules in that configuration set are applied to the email.


=head2 GetConfigurationSetEventDestinations

=over

=item ConfigurationSetName => Str


=back

Each argument is described in detail in: L<Paws::PinpointEmail::GetConfigurationSetEventDestinations>

Returns: a L<Paws::PinpointEmail::GetConfigurationSetEventDestinationsResponse> instance

Retrieve a list of event destinations that are associated with a
configuration set.

In Amazon Pinpoint, I<events> include message sends, deliveries, opens,
clicks, bounces, and complaints. I<Event destinations> are places that
you can send information about these events to. For example, you can
send event data to Amazon SNS to receive notifications when you receive
bounces or complaints, or you can use Amazon Kinesis Data Firehose to
stream data to Amazon S3 for long-term storage.


=head2 GetDedicatedIp

=over

=item Ip => Str


=back

Each argument is described in detail in: L<Paws::PinpointEmail::GetDedicatedIp>

Returns: a L<Paws::PinpointEmail::GetDedicatedIpResponse> instance

Get information about a dedicated IP address, including the name of the
dedicated IP pool that it's associated with, as well information about
the automatic warm-up process for the address.


=head2 GetDedicatedIps

=over

=item [NextToken => Str]

=item [PageSize => Int]

=item [PoolName => Str]


=back

Each argument is described in detail in: L<Paws::PinpointEmail::GetDedicatedIps>

Returns: a L<Paws::PinpointEmail::GetDedicatedIpsResponse> instance

List the dedicated IP addresses that are associated with your Amazon
Pinpoint account.


=head2 GetEmailIdentity

=over

=item EmailIdentity => Str


=back

Each argument is described in detail in: L<Paws::PinpointEmail::GetEmailIdentity>

Returns: a L<Paws::PinpointEmail::GetEmailIdentityResponse> instance

Provides information about a specific identity associated with your
Amazon Pinpoint account, including the identity's verification status,
its DKIM authentication status, and its custom Mail-From settings.


=head2 ListConfigurationSets

=over

=item [NextToken => Str]

=item [PageSize => Int]


=back

Each argument is described in detail in: L<Paws::PinpointEmail::ListConfigurationSets>

Returns: a L<Paws::PinpointEmail::ListConfigurationSetsResponse> instance

List all of the configuration sets associated with your Amazon Pinpoint
account in the current region.

In Amazon Pinpoint, I<configuration sets> are groups of rules that you
can apply to the emails you send. You apply a configuration set to an
email by including a reference to the configuration set in the headers
of the email. When you apply a configuration set to an email, all of
the rules in that configuration set are applied to the email.


=head2 ListDedicatedIpPools

=over

=item [NextToken => Str]

=item [PageSize => Int]


=back

Each argument is described in detail in: L<Paws::PinpointEmail::ListDedicatedIpPools>

Returns: a L<Paws::PinpointEmail::ListDedicatedIpPoolsResponse> instance

List all of the dedicated IP pools that exist in your Amazon Pinpoint
account in the current AWS Region.


=head2 ListEmailIdentities

=over

=item [NextToken => Str]

=item [PageSize => Int]


=back

Each argument is described in detail in: L<Paws::PinpointEmail::ListEmailIdentities>

Returns: a L<Paws::PinpointEmail::ListEmailIdentitiesResponse> instance

Returns a list of all of the email identities that are associated with
your Amazon Pinpoint account. An identity can be either an email
address or a domain. This operation returns identities that are
verified as well as those that aren't.


=head2 PutAccountDedicatedIpWarmupAttributes

=over

=item [AutoWarmupEnabled => Bool]


=back

Each argument is described in detail in: L<Paws::PinpointEmail::PutAccountDedicatedIpWarmupAttributes>

Returns: a L<Paws::PinpointEmail::PutAccountDedicatedIpWarmupAttributesResponse> instance

Enable or disable the automatic warm-up feature for dedicated IP
addresses.


=head2 PutAccountSendingAttributes

=over

=item [SendingEnabled => Bool]


=back

Each argument is described in detail in: L<Paws::PinpointEmail::PutAccountSendingAttributes>

Returns: a L<Paws::PinpointEmail::PutAccountSendingAttributesResponse> instance

Enable or disable the ability of your account to send email.


=head2 PutConfigurationSetDeliveryOptions

=over

=item ConfigurationSetName => Str

=item [SendingPoolName => Str]


=back

Each argument is described in detail in: L<Paws::PinpointEmail::PutConfigurationSetDeliveryOptions>

Returns: a L<Paws::PinpointEmail::PutConfigurationSetDeliveryOptionsResponse> instance

Associate a configuration set with a dedicated IP pool. You can use
dedicated IP pools to create groups of dedicated IP addresses for
sending specific types of email.


=head2 PutConfigurationSetReputationOptions

=over

=item ConfigurationSetName => Str

=item [ReputationMetricsEnabled => Bool]


=back

Each argument is described in detail in: L<Paws::PinpointEmail::PutConfigurationSetReputationOptions>

Returns: a L<Paws::PinpointEmail::PutConfigurationSetReputationOptionsResponse> instance

Enable or disable collection of reputation metrics for emails that you
send using a particular configuration set in a specific AWS Region.


=head2 PutConfigurationSetSendingOptions

=over

=item ConfigurationSetName => Str

=item [SendingEnabled => Bool]


=back

Each argument is described in detail in: L<Paws::PinpointEmail::PutConfigurationSetSendingOptions>

Returns: a L<Paws::PinpointEmail::PutConfigurationSetSendingOptionsResponse> instance

Enable or disable email sending for messages that use a particular
configuration set in a specific AWS Region.


=head2 PutConfigurationSetTrackingOptions

=over

=item ConfigurationSetName => Str

=item [CustomRedirectDomain => Str]


=back

Each argument is described in detail in: L<Paws::PinpointEmail::PutConfigurationSetTrackingOptions>

Returns: a L<Paws::PinpointEmail::PutConfigurationSetTrackingOptionsResponse> instance

Specify a custom domain to use for open and click tracking elements in
email that you send using Amazon Pinpoint.


=head2 PutDedicatedIpInPool

=over

=item DestinationPoolName => Str

=item Ip => Str


=back

Each argument is described in detail in: L<Paws::PinpointEmail::PutDedicatedIpInPool>

Returns: a L<Paws::PinpointEmail::PutDedicatedIpInPoolResponse> instance

Move a dedicated IP address to an existing dedicated IP pool.

The dedicated IP address that you specify must already exist, and must
be associated with your Amazon Pinpoint account.

The dedicated IP pool you specify must already exist. You can create a
new pool by using the C<CreateDedicatedIpPool> operation.


=head2 PutDedicatedIpWarmupAttributes

=over

=item Ip => Str

=item WarmupPercentage => Int


=back

Each argument is described in detail in: L<Paws::PinpointEmail::PutDedicatedIpWarmupAttributes>

Returns: a L<Paws::PinpointEmail::PutDedicatedIpWarmupAttributesResponse> instance




=head2 PutEmailIdentityDkimAttributes

=over

=item EmailIdentity => Str

=item [SigningEnabled => Bool]


=back

Each argument is described in detail in: L<Paws::PinpointEmail::PutEmailIdentityDkimAttributes>

Returns: a L<Paws::PinpointEmail::PutEmailIdentityDkimAttributesResponse> instance

Used to enable or disable DKIM authentication for an email identity.


=head2 PutEmailIdentityFeedbackAttributes

=over

=item EmailIdentity => Str

=item [EmailForwardingEnabled => Bool]


=back

Each argument is described in detail in: L<Paws::PinpointEmail::PutEmailIdentityFeedbackAttributes>

Returns: a L<Paws::PinpointEmail::PutEmailIdentityFeedbackAttributesResponse> instance

Used to enable or disable feedback forwarding for an identity. This
setting determines what happens when an identity is used to send an
email that results in a bounce or complaint event.

When you enable feedback forwarding, Amazon Pinpoint sends you email
notifications when bounce or complaint events occur. Amazon Pinpoint
sends this notification to the address that you specified in the
Return-Path header of the original email.

When you disable feedback forwarding, Amazon Pinpoint sends
notifications through other mechanisms, such as by notifying an Amazon
SNS topic. You're required to have a method of tracking bounces and
complaints. If you haven't set up another mechanism for receiving
bounce or complaint notifications, Amazon Pinpoint sends an email
notification when these events occur (even if this setting is
disabled).


=head2 PutEmailIdentityMailFromAttributes

=over

=item EmailIdentity => Str

=item [BehaviorOnMxFailure => Str]

=item [MailFromDomain => Str]


=back

Each argument is described in detail in: L<Paws::PinpointEmail::PutEmailIdentityMailFromAttributes>

Returns: a L<Paws::PinpointEmail::PutEmailIdentityMailFromAttributesResponse> instance

Used to enable or disable the custom Mail-From domain configuration for
an email identity.


=head2 SendEmail

=over

=item Content => L<Paws::PinpointEmail::EmailContent>

=item Destination => L<Paws::PinpointEmail::Destination>

=item [ConfigurationSetName => Str]

=item [EmailTags => ArrayRef[L<Paws::PinpointEmail::MessageTag>]]

=item [FeedbackForwardingEmailAddress => Str]

=item [FromEmailAddress => Str]

=item [ReplyToAddresses => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::PinpointEmail::SendEmail>

Returns: a L<Paws::PinpointEmail::SendEmailResponse> instance

Sends an email message. You can use the Amazon Pinpoint Email API to
send two types of messages:

=over

=item *

B<Simple> E<ndash> A standard email message. When you create this type
of message, you specify the sender, the recipient, and the message
body, and Amazon Pinpoint assembles the message for you.

=item *

B<Raw> E<ndash> A raw, MIME-formatted email message. When you send this
type of email, you have to specify all of the message headers, as well
as the message body. You can use this message type to send messages
that contain attachments. The message that you specify has to be a
valid MIME message.

=back



=head2 UpdateConfigurationSetEventDestination

=over

=item ConfigurationSetName => Str

=item EventDestination => L<Paws::PinpointEmail::EventDestinationDefinition>

=item EventDestinationName => Str


=back

Each argument is described in detail in: L<Paws::PinpointEmail::UpdateConfigurationSetEventDestination>

Returns: a L<Paws::PinpointEmail::UpdateConfigurationSetEventDestinationResponse> instance

Update the configuration of an event destination for a configuration
set.

In Amazon Pinpoint, I<events> include message sends, deliveries, opens,
clicks, bounces, and complaints. I<Event destinations> are places that
you can send information about these events to. For example, you can
send event data to Amazon SNS to receive notifications when you receive
bounces or complaints, or you can use Amazon Kinesis Data Firehose to
stream data to Amazon S3 for long-term storage.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

