package Paws::SESv2;
  use Moo;
  use Types::Standard qw/Int HashRef ArrayRef/;
  sub service { 'email' }
  sub signing_name { 'ses' }
  sub version { '2019-09-27' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => Int, default => 5);
  has retry => (is => 'ro', isa => HashRef, default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => ArrayRef, default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateConfigurationSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SESv2::CreateConfigurationSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateConfigurationSetEventDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SESv2::CreateConfigurationSetEventDestination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDedicatedIpPool {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SESv2::CreateDedicatedIpPool', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDeliverabilityTestReport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SESv2::CreateDeliverabilityTestReport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEmailIdentity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SESv2::CreateEmailIdentity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConfigurationSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SESv2::DeleteConfigurationSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConfigurationSetEventDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SESv2::DeleteConfigurationSetEventDestination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDedicatedIpPool {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SESv2::DeleteDedicatedIpPool', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEmailIdentity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SESv2::DeleteEmailIdentity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SESv2::GetAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBlacklistReports {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SESv2::GetBlacklistReports', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConfigurationSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SESv2::GetConfigurationSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConfigurationSetEventDestinations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SESv2::GetConfigurationSetEventDestinations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDedicatedIp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SESv2::GetDedicatedIp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDedicatedIps {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SESv2::GetDedicatedIps', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDeliverabilityDashboardOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SESv2::GetDeliverabilityDashboardOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDeliverabilityTestReport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SESv2::GetDeliverabilityTestReport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDomainDeliverabilityCampaign {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SESv2::GetDomainDeliverabilityCampaign', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDomainStatisticsReport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SESv2::GetDomainStatisticsReport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEmailIdentity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SESv2::GetEmailIdentity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListConfigurationSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SESv2::ListConfigurationSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDedicatedIpPools {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SESv2::ListDedicatedIpPools', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDeliverabilityTestReports {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SESv2::ListDeliverabilityTestReports', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDomainDeliverabilityCampaigns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SESv2::ListDomainDeliverabilityCampaigns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEmailIdentities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SESv2::ListEmailIdentities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SESv2::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutAccountDedicatedIpWarmupAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SESv2::PutAccountDedicatedIpWarmupAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutAccountSendingAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SESv2::PutAccountSendingAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutConfigurationSetDeliveryOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SESv2::PutConfigurationSetDeliveryOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutConfigurationSetReputationOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SESv2::PutConfigurationSetReputationOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutConfigurationSetSendingOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SESv2::PutConfigurationSetSendingOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutConfigurationSetTrackingOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SESv2::PutConfigurationSetTrackingOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutDedicatedIpInPool {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SESv2::PutDedicatedIpInPool', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutDedicatedIpWarmupAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SESv2::PutDedicatedIpWarmupAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutDeliverabilityDashboardOption {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SESv2::PutDeliverabilityDashboardOption', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutEmailIdentityDkimAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SESv2::PutEmailIdentityDkimAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutEmailIdentityFeedbackAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SESv2::PutEmailIdentityFeedbackAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutEmailIdentityMailFromAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SESv2::PutEmailIdentityMailFromAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendEmail {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SESv2::SendEmail', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SESv2::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SESv2::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateConfigurationSetEventDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SESv2::UpdateConfigurationSetEventDestination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateConfigurationSet CreateConfigurationSetEventDestination CreateDedicatedIpPool CreateDeliverabilityTestReport CreateEmailIdentity DeleteConfigurationSet DeleteConfigurationSetEventDestination DeleteDedicatedIpPool DeleteEmailIdentity GetAccount GetBlacklistReports GetConfigurationSet GetConfigurationSetEventDestinations GetDedicatedIp GetDedicatedIps GetDeliverabilityDashboardOptions GetDeliverabilityTestReport GetDomainDeliverabilityCampaign GetDomainStatisticsReport GetEmailIdentity ListConfigurationSets ListDedicatedIpPools ListDeliverabilityTestReports ListDomainDeliverabilityCampaigns ListEmailIdentities ListTagsForResource PutAccountDedicatedIpWarmupAttributes PutAccountSendingAttributes PutConfigurationSetDeliveryOptions PutConfigurationSetReputationOptions PutConfigurationSetSendingOptions PutConfigurationSetTrackingOptions PutDedicatedIpInPool PutDedicatedIpWarmupAttributes PutDeliverabilityDashboardOption PutEmailIdentityDkimAttributes PutEmailIdentityFeedbackAttributes PutEmailIdentityMailFromAttributes SendEmail TagResource UntagResource UpdateConfigurationSetEventDestination / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2 - Perl Interface to AWS Amazon Simple Email Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('SESv2');
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

Amazon SES API v2

Welcome to the Amazon SES API v2 Reference. This guide provides
information about the Amazon SES API v2, including supported
operations, data types, parameters, and schemas.

Amazon SES (https://aws.amazon.com/pinpoint) is an AWS service that you
can use to send email messages to your customers.

If you're new to Amazon SES API v2, you might find it helpful to also
review the Amazon Simple Email Service Developer Guide
(https://docs.aws.amazon.com/ses/latest/DeveloperGuide/). The I<Amazon
SES Developer Guide> provides information and code samples that
demonstrate how to use Amazon SES API v2 features programmatically.

The Amazon SES API v2 is available in several AWS Regions and it
provides an endpoint for each of these Regions. For a list of all the
Regions and endpoints where the API is currently available, see AWS
Service Endpoints
(https://docs.aws.amazon.com/general/latest/gr/rande.html#ses_region)
in the I<Amazon Web Services General Reference>. To learn more about
AWS Regions, see Managing AWS Regions
(https://docs.aws.amazon.com/general/latest/gr/rande-manage.html) in
the I<Amazon Web Services General Reference>.

In each Region, AWS maintains multiple Availability Zones. These
Availability Zones are physically isolated from each other, but are
united by private, low-latency, high-throughput, and highly redundant
network connections. These Availability Zones enable us to provide very
high levels of availability and redundancy, while also minimizing
latency. To learn more about the number of Availability Zones that are
available in each Region, see AWS Global Infrastructure
(http://aws.amazon.com/about-aws/global-infrastructure/).

For the AWS API documentation, see L<https://docs.aws.amazon.com/ses/>


=head1 METHODS

=head2 CreateConfigurationSet

=over

=item ConfigurationSetName => Str

=item [DeliveryOptions => SESv2_DeliveryOptions]

=item [ReputationOptions => SESv2_ReputationOptions]

=item [SendingOptions => SESv2_SendingOptions]

=item [Tags => ArrayRef[SESv2_Tag]]

=item [TrackingOptions => SESv2_TrackingOptions]


=back

Each argument is described in detail in: L<Paws::SESv2::CreateConfigurationSet>

Returns: a L<Paws::SESv2::CreateConfigurationSetResponse> instance

Create a configuration set. I<Configuration sets> are groups of rules
that you can apply to the emails that you send. You apply a
configuration set to an email by specifying the name of the
configuration set when you call the Amazon SES API v2. When you apply a
configuration set to an email, all of the rules in that configuration
set are applied to the email.


=head2 CreateConfigurationSetEventDestination

=over

=item ConfigurationSetName => Str

=item EventDestination => SESv2_EventDestinationDefinition

=item EventDestinationName => Str


=back

Each argument is described in detail in: L<Paws::SESv2::CreateConfigurationSetEventDestination>

Returns: a L<Paws::SESv2::CreateConfigurationSetEventDestinationResponse> instance

Create an event destination. I<Events> include message sends,
deliveries, opens, clicks, bounces, and complaints. I<Event
destinations> are places that you can send information about these
events to. For example, you can send event data to Amazon SNS to
receive notifications when you receive bounces or complaints, or you
can use Amazon Kinesis Data Firehose to stream data to Amazon S3 for
long-term storage.

A single configuration set can include more than one event destination.


=head2 CreateDedicatedIpPool

=over

=item PoolName => Str

=item [Tags => ArrayRef[SESv2_Tag]]


=back

Each argument is described in detail in: L<Paws::SESv2::CreateDedicatedIpPool>

Returns: a L<Paws::SESv2::CreateDedicatedIpPoolResponse> instance

Create a new pool of dedicated IP addresses. A pool can include one or
more dedicated IP addresses that are associated with your AWS account.
You can associate a pool with a configuration set. When you send an
email that uses that configuration set, the message is sent from one of
the addresses in the associated pool.


=head2 CreateDeliverabilityTestReport

=over

=item Content => SESv2_EmailContent

=item FromEmailAddress => Str

=item [ReportName => Str]

=item [Tags => ArrayRef[SESv2_Tag]]


=back

Each argument is described in detail in: L<Paws::SESv2::CreateDeliverabilityTestReport>

Returns: a L<Paws::SESv2::CreateDeliverabilityTestReportResponse> instance

Create a new predictive inbox placement test. Predictive inbox
placement tests can help you predict how your messages will be handled
by various email providers around the world. When you perform a
predictive inbox placement test, you provide a sample message that
contains the content that you plan to send to your customers. Amazon
SES API v2 then sends that message to special email addresses spread
across several major email providers. After about 24 hours, the test is
complete, and you can use the C<GetDeliverabilityTestReport> operation
to view the results of the test.


=head2 CreateEmailIdentity

=over

=item EmailIdentity => Str

=item [Tags => ArrayRef[SESv2_Tag]]


=back

Each argument is described in detail in: L<Paws::SESv2::CreateEmailIdentity>

Returns: a L<Paws::SESv2::CreateEmailIdentityResponse> instance

Starts the process of verifying an email identity. An I<identity> is an
email address or domain that you use when you send email. Before you
can use an identity to send email, you first have to verify it. By
verifying an identity, you demonstrate that you're the owner of the
identity, and that you've given Amazon SES API v2 permission to send
email from the identity.

When you verify an email address, Amazon SES sends an email to the
address. Your email address is verified as soon as you follow the link
in the verification email.

When you verify a domain, this operation provides a set of DKIM tokens,
which you can convert into CNAME tokens. You add these CNAME tokens to
the DNS configuration for your domain. Your domain is verified when
Amazon SES detects these records in the DNS configuration for your
domain. For some DNS providers, it can take 72 hours or more to
complete the domain verification process.


=head2 DeleteConfigurationSet

=over

=item ConfigurationSetName => Str


=back

Each argument is described in detail in: L<Paws::SESv2::DeleteConfigurationSet>

Returns: a L<Paws::SESv2::DeleteConfigurationSetResponse> instance

Delete an existing configuration set.

I<Configuration sets> are groups of rules that you can apply to the
emails you send. You apply a configuration set to an email by including
a reference to the configuration set in the headers of the email. When
you apply a configuration set to an email, all of the rules in that
configuration set are applied to the email.


=head2 DeleteConfigurationSetEventDestination

=over

=item ConfigurationSetName => Str

=item EventDestinationName => Str


=back

Each argument is described in detail in: L<Paws::SESv2::DeleteConfigurationSetEventDestination>

Returns: a L<Paws::SESv2::DeleteConfigurationSetEventDestinationResponse> instance

Delete an event destination.

I<Events> include message sends, deliveries, opens, clicks, bounces,
and complaints. I<Event destinations> are places that you can send
information about these events to. For example, you can send event data
to Amazon SNS to receive notifications when you receive bounces or
complaints, or you can use Amazon Kinesis Data Firehose to stream data
to Amazon S3 for long-term storage.


=head2 DeleteDedicatedIpPool

=over

=item PoolName => Str


=back

Each argument is described in detail in: L<Paws::SESv2::DeleteDedicatedIpPool>

Returns: a L<Paws::SESv2::DeleteDedicatedIpPoolResponse> instance

Delete a dedicated IP pool.


=head2 DeleteEmailIdentity

=over

=item EmailIdentity => Str


=back

Each argument is described in detail in: L<Paws::SESv2::DeleteEmailIdentity>

Returns: a L<Paws::SESv2::DeleteEmailIdentityResponse> instance

Deletes an email identity. An identity can be either an email address
or a domain name.


=head2 GetAccount






Each argument is described in detail in: L<Paws::SESv2::GetAccount>

Returns: a L<Paws::SESv2::GetAccountResponse> instance

Obtain information about the email-sending status and capabilities of
your Amazon SES account in the current AWS Region.


=head2 GetBlacklistReports

=over

=item BlacklistItemNames => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::SESv2::GetBlacklistReports>

Returns: a L<Paws::SESv2::GetBlacklistReportsResponse> instance

Retrieve a list of the blacklists that your dedicated IP addresses
appear on.


=head2 GetConfigurationSet

=over

=item ConfigurationSetName => Str


=back

Each argument is described in detail in: L<Paws::SESv2::GetConfigurationSet>

Returns: a L<Paws::SESv2::GetConfigurationSetResponse> instance

Get information about an existing configuration set, including the
dedicated IP pool that it's associated with, whether or not it's
enabled for sending email, and more.

I<Configuration sets> are groups of rules that you can apply to the
emails you send. You apply a configuration set to an email by including
a reference to the configuration set in the headers of the email. When
you apply a configuration set to an email, all of the rules in that
configuration set are applied to the email.


=head2 GetConfigurationSetEventDestinations

=over

=item ConfigurationSetName => Str


=back

Each argument is described in detail in: L<Paws::SESv2::GetConfigurationSetEventDestinations>

Returns: a L<Paws::SESv2::GetConfigurationSetEventDestinationsResponse> instance

Retrieve a list of event destinations that are associated with a
configuration set.

I<Events> include message sends, deliveries, opens, clicks, bounces,
and complaints. I<Event destinations> are places that you can send
information about these events to. For example, you can send event data
to Amazon SNS to receive notifications when you receive bounces or
complaints, or you can use Amazon Kinesis Data Firehose to stream data
to Amazon S3 for long-term storage.


=head2 GetDedicatedIp

=over

=item Ip => Str


=back

Each argument is described in detail in: L<Paws::SESv2::GetDedicatedIp>

Returns: a L<Paws::SESv2::GetDedicatedIpResponse> instance

Get information about a dedicated IP address, including the name of the
dedicated IP pool that it's associated with, as well information about
the automatic warm-up process for the address.


=head2 GetDedicatedIps

=over

=item [NextToken => Str]

=item [PageSize => Int]

=item [PoolName => Str]


=back

Each argument is described in detail in: L<Paws::SESv2::GetDedicatedIps>

Returns: a L<Paws::SESv2::GetDedicatedIpsResponse> instance

List the dedicated IP addresses that are associated with your AWS
account.


=head2 GetDeliverabilityDashboardOptions






Each argument is described in detail in: L<Paws::SESv2::GetDeliverabilityDashboardOptions>

Returns: a L<Paws::SESv2::GetDeliverabilityDashboardOptionsResponse> instance

Retrieve information about the status of the Deliverability dashboard
for your account. When the Deliverability dashboard is enabled, you
gain access to reputation, deliverability, and other metrics for the
domains that you use to send email. You also gain the ability to
perform predictive inbox placement tests.

When you use the Deliverability dashboard, you pay a monthly
subscription charge, in addition to any other fees that you accrue by
using Amazon SES and other AWS services. For more information about the
features and cost of a Deliverability dashboard subscription, see
Amazon Pinpoint Pricing (http://aws.amazon.com/pinpoint/pricing/).


=head2 GetDeliverabilityTestReport

=over

=item ReportId => Str


=back

Each argument is described in detail in: L<Paws::SESv2::GetDeliverabilityTestReport>

Returns: a L<Paws::SESv2::GetDeliverabilityTestReportResponse> instance

Retrieve the results of a predictive inbox placement test.


=head2 GetDomainDeliverabilityCampaign

=over

=item CampaignId => Str


=back

Each argument is described in detail in: L<Paws::SESv2::GetDomainDeliverabilityCampaign>

Returns: a L<Paws::SESv2::GetDomainDeliverabilityCampaignResponse> instance

Retrieve all the deliverability data for a specific campaign. This data
is available for a campaign only if the campaign sent email by using a
domain that the Deliverability dashboard is enabled for.


=head2 GetDomainStatisticsReport

=over

=item Domain => Str

=item EndDate => Str

=item StartDate => Str


=back

Each argument is described in detail in: L<Paws::SESv2::GetDomainStatisticsReport>

Returns: a L<Paws::SESv2::GetDomainStatisticsReportResponse> instance

Retrieve inbox placement and engagement rates for the domains that you
use to send email.


=head2 GetEmailIdentity

=over

=item EmailIdentity => Str


=back

Each argument is described in detail in: L<Paws::SESv2::GetEmailIdentity>

Returns: a L<Paws::SESv2::GetEmailIdentityResponse> instance

Provides information about a specific identity, including the
identity's verification status, its DKIM authentication status, and its
custom Mail-From settings.


=head2 ListConfigurationSets

=over

=item [NextToken => Str]

=item [PageSize => Int]


=back

Each argument is described in detail in: L<Paws::SESv2::ListConfigurationSets>

Returns: a L<Paws::SESv2::ListConfigurationSetsResponse> instance

List all of the configuration sets associated with your account in the
current region.

I<Configuration sets> are groups of rules that you can apply to the
emails you send. You apply a configuration set to an email by including
a reference to the configuration set in the headers of the email. When
you apply a configuration set to an email, all of the rules in that
configuration set are applied to the email.


=head2 ListDedicatedIpPools

=over

=item [NextToken => Str]

=item [PageSize => Int]


=back

Each argument is described in detail in: L<Paws::SESv2::ListDedicatedIpPools>

Returns: a L<Paws::SESv2::ListDedicatedIpPoolsResponse> instance

List all of the dedicated IP pools that exist in your AWS account in
the current Region.


=head2 ListDeliverabilityTestReports

=over

=item [NextToken => Str]

=item [PageSize => Int]


=back

Each argument is described in detail in: L<Paws::SESv2::ListDeliverabilityTestReports>

Returns: a L<Paws::SESv2::ListDeliverabilityTestReportsResponse> instance

Show a list of the predictive inbox placement tests that you've
performed, regardless of their statuses. For predictive inbox placement
tests that are complete, you can use the C<GetDeliverabilityTestReport>
operation to view the results.


=head2 ListDomainDeliverabilityCampaigns

=over

=item EndDate => Str

=item StartDate => Str

=item SubscribedDomain => Str

=item [NextToken => Str]

=item [PageSize => Int]


=back

Each argument is described in detail in: L<Paws::SESv2::ListDomainDeliverabilityCampaigns>

Returns: a L<Paws::SESv2::ListDomainDeliverabilityCampaignsResponse> instance

Retrieve deliverability data for all the campaigns that used a specific
domain to send email during a specified time range. This data is
available for a domain only if you enabled the Deliverability dashboard
for the domain.


=head2 ListEmailIdentities

=over

=item [NextToken => Str]

=item [PageSize => Int]


=back

Each argument is described in detail in: L<Paws::SESv2::ListEmailIdentities>

Returns: a L<Paws::SESv2::ListEmailIdentitiesResponse> instance

Returns a list of all of the email identities that are associated with
your AWS account. An identity can be either an email address or a
domain. This operation returns identities that are verified as well as
those that aren't. This operation returns identities that are
associated with Amazon SES and Amazon Pinpoint.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::SESv2::ListTagsForResource>

Returns: a L<Paws::SESv2::ListTagsForResourceResponse> instance

Retrieve a list of the tags (keys and values) that are associated with
a specified resource. A I<tag> is a label that you optionally define
and associate with a resource. Each tag consists of a required I<tag
key> and an optional associated I<tag value>. A tag key is a general
label that acts as a category for more specific tag values. A tag value
acts as a descriptor within a tag key.


=head2 PutAccountDedicatedIpWarmupAttributes

=over

=item [AutoWarmupEnabled => Bool]


=back

Each argument is described in detail in: L<Paws::SESv2::PutAccountDedicatedIpWarmupAttributes>

Returns: a L<Paws::SESv2::PutAccountDedicatedIpWarmupAttributesResponse> instance

Enable or disable the automatic warm-up feature for dedicated IP
addresses.


=head2 PutAccountSendingAttributes

=over

=item [SendingEnabled => Bool]


=back

Each argument is described in detail in: L<Paws::SESv2::PutAccountSendingAttributes>

Returns: a L<Paws::SESv2::PutAccountSendingAttributesResponse> instance

Enable or disable the ability of your account to send email.


=head2 PutConfigurationSetDeliveryOptions

=over

=item ConfigurationSetName => Str

=item [SendingPoolName => Str]

=item [TlsPolicy => Str]


=back

Each argument is described in detail in: L<Paws::SESv2::PutConfigurationSetDeliveryOptions>

Returns: a L<Paws::SESv2::PutConfigurationSetDeliveryOptionsResponse> instance

Associate a configuration set with a dedicated IP pool. You can use
dedicated IP pools to create groups of dedicated IP addresses for
sending specific types of email.


=head2 PutConfigurationSetReputationOptions

=over

=item ConfigurationSetName => Str

=item [ReputationMetricsEnabled => Bool]


=back

Each argument is described in detail in: L<Paws::SESv2::PutConfigurationSetReputationOptions>

Returns: a L<Paws::SESv2::PutConfigurationSetReputationOptionsResponse> instance

Enable or disable collection of reputation metrics for emails that you
send using a particular configuration set in a specific AWS Region.


=head2 PutConfigurationSetSendingOptions

=over

=item ConfigurationSetName => Str

=item [SendingEnabled => Bool]


=back

Each argument is described in detail in: L<Paws::SESv2::PutConfigurationSetSendingOptions>

Returns: a L<Paws::SESv2::PutConfigurationSetSendingOptionsResponse> instance

Enable or disable email sending for messages that use a particular
configuration set in a specific AWS Region.


=head2 PutConfigurationSetTrackingOptions

=over

=item ConfigurationSetName => Str

=item [CustomRedirectDomain => Str]


=back

Each argument is described in detail in: L<Paws::SESv2::PutConfigurationSetTrackingOptions>

Returns: a L<Paws::SESv2::PutConfigurationSetTrackingOptionsResponse> instance

Specify a custom domain to use for open and click tracking elements in
email that you send.


=head2 PutDedicatedIpInPool

=over

=item DestinationPoolName => Str

=item Ip => Str


=back

Each argument is described in detail in: L<Paws::SESv2::PutDedicatedIpInPool>

Returns: a L<Paws::SESv2::PutDedicatedIpInPoolResponse> instance

Move a dedicated IP address to an existing dedicated IP pool.

The dedicated IP address that you specify must already exist, and must
be associated with your AWS account.

The dedicated IP pool you specify must already exist. You can create a
new pool by using the C<CreateDedicatedIpPool> operation.


=head2 PutDedicatedIpWarmupAttributes

=over

=item Ip => Str

=item WarmupPercentage => Int


=back

Each argument is described in detail in: L<Paws::SESv2::PutDedicatedIpWarmupAttributes>

Returns: a L<Paws::SESv2::PutDedicatedIpWarmupAttributesResponse> instance




=head2 PutDeliverabilityDashboardOption

=over

=item DashboardEnabled => Bool

=item [SubscribedDomains => ArrayRef[SESv2_DomainDeliverabilityTrackingOption]]


=back

Each argument is described in detail in: L<Paws::SESv2::PutDeliverabilityDashboardOption>

Returns: a L<Paws::SESv2::PutDeliverabilityDashboardOptionResponse> instance

Enable or disable the Deliverability dashboard. When you enable the
Deliverability dashboard, you gain access to reputation,
deliverability, and other metrics for the domains that you use to send
email. You also gain the ability to perform predictive inbox placement
tests.

When you use the Deliverability dashboard, you pay a monthly
subscription charge, in addition to any other fees that you accrue by
using Amazon SES and other AWS services. For more information about the
features and cost of a Deliverability dashboard subscription, see
Amazon Pinpoint Pricing (http://aws.amazon.com/pinpoint/pricing/).


=head2 PutEmailIdentityDkimAttributes

=over

=item EmailIdentity => Str

=item [SigningEnabled => Bool]


=back

Each argument is described in detail in: L<Paws::SESv2::PutEmailIdentityDkimAttributes>

Returns: a L<Paws::SESv2::PutEmailIdentityDkimAttributesResponse> instance

Used to enable or disable DKIM authentication for an email identity.


=head2 PutEmailIdentityFeedbackAttributes

=over

=item EmailIdentity => Str

=item [EmailForwardingEnabled => Bool]


=back

Each argument is described in detail in: L<Paws::SESv2::PutEmailIdentityFeedbackAttributes>

Returns: a L<Paws::SESv2::PutEmailIdentityFeedbackAttributesResponse> instance

Used to enable or disable feedback forwarding for an identity. This
setting determines what happens when an identity is used to send an
email that results in a bounce or complaint event.

If the value is C<true>, you receive email notifications when bounce or
complaint events occur. These notifications are sent to the address
that you specified in the C<Return-Path> header of the original email.

You're required to have a method of tracking bounces and complaints. If
you haven't set up another mechanism for receiving bounce or complaint
notifications (for example, by setting up an event destination), you
receive an email notification when these events occur (even if this
setting is disabled).


=head2 PutEmailIdentityMailFromAttributes

=over

=item EmailIdentity => Str

=item [BehaviorOnMxFailure => Str]

=item [MailFromDomain => Str]


=back

Each argument is described in detail in: L<Paws::SESv2::PutEmailIdentityMailFromAttributes>

Returns: a L<Paws::SESv2::PutEmailIdentityMailFromAttributesResponse> instance

Used to enable or disable the custom Mail-From domain configuration for
an email identity.


=head2 SendEmail

=over

=item Content => SESv2_EmailContent

=item Destination => SESv2_Destination

=item [ConfigurationSetName => Str]

=item [EmailTags => ArrayRef[SESv2_MessageTag]]

=item [FeedbackForwardingEmailAddress => Str]

=item [FromEmailAddress => Str]

=item [ReplyToAddresses => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::SESv2::SendEmail>

Returns: a L<Paws::SESv2::SendEmailResponse> instance

Sends an email message. You can use the Amazon SES API v2 to send two
types of messages:

=over

=item *

B<Simple> E<ndash> A standard email message. When you create this type
of message, you specify the sender, the recipient, and the message
body, and the Amazon SES API v2 assembles the message for you.

=item *

B<Raw> E<ndash> A raw, MIME-formatted email message. When you send this
type of email, you have to specify all of the message headers, as well
as the message body. You can use this message type to send messages
that contain attachments. The message that you specify has to be a
valid MIME message.

=back



=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[SESv2_Tag]


=back

Each argument is described in detail in: L<Paws::SESv2::TagResource>

Returns: a L<Paws::SESv2::TagResourceResponse> instance

Add one or more tags (keys and values) to a specified resource. A
I<tag> is a label that you optionally define and associate with a
resource. Tags can help you categorize and manage resources in
different ways, such as by purpose, owner, environment, or other
criteria. A resource can have as many as 50 tags.

Each tag consists of a required I<tag key> and an associated I<tag
value>, both of which you define. A tag key is a general label that
acts as a category for more specific tag values. A tag value acts as a
descriptor within a tag key.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::SESv2::UntagResource>

Returns: a L<Paws::SESv2::UntagResourceResponse> instance

Remove one or more tags (keys and values) from a specified resource.


=head2 UpdateConfigurationSetEventDestination

=over

=item ConfigurationSetName => Str

=item EventDestination => SESv2_EventDestinationDefinition

=item EventDestinationName => Str


=back

Each argument is described in detail in: L<Paws::SESv2::UpdateConfigurationSetEventDestination>

Returns: a L<Paws::SESv2::UpdateConfigurationSetEventDestinationResponse> instance

Update the configuration of an event destination for a configuration
set.

I<Events> include message sends, deliveries, opens, clicks, bounces,
and complaints. I<Event destinations> are places that you can send
information about these events to. For example, you can send event data
to Amazon SNS to receive notifications when you receive bounces or
complaints, or you can use Amazon Kinesis Data Firehose to stream data
to Amazon S3 for long-term storage.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

