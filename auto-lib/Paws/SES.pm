package Paws::SES;
  use Moose;
  sub service { 'email' }
  sub version { '2010-12-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::QueryCaller';

  
  sub CloneReceiptRuleSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::CloneReceiptRuleSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateConfigurationSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::CreateConfigurationSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateConfigurationSetEventDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::CreateConfigurationSetEventDestination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateConfigurationSetTrackingOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::CreateConfigurationSetTrackingOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateReceiptFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::CreateReceiptFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateReceiptRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::CreateReceiptRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateReceiptRuleSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::CreateReceiptRuleSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::CreateTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConfigurationSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::DeleteConfigurationSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConfigurationSetEventDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::DeleteConfigurationSetEventDestination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConfigurationSetTrackingOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::DeleteConfigurationSetTrackingOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIdentity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::DeleteIdentity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIdentityPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::DeleteIdentityPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteReceiptFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::DeleteReceiptFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteReceiptRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::DeleteReceiptRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteReceiptRuleSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::DeleteReceiptRuleSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::DeleteTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVerifiedEmailAddress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::DeleteVerifiedEmailAddress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeActiveReceiptRuleSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::DescribeActiveReceiptRuleSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeConfigurationSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::DescribeConfigurationSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReceiptRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::DescribeReceiptRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReceiptRuleSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::DescribeReceiptRuleSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIdentityDkimAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::GetIdentityDkimAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIdentityMailFromDomainAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::GetIdentityMailFromDomainAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIdentityNotificationAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::GetIdentityNotificationAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIdentityPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::GetIdentityPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIdentityVerificationAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::GetIdentityVerificationAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSendQuota {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::GetSendQuota', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSendStatistics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::GetSendStatistics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::GetTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListConfigurationSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::ListConfigurationSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIdentities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::ListIdentities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIdentityPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::ListIdentityPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListReceiptFilters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::ListReceiptFilters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListReceiptRuleSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::ListReceiptRuleSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTemplates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::ListTemplates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListVerifiedEmailAddresses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::ListVerifiedEmailAddresses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutIdentityPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::PutIdentityPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReorderReceiptRuleSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::ReorderReceiptRuleSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendBounce {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::SendBounce', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendBulkTemplatedEmail {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::SendBulkTemplatedEmail', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendEmail {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::SendEmail', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendRawEmail {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::SendRawEmail', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendTemplatedEmail {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::SendTemplatedEmail', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetActiveReceiptRuleSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::SetActiveReceiptRuleSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetIdentityDkimEnabled {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::SetIdentityDkimEnabled', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetIdentityFeedbackForwardingEnabled {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::SetIdentityFeedbackForwardingEnabled', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetIdentityHeadersInNotificationsEnabled {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::SetIdentityHeadersInNotificationsEnabled', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetIdentityMailFromDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::SetIdentityMailFromDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetIdentityNotificationTopic {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::SetIdentityNotificationTopic', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetReceiptRulePosition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::SetReceiptRulePosition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TestRenderTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::TestRenderTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateConfigurationSetEventDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::UpdateConfigurationSetEventDestination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateConfigurationSetTrackingOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::UpdateConfigurationSetTrackingOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateReceiptRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::UpdateReceiptRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::UpdateTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub VerifyDomainDkim {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::VerifyDomainDkim', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub VerifyDomainIdentity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::VerifyDomainIdentity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub VerifyEmailAddress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::VerifyEmailAddress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub VerifyEmailIdentity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::VerifyEmailIdentity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllIdentities {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListIdentities(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListIdentities(@_, NextToken => $next_result->NextToken);
        push @{ $result->Identities }, @{ $next_result->Identities };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Identities') foreach (@{ $result->Identities });
        $result = $self->ListIdentities(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Identities') foreach (@{ $result->Identities });
    }

    return undef
  }


  sub operations { qw/CloneReceiptRuleSet CreateConfigurationSet CreateConfigurationSetEventDestination CreateConfigurationSetTrackingOptions CreateReceiptFilter CreateReceiptRule CreateReceiptRuleSet CreateTemplate DeleteConfigurationSet DeleteConfigurationSetEventDestination DeleteConfigurationSetTrackingOptions DeleteIdentity DeleteIdentityPolicy DeleteReceiptFilter DeleteReceiptRule DeleteReceiptRuleSet DeleteTemplate DeleteVerifiedEmailAddress DescribeActiveReceiptRuleSet DescribeConfigurationSet DescribeReceiptRule DescribeReceiptRuleSet GetIdentityDkimAttributes GetIdentityMailFromDomainAttributes GetIdentityNotificationAttributes GetIdentityPolicies GetIdentityVerificationAttributes GetSendQuota GetSendStatistics GetTemplate ListConfigurationSets ListIdentities ListIdentityPolicies ListReceiptFilters ListReceiptRuleSets ListTemplates ListVerifiedEmailAddresses PutIdentityPolicy ReorderReceiptRuleSet SendBounce SendBulkTemplatedEmail SendEmail SendRawEmail SendTemplatedEmail SetActiveReceiptRuleSet SetIdentityDkimEnabled SetIdentityFeedbackForwardingEnabled SetIdentityHeadersInNotificationsEnabled SetIdentityMailFromDomain SetIdentityNotificationTopic SetReceiptRulePosition TestRenderTemplate UpdateConfigurationSetEventDestination UpdateConfigurationSetTrackingOptions UpdateReceiptRule UpdateTemplate VerifyDomainDkim VerifyDomainIdentity VerifyEmailAddress VerifyEmailIdentity / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SES - Perl Interface to AWS Amazon Simple Email Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('SES');
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

Amazon Simple Email Service

This is the API Reference for Amazon Simple Email Service (Amazon SES).
This documentation is intended to be used in conjunction with the
Amazon SES Developer Guide.

For a list of Amazon SES endpoints to use in service requests, see
Regions and Amazon SES in the Amazon SES Developer Guide.

=head1 METHODS

=head2 CloneReceiptRuleSet(OriginalRuleSetName => Str, RuleSetName => Str)

Each argument is described in detail in: L<Paws::SES::CloneReceiptRuleSet>

Returns: a L<Paws::SES::CloneReceiptRuleSetResponse> instance

  Creates a receipt rule set by cloning an existing one. All receipt
rules and configurations are copied to the new receipt rule set and are
completely independent of the source rule set.

For information about setting up rule sets, see the Amazon SES
Developer Guide.

You can execute this operation no more than once per second.


=head2 CreateConfigurationSet(ConfigurationSet => L<Paws::SES::ConfigurationSet>)

Each argument is described in detail in: L<Paws::SES::CreateConfigurationSet>

Returns: a L<Paws::SES::CreateConfigurationSetResponse> instance

  Creates a configuration set.

Configuration sets enable you to publish email sending events. For
information about using configuration sets, see the Amazon SES
Developer Guide.

You can execute this operation no more than once per second.


=head2 CreateConfigurationSetEventDestination(ConfigurationSetName => Str, EventDestination => L<Paws::SES::EventDestination>)

Each argument is described in detail in: L<Paws::SES::CreateConfigurationSetEventDestination>

Returns: a L<Paws::SES::CreateConfigurationSetEventDestinationResponse> instance

  Creates a configuration set event destination.

When you create or update an event destination, you must provide one,
and only one, destination. The destination can be Amazon CloudWatch,
Amazon Kinesis Firehose, or Amazon Simple Notification Service (Amazon
SNS).

An event destination is the AWS service to which Amazon SES publishes
the email sending events associated with a configuration set. For
information about using configuration sets, see the Amazon SES
Developer Guide.

You can execute this operation no more than once per second.


=head2 CreateConfigurationSetTrackingOptions(ConfigurationSetName => Str, TrackingOptions => L<Paws::SES::TrackingOptions>)

Each argument is described in detail in: L<Paws::SES::CreateConfigurationSetTrackingOptions>

Returns: a L<Paws::SES::CreateConfigurationSetTrackingOptionsResponse> instance

  Creates an association between a configuration set and a custom domain
for open and click event tracking.

By default, images and links used for tracking open and click events
are hosted on domains operated by Amazon SES. You can configure a
subdomain of your own to handle these events. For information about
using configuration sets, see Configuring Custom Domains to Handle Open
and Click Tracking in the Amazon SES Developer Guide.


=head2 CreateReceiptFilter(Filter => L<Paws::SES::ReceiptFilter>)

Each argument is described in detail in: L<Paws::SES::CreateReceiptFilter>

Returns: a L<Paws::SES::CreateReceiptFilterResponse> instance

  Creates a new IP address filter.

For information about setting up IP address filters, see the Amazon SES
Developer Guide.

You can execute this operation no more than once per second.


=head2 CreateReceiptRule(Rule => L<Paws::SES::ReceiptRule>, RuleSetName => Str, [After => Str])

Each argument is described in detail in: L<Paws::SES::CreateReceiptRule>

Returns: a L<Paws::SES::CreateReceiptRuleResponse> instance

  Creates a receipt rule.

For information about setting up receipt rules, see the Amazon SES
Developer Guide.

You can execute this operation no more than once per second.


=head2 CreateReceiptRuleSet(RuleSetName => Str)

Each argument is described in detail in: L<Paws::SES::CreateReceiptRuleSet>

Returns: a L<Paws::SES::CreateReceiptRuleSetResponse> instance

  Creates an empty receipt rule set.

For information about setting up receipt rule sets, see the Amazon SES
Developer Guide.

You can execute this operation no more than once per second.


=head2 CreateTemplate(Template => L<Paws::SES::Template>)

Each argument is described in detail in: L<Paws::SES::CreateTemplate>

Returns: a L<Paws::SES::CreateTemplateResponse> instance

  Creates an email template. Email templates enable you to send
personalized email to one or more destinations in a single API
operation. For more information, see the Amazon SES Developer Guide.

You can execute this operation no more than once per second.


=head2 DeleteConfigurationSet(ConfigurationSetName => Str)

Each argument is described in detail in: L<Paws::SES::DeleteConfigurationSet>

Returns: a L<Paws::SES::DeleteConfigurationSetResponse> instance

  Deletes a configuration set. Configuration sets enable you to publish
email sending events. For information about using configuration sets,
see the Amazon SES Developer Guide.

You can execute this operation no more than once per second.


=head2 DeleteConfigurationSetEventDestination(ConfigurationSetName => Str, EventDestinationName => Str)

Each argument is described in detail in: L<Paws::SES::DeleteConfigurationSetEventDestination>

Returns: a L<Paws::SES::DeleteConfigurationSetEventDestinationResponse> instance

  Deletes a configuration set event destination. Configuration set event
destinations are associated with configuration sets, which enable you
to publish email sending events. For information about using
configuration sets, see the Amazon SES Developer Guide.

You can execute this operation no more than once per second.


=head2 DeleteConfigurationSetTrackingOptions(ConfigurationSetName => Str)

Each argument is described in detail in: L<Paws::SES::DeleteConfigurationSetTrackingOptions>

Returns: a L<Paws::SES::DeleteConfigurationSetTrackingOptionsResponse> instance

  Deletes an association between a configuration set and a custom domain
for open and click event tracking.

By default, images and links used for tracking open and click events
are hosted on domains operated by Amazon SES. You can configure a
subdomain of your own to handle these events. For information about
using configuration sets, see Configuring Custom Domains to Handle Open
and Click Tracking in the Amazon SES Developer Guide.

Deleting this kind of association will result in emails sent using the
specified configuration set to capture open and click events using the
standard, Amazon SES-operated domains.


=head2 DeleteIdentity(Identity => Str)

Each argument is described in detail in: L<Paws::SES::DeleteIdentity>

Returns: a L<Paws::SES::DeleteIdentityResponse> instance

  Deletes the specified identity (an email address or a domain) from the
list of verified identities.

You can execute this operation no more than once per second.


=head2 DeleteIdentityPolicy(Identity => Str, PolicyName => Str)

Each argument is described in detail in: L<Paws::SES::DeleteIdentityPolicy>

Returns: a L<Paws::SES::DeleteIdentityPolicyResponse> instance

  Deletes the specified sending authorization policy for the given
identity (an email address or a domain). This API returns successfully
even if a policy with the specified name does not exist.

This API is for the identity owner only. If you have not verified the
identity, this API will return an error.

Sending authorization is a feature that enables an identity owner to
authorize other senders to use its identities. For information about
using sending authorization, see the Amazon SES Developer Guide.

You can execute this operation no more than once per second.


=head2 DeleteReceiptFilter(FilterName => Str)

Each argument is described in detail in: L<Paws::SES::DeleteReceiptFilter>

Returns: a L<Paws::SES::DeleteReceiptFilterResponse> instance

  Deletes the specified IP address filter.

For information about managing IP address filters, see the Amazon SES
Developer Guide.

You can execute this operation no more than once per second.


=head2 DeleteReceiptRule(RuleName => Str, RuleSetName => Str)

Each argument is described in detail in: L<Paws::SES::DeleteReceiptRule>

Returns: a L<Paws::SES::DeleteReceiptRuleResponse> instance

  Deletes the specified receipt rule.

For information about managing receipt rules, see the Amazon SES
Developer Guide.

You can execute this operation no more than once per second.


=head2 DeleteReceiptRuleSet(RuleSetName => Str)

Each argument is described in detail in: L<Paws::SES::DeleteReceiptRuleSet>

Returns: a L<Paws::SES::DeleteReceiptRuleSetResponse> instance

  Deletes the specified receipt rule set and all of the receipt rules it
contains.

The currently active rule set cannot be deleted.

For information about managing receipt rule sets, see the Amazon SES
Developer Guide.

You can execute this operation no more than once per second.


=head2 DeleteTemplate(TemplateName => Str)

Each argument is described in detail in: L<Paws::SES::DeleteTemplate>

Returns: a L<Paws::SES::DeleteTemplateResponse> instance

  Deletes an email template.

You can execute this operation no more than once per second.


=head2 DeleteVerifiedEmailAddress(EmailAddress => Str)

Each argument is described in detail in: L<Paws::SES::DeleteVerifiedEmailAddress>

Returns: nothing

  Deprecated. Use the C<DeleteIdentity> operation to delete email
addresses and domains.


=head2 DescribeActiveReceiptRuleSet()

Each argument is described in detail in: L<Paws::SES::DescribeActiveReceiptRuleSet>

Returns: a L<Paws::SES::DescribeActiveReceiptRuleSetResponse> instance

  Returns the metadata and receipt rules for the receipt rule set that is
currently active.

For information about setting up receipt rule sets, see the Amazon SES
Developer Guide.

You can execute this operation no more than once per second.


=head2 DescribeConfigurationSet(ConfigurationSetName => Str, [ConfigurationSetAttributeNames => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::SES::DescribeConfigurationSet>

Returns: a L<Paws::SES::DescribeConfigurationSetResponse> instance

  Returns the details of the specified configuration set. For information
about using configuration sets, see the Amazon SES Developer Guide.

You can execute this operation no more than once per second.


=head2 DescribeReceiptRule(RuleName => Str, RuleSetName => Str)

Each argument is described in detail in: L<Paws::SES::DescribeReceiptRule>

Returns: a L<Paws::SES::DescribeReceiptRuleResponse> instance

  Returns the details of the specified receipt rule.

For information about setting up receipt rules, see the Amazon SES
Developer Guide.

You can execute this operation no more than once per second.


=head2 DescribeReceiptRuleSet(RuleSetName => Str)

Each argument is described in detail in: L<Paws::SES::DescribeReceiptRuleSet>

Returns: a L<Paws::SES::DescribeReceiptRuleSetResponse> instance

  Returns the details of the specified receipt rule set.

For information about managing receipt rule sets, see the Amazon SES
Developer Guide.

You can execute this operation no more than once per second.


=head2 GetIdentityDkimAttributes(Identities => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::SES::GetIdentityDkimAttributes>

Returns: a L<Paws::SES::GetIdentityDkimAttributesResponse> instance

  Returns the current status of Easy DKIM signing for an entity. For
domain name identities, this operation also returns the DKIM tokens
that are required for Easy DKIM signing, and whether Amazon SES has
successfully verified that these tokens have been published.

This operation takes a list of identities as input and returns the
following information for each:

=over

=item *

Whether Easy DKIM signing is enabled or disabled.

=item *

A set of DKIM tokens that represent the identity. If the identity is an
email address, the tokens represent the domain of that address.

=item *

Whether Amazon SES has successfully verified the DKIM tokens published
in the domain's DNS. This information is only returned for domain name
identities, not for email addresses.

=back

This operation is throttled at one request per second and can only get
DKIM attributes for up to 100 identities at a time.

For more information about creating DNS records using DKIM tokens, go
to the Amazon SES Developer Guide.


=head2 GetIdentityMailFromDomainAttributes(Identities => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::SES::GetIdentityMailFromDomainAttributes>

Returns: a L<Paws::SES::GetIdentityMailFromDomainAttributesResponse> instance

  Returns the custom MAIL FROM attributes for a list of identities (email
addresses : domains).

This operation is throttled at one request per second and can only get
custom MAIL FROM attributes for up to 100 identities at a time.


=head2 GetIdentityNotificationAttributes(Identities => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::SES::GetIdentityNotificationAttributes>

Returns: a L<Paws::SES::GetIdentityNotificationAttributesResponse> instance

  Given a list of verified identities (email addresses and/or domains),
returns a structure describing identity notification attributes.

This operation is throttled at one request per second and can only get
notification attributes for up to 100 identities at a time.

For more information about using notifications with Amazon SES, see the
Amazon SES Developer Guide.


=head2 GetIdentityPolicies(Identity => Str, PolicyNames => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::SES::GetIdentityPolicies>

Returns: a L<Paws::SES::GetIdentityPoliciesResponse> instance

  Returns the requested sending authorization policies for the given
identity (an email address or a domain). The policies are returned as a
map of policy names to policy contents. You can retrieve a maximum of
20 policies at a time.

This API is for the identity owner only. If you have not verified the
identity, this API will return an error.

Sending authorization is a feature that enables an identity owner to
authorize other senders to use its identities. For information about
using sending authorization, see the Amazon SES Developer Guide.

You can execute this operation no more than once per second.


=head2 GetIdentityVerificationAttributes(Identities => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::SES::GetIdentityVerificationAttributes>

Returns: a L<Paws::SES::GetIdentityVerificationAttributesResponse> instance

  Given a list of identities (email addresses and/or domains), returns
the verification status and (for domain identities) the verification
token for each identity.

The verification status of an email address is "Pending" until the
email address owner clicks the link within the verification email that
Amazon SES sent to that address. If the email address owner clicks the
link within 24 hours, the verification status of the email address
changes to "Success". If the link is not clicked within 24 hours, the
verification status changes to "Failed." In that case, if you still
want to verify the email address, you must restart the verification
process from the beginning.

For domain identities, the domain's verification status is "Pending" as
Amazon SES searches for the required TXT record in the DNS settings of
the domain. When Amazon SES detects the record, the domain's
verification status changes to "Success". If Amazon SES is unable to
detect the record within 72 hours, the domain's verification status
changes to "Failed." In that case, if you still want to verify the
domain, you must restart the verification process from the beginning.

This operation is throttled at one request per second and can only get
verification attributes for up to 100 identities at a time.


=head2 GetSendQuota( => )

Each argument is described in detail in: L<Paws::SES::GetSendQuota>

Returns: a L<Paws::SES::GetSendQuotaResponse> instance

  Provides the sending limits for the Amazon SES account.

You can execute this operation no more than once per second.


=head2 GetSendStatistics( => )

Each argument is described in detail in: L<Paws::SES::GetSendStatistics>

Returns: a L<Paws::SES::GetSendStatisticsResponse> instance

  Provides sending statistics for the Amazon SES account. The result is a
list of data points, representing the last two weeks of sending
activity. Each data point in the list contains statistics for a
15-minute period of time.

You can execute this operation no more than once per second.


=head2 GetTemplate(TemplateName => Str)

Each argument is described in detail in: L<Paws::SES::GetTemplate>

Returns: a L<Paws::SES::GetTemplateResponse> instance

  Displays the template object (which includes the Subject line, HTML
part and text part) for the template you specify.

You can execute this operation no more than once per second.


=head2 ListConfigurationSets([MaxItems => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::SES::ListConfigurationSets>

Returns: a L<Paws::SES::ListConfigurationSetsResponse> instance

  Provides a list of the configuration sets associated with your Amazon
SES account. For information about using configuration sets, see
Monitoring Your Amazon SES Sending Activity in the I<Amazon SES
Developer Guide.>

You can execute this operation no more than once per second. This
operation will return up to 1,000 configuration sets each time it is
run. If your Amazon SES account has more than 1,000 configuration sets,
this operation will also return a NextToken element. You can then
execute the C<ListConfigurationSets> operation again, passing the
C<NextToken> parameter and the value of the NextToken element to
retrieve additional results.


=head2 ListIdentities([IdentityType => Str, MaxItems => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::SES::ListIdentities>

Returns: a L<Paws::SES::ListIdentitiesResponse> instance

  Returns a list containing all of the identities (email addresses and
domains) for your AWS account, regardless of verification status.

You can execute this operation no more than once per second.


=head2 ListIdentityPolicies(Identity => Str)

Each argument is described in detail in: L<Paws::SES::ListIdentityPolicies>

Returns: a L<Paws::SES::ListIdentityPoliciesResponse> instance

  Returns a list of sending authorization policies that are attached to
the given identity (an email address or a domain). This API returns
only a list. If you want the actual policy content, you can use
C<GetIdentityPolicies>.

This API is for the identity owner only. If you have not verified the
identity, this API will return an error.

Sending authorization is a feature that enables an identity owner to
authorize other senders to use its identities. For information about
using sending authorization, see the Amazon SES Developer Guide.

You can execute this operation no more than once per second.


=head2 ListReceiptFilters()

Each argument is described in detail in: L<Paws::SES::ListReceiptFilters>

Returns: a L<Paws::SES::ListReceiptFiltersResponse> instance

  Lists the IP address filters associated with your AWS account.

For information about managing IP address filters, see the Amazon SES
Developer Guide.

You can execute this operation no more than once per second.


=head2 ListReceiptRuleSets([NextToken => Str])

Each argument is described in detail in: L<Paws::SES::ListReceiptRuleSets>

Returns: a L<Paws::SES::ListReceiptRuleSetsResponse> instance

  Lists the receipt rule sets that exist under your AWS account. If there
are additional receipt rule sets to be retrieved, you will receive a
C<NextToken> that you can provide to the next call to
C<ListReceiptRuleSets> to retrieve the additional entries.

For information about managing receipt rule sets, see the Amazon SES
Developer Guide.

You can execute this operation no more than once per second.


=head2 ListTemplates([MaxItems => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::SES::ListTemplates>

Returns: a L<Paws::SES::ListTemplatesResponse> instance

  Lists the email templates present in your Amazon SES account.

You can execute this operation no more than once per second.


=head2 ListVerifiedEmailAddresses( => )

Each argument is described in detail in: L<Paws::SES::ListVerifiedEmailAddresses>

Returns: a L<Paws::SES::ListVerifiedEmailAddressesResponse> instance

  Deprecated. Use the C<ListIdentities> operation to list the email
addresses and domains associated with your account.


=head2 PutIdentityPolicy(Identity => Str, Policy => Str, PolicyName => Str)

Each argument is described in detail in: L<Paws::SES::PutIdentityPolicy>

Returns: a L<Paws::SES::PutIdentityPolicyResponse> instance

  Adds or updates a sending authorization policy for the specified
identity (an email address or a domain).

This API is for the identity owner only. If you have not verified the
identity, this API will return an error.

Sending authorization is a feature that enables an identity owner to
authorize other senders to use its identities. For information about
using sending authorization, see the Amazon SES Developer Guide.

You can execute this operation no more than once per second.


=head2 ReorderReceiptRuleSet(RuleNames => ArrayRef[Str|Undef], RuleSetName => Str)

Each argument is described in detail in: L<Paws::SES::ReorderReceiptRuleSet>

Returns: a L<Paws::SES::ReorderReceiptRuleSetResponse> instance

  Reorders the receipt rules within a receipt rule set.

All of the rules in the rule set must be represented in this request.
That is, this API will return an error if the reorder request doesn't
explicitly position all of the rules.

For information about managing receipt rule sets, see the Amazon SES
Developer Guide.

You can execute this operation no more than once per second.


=head2 SendBounce(BouncedRecipientInfoList => ArrayRef[L<Paws::SES::BouncedRecipientInfo>], BounceSender => Str, OriginalMessageId => Str, [BounceSenderArn => Str, Explanation => Str, MessageDsn => L<Paws::SES::MessageDsn>])

Each argument is described in detail in: L<Paws::SES::SendBounce>

Returns: a L<Paws::SES::SendBounceResponse> instance

  Generates and sends a bounce message to the sender of an email you
received through Amazon SES. You can only use this API on an email up
to 24 hours after you receive it.

You cannot use this API to send generic bounces for mail that was not
received by Amazon SES.

For information about receiving email through Amazon SES, see the
Amazon SES Developer Guide.

You can execute this operation no more than once per second.


=head2 SendBulkTemplatedEmail(Destinations => ArrayRef[L<Paws::SES::BulkEmailDestination>], Source => Str, Template => Str, [ConfigurationSetName => Str, DefaultTags => ArrayRef[L<Paws::SES::MessageTag>], DefaultTemplateData => Str, ReplyToAddresses => ArrayRef[Str|Undef], ReturnPath => Str, ReturnPathArn => Str, SourceArn => Str, TemplateArn => Str])

Each argument is described in detail in: L<Paws::SES::SendBulkTemplatedEmail>

Returns: a L<Paws::SES::SendBulkTemplatedEmailResponse> instance

  Composes an email message to multiple destinations. The message body is
created using an email template.

In order to send email using the C<SendBulkTemplatedEmail> operation,
your call to the API must meet the following requirements:

=over

=item *

The call must refer to an existing email template. You can create email
templates using the CreateTemplate operation.

=item *

The message must be sent from a verified email address or domain.

=item *

If your account is still in the Amazon SES sandbox, you may only send
to verified addresses or domains, or to email addresses associated with
the Amazon SES Mailbox Simulator. For more information, see Verifying
Email Addresses and Domains in the I<Amazon SES Developer Guide.>

=item *

The total size of the message, including attachments, must be less than
10 MB.

=item *

Each C<Destination> parameter must include at least one recipient email
address. The recipient address can be a To: address, a CC: address, or
a BCC: address. If a recipient email address is invalid (that is, it is
not in the format I<UserName@[SubDomain.]Domain.TopLevelDomain>), the
entire message will be rejected, even if the message contains other
recipients that are valid.

=back



=head2 SendEmail(Destination => L<Paws::SES::Destination>, Message => L<Paws::SES::Message>, Source => Str, [ConfigurationSetName => Str, ReplyToAddresses => ArrayRef[Str|Undef], ReturnPath => Str, ReturnPathArn => Str, SourceArn => Str, Tags => ArrayRef[L<Paws::SES::MessageTag>]])

Each argument is described in detail in: L<Paws::SES::SendEmail>

Returns: a L<Paws::SES::SendEmailResponse> instance

  Composes an email message and immediately queues it for sending. In
order to send email using the C<SendEmail> operation, your message must
meet the following requirements:

=over

=item *

The message must be sent from a verified email address or domain. If
you attempt to send email using a non-verified address or domain, the
operation will result in an "Email address not verified" error.

=item *

If your account is still in the Amazon SES sandbox, you may only send
to verified addresses or domains, or to email addresses associated with
the Amazon SES Mailbox Simulator. For more information, see Verifying
Email Addresses and Domains in the I<Amazon SES Developer Guide.>

=item *

The total size of the message, including attachments, must be smaller
than 10 MB.

=item *

The message must include at least one recipient email address. The
recipient address can be a To: address, a CC: address, or a BCC:
address. If a recipient email address is invalid (that is, it is not in
the format I<UserName@[SubDomain.]Domain.TopLevelDomain>), the entire
message will be rejected, even if the message contains other recipients
that are valid.

=item *

The message may not include more than 50 recipients, across the To:,
CC: and BCC: fields. If you need to send an email message to a larger
audience, you can divide your recipient list into groups of 50 or
fewer, and then call the C<SendEmail> operation several times to send
the message to each group.

=back

For every message that you send, the total number of recipients
(including each recipient in the To:, CC: and BCC: fields) is counted
against the maximum number of emails you can send in a 24-hour period
(your I<sending quota>). For more information about sending quotas in
Amazon SES, see Managing Your Amazon SES Sending Limits in the I<Amazon
SES Developer Guide.>


=head2 SendRawEmail(RawMessage => L<Paws::SES::RawMessage>, [ConfigurationSetName => Str, Destinations => ArrayRef[Str|Undef], FromArn => Str, ReturnPathArn => Str, Source => Str, SourceArn => Str, Tags => ArrayRef[L<Paws::SES::MessageTag>]])

Each argument is described in detail in: L<Paws::SES::SendRawEmail>

Returns: a L<Paws::SES::SendRawEmailResponse> instance

  Composes an email message and immediately queues it for sending. When
calling this operation, you may specify the message headers as well as
the content. The C<SendRawEmail> operation is particularly useful for
sending multipart MIME emails (such as those that contain both a
plain-text and an HTML version).

In order to send email using the C<SendRawEmail> operation, your
message must meet the following requirements:

=over

=item *

The message must be sent from a verified email address or domain. If
you attempt to send email using a non-verified address or domain, the
operation will result in an "Email address not verified" error.

=item *

If your account is still in the Amazon SES sandbox, you may only send
to verified addresses or domains, or to email addresses associated with
the Amazon SES Mailbox Simulator. For more information, see Verifying
Email Addresses and Domains in the I<Amazon SES Developer Guide.>

=item *

The total size of the message, including attachments, must be smaller
than 10 MB.

=item *

The message must include at least one recipient email address. The
recipient address can be a To: address, a CC: address, or a BCC:
address. If a recipient email address is invalid (that is, it is not in
the format I<UserName@[SubDomain.]Domain.TopLevelDomain>), the entire
message will be rejected, even if the message contains other recipients
that are valid.

=item *

The message may not include more than 50 recipients, across the To:,
CC: and BCC: fields. If you need to send an email message to a larger
audience, you can divide your recipient list into groups of 50 or
fewer, and then call the C<SendRawEmail> operation several times to
send the message to each group.

=back

For every message that you send, the total number of recipients
(including each recipient in the To:, CC: and BCC: fields) is counted
against the maximum number of emails you can send in a 24-hour period
(your I<sending quota>). For more information about sending quotas in
Amazon SES, see Managing Your Amazon SES Sending Limits in the I<Amazon
SES Developer Guide.>

Additionally, keep the following considerations in mind when using the
C<SendRawEmail> operation:

=over

=item *

Although you can customize the message headers when using the
C<SendRawEmail> operation, Amazon SES will automatically apply its own
C<Message-ID> and C<Date> headers; if you passed these headers when
creating the message, they will be overwritten by the values that
Amazon SES provides.

=item *

If you are using sending authorization to send on behalf of another
user, C<SendRawEmail> enables you to specify the cross-account identity
for the email's Source, From, and Return-Path parameters in one of two
ways: you can pass optional parameters C<SourceArn>, C<FromArn>, and/or
C<ReturnPathArn> to the API, or you can include the following X-headers
in the header of your raw email:

=over

=item *

C<X-SES-SOURCE-ARN>

=item *

C<X-SES-FROM-ARN>

=item *

C<X-SES-RETURN-PATH-ARN>

=back

Do not include these X-headers in the DKIM signature; Amazon SES will
remove them before sending the email.

For most common sending authorization scenarios, we recommend that you
specify the C<SourceIdentityArn> parameter and not the
C<FromIdentityArn> or C<ReturnPathIdentityArn> parameters. If you only
specify the C<SourceIdentityArn> parameter, Amazon SES will set the
From and Return Path addresses to the identity specified in
C<SourceIdentityArn>. For more information about sending authorization,
see the Using Sending Authorization with Amazon SES in the I<Amazon SES
Developer Guide.>

=back



=head2 SendTemplatedEmail(Destination => L<Paws::SES::Destination>, Source => Str, Template => Str, TemplateData => Str, [ConfigurationSetName => Str, ReplyToAddresses => ArrayRef[Str|Undef], ReturnPath => Str, ReturnPathArn => Str, SourceArn => Str, Tags => ArrayRef[L<Paws::SES::MessageTag>], TemplateArn => Str])

Each argument is described in detail in: L<Paws::SES::SendTemplatedEmail>

Returns: a L<Paws::SES::SendTemplatedEmailResponse> instance

  Composes an email message using an email template and immediately
queues it for sending.

In order to send email using the C<SendTemplatedEmail> operation, your
call to the API must meet the following requirements:

=over

=item *

The call must refer to an existing email template. You can create email
templates using the CreateTemplate operation.

=item *

The message must be sent from a verified email address or domain.

=item *

If your account is still in the Amazon SES sandbox, you may only send
to verified addresses or domains, or to email addresses associated with
the Amazon SES Mailbox Simulator. For more information, see Verifying
Email Addresses and Domains in the I<Amazon SES Developer Guide.>

=item *

The total size of the message, including attachments, must be less than
10 MB.

=item *

Calls to the C<SendTemplatedEmail> operation may only include one
C<Destination> parameter. A destination is a set of recipients who will
receive the same version of the email. The C<Destination> parameter can
include up to 50 recipients, across the To:, CC: and BCC: fields.

=item *

The C<Destination> parameter must include at least one recipient email
address. The recipient address can be a To: address, a CC: address, or
a BCC: address. If a recipient email address is invalid (that is, it is
not in the format I<UserName@[SubDomain.]Domain.TopLevelDomain>), the
entire message will be rejected, even if the message contains other
recipients that are valid.

=back



=head2 SetActiveReceiptRuleSet([RuleSetName => Str])

Each argument is described in detail in: L<Paws::SES::SetActiveReceiptRuleSet>

Returns: a L<Paws::SES::SetActiveReceiptRuleSetResponse> instance

  Sets the specified receipt rule set as the active receipt rule set.

To disable your email-receiving through Amazon SES completely, you can
call this API with RuleSetName set to null.

For information about managing receipt rule sets, see the Amazon SES
Developer Guide.

You can execute this operation no more than once per second.


=head2 SetIdentityDkimEnabled(DkimEnabled => Bool, Identity => Str)

Each argument is described in detail in: L<Paws::SES::SetIdentityDkimEnabled>

Returns: a L<Paws::SES::SetIdentityDkimEnabledResponse> instance

  Enables or disables Easy DKIM signing of email sent from an identity:

=over

=item *

If Easy DKIM signing is enabled for a domain name identity (such as
C<example.com>), then Amazon SES will DKIM-sign all email sent by
addresses under that domain name (for example, C<user@example.com>).

=item *

If Easy DKIM signing is enabled for an email address, then Amazon SES
will DKIM-sign all email sent by that email address.

=back

For email addresses (for example, C<user@example.com>), you can only
enable Easy DKIM signing if the corresponding domain (in this case,
C<example.com>) has been set up for Easy DKIM using the AWS Console or
the C<VerifyDomainDkim> operation.

You can execute this operation no more than once per second.

For more information about Easy DKIM signing, go to the Amazon SES
Developer Guide.


=head2 SetIdentityFeedbackForwardingEnabled(ForwardingEnabled => Bool, Identity => Str)

Each argument is described in detail in: L<Paws::SES::SetIdentityFeedbackForwardingEnabled>

Returns: a L<Paws::SES::SetIdentityFeedbackForwardingEnabledResponse> instance

  Given an identity (an email address or a domain), enables or disables
whether Amazon SES forwards bounce and complaint notifications as
email. Feedback forwarding can only be disabled when Amazon Simple
Notification Service (Amazon SNS) topics are specified for both bounces
and complaints.

Feedback forwarding does not apply to delivery notifications. Delivery
notifications are only available through Amazon SNS.

You can execute this operation no more than once per second.

For more information about using notifications with Amazon SES, see the
Amazon SES Developer Guide.


=head2 SetIdentityHeadersInNotificationsEnabled(Enabled => Bool, Identity => Str, NotificationType => Str)

Each argument is described in detail in: L<Paws::SES::SetIdentityHeadersInNotificationsEnabled>

Returns: a L<Paws::SES::SetIdentityHeadersInNotificationsEnabledResponse> instance

  Given an identity (an email address or a domain), sets whether Amazon
SES includes the original email headers in the Amazon Simple
Notification Service (Amazon SNS) notifications of a specified type.

You can execute this operation no more than once per second.

For more information about using notifications with Amazon SES, see the
Amazon SES Developer Guide.


=head2 SetIdentityMailFromDomain(Identity => Str, [BehaviorOnMXFailure => Str, MailFromDomain => Str])

Each argument is described in detail in: L<Paws::SES::SetIdentityMailFromDomain>

Returns: a L<Paws::SES::SetIdentityMailFromDomainResponse> instance

  Enables or disables the custom MAIL FROM domain setup for a verified
identity (an email address or a domain).

To send emails using the specified MAIL FROM domain, you must add an MX
record to your MAIL FROM domain's DNS settings. If you want your emails
to pass Sender Policy Framework (SPF) checks, you must also add or
update an SPF record. For more information, see the Amazon SES
Developer Guide.

You can execute this operation no more than once per second.


=head2 SetIdentityNotificationTopic(Identity => Str, NotificationType => Str, [SnsTopic => Str])

Each argument is described in detail in: L<Paws::SES::SetIdentityNotificationTopic>

Returns: a L<Paws::SES::SetIdentityNotificationTopicResponse> instance

  Given an identity (an email address or a domain), sets the Amazon
Simple Notification Service (Amazon SNS) topic to which Amazon SES will
publish bounce, complaint, and/or delivery notifications for emails
sent with that identity as the C<Source>.

Unless feedback forwarding is enabled, you must specify Amazon SNS
topics for bounce and complaint notifications. For more information,
see C<SetIdentityFeedbackForwardingEnabled>.

You can execute this operation no more than once per second.

For more information about feedback notification, see the Amazon SES
Developer Guide.


=head2 SetReceiptRulePosition(RuleName => Str, RuleSetName => Str, [After => Str])

Each argument is described in detail in: L<Paws::SES::SetReceiptRulePosition>

Returns: a L<Paws::SES::SetReceiptRulePositionResponse> instance

  Sets the position of the specified receipt rule in the receipt rule
set.

For information about managing receipt rules, see the Amazon SES
Developer Guide.

You can execute this operation no more than once per second.


=head2 TestRenderTemplate(TemplateData => Str, TemplateName => Str)

Each argument is described in detail in: L<Paws::SES::TestRenderTemplate>

Returns: a L<Paws::SES::TestRenderTemplateResponse> instance

  Creates a preview of the MIME content of an email when provided with a
template and a set of replacement data.

You can execute this operation no more than once per second.


=head2 UpdateConfigurationSetEventDestination(ConfigurationSetName => Str, EventDestination => L<Paws::SES::EventDestination>)

Each argument is described in detail in: L<Paws::SES::UpdateConfigurationSetEventDestination>

Returns: a L<Paws::SES::UpdateConfigurationSetEventDestinationResponse> instance

  Updates the event destination of a configuration set. Event
destinations are associated with configuration sets, which enable you
to publish email sending events to Amazon CloudWatch, Amazon Kinesis
Firehose, or Amazon Simple Notification Service (Amazon SNS). For
information about using configuration sets, see Monitoring Your Amazon
SES Sending Activity in the I<Amazon SES Developer Guide.>

When you create or update an event destination, you must provide one,
and only one, destination. The destination can be Amazon CloudWatch,
Amazon Kinesis Firehose, or Amazon Simple Notification Service (Amazon
SNS).

You can execute this operation no more than once per second.


=head2 UpdateConfigurationSetTrackingOptions(ConfigurationSetName => Str, TrackingOptions => L<Paws::SES::TrackingOptions>)

Each argument is described in detail in: L<Paws::SES::UpdateConfigurationSetTrackingOptions>

Returns: a L<Paws::SES::UpdateConfigurationSetTrackingOptionsResponse> instance

  Modifies an association between a configuration set and a custom domain
for open and click event tracking.

By default, images and links used for tracking open and click events
are hosted on domains operated by Amazon SES. You can configure a
subdomain of your own to handle these events. For information about
using configuration sets, see Configuring Custom Domains to Handle Open
and Click Tracking in the Amazon SES Developer Guide.


=head2 UpdateReceiptRule(Rule => L<Paws::SES::ReceiptRule>, RuleSetName => Str)

Each argument is described in detail in: L<Paws::SES::UpdateReceiptRule>

Returns: a L<Paws::SES::UpdateReceiptRuleResponse> instance

  Updates a receipt rule.

For information about managing receipt rules, see the Amazon SES
Developer Guide.

You can execute this operation no more than once per second.


=head2 UpdateTemplate(Template => L<Paws::SES::Template>)

Each argument is described in detail in: L<Paws::SES::UpdateTemplate>

Returns: a L<Paws::SES::UpdateTemplateResponse> instance

  Updates an email template. Email templates enable you to send
personalized email to one or more destinations in a single API
operation. For more information, see the Amazon SES Developer Guide.

You can execute this operation no more than once per second.


=head2 VerifyDomainDkim(Domain => Str)

Each argument is described in detail in: L<Paws::SES::VerifyDomainDkim>

Returns: a L<Paws::SES::VerifyDomainDkimResponse> instance

  Returns a set of DKIM tokens for a domain. DKIM I<tokens> are character
strings that represent your domain's identity. Using these tokens, you
will need to create DNS CNAME records that point to DKIM public keys
hosted by Amazon SES. Amazon Web Services will eventually detect that
you have updated your DNS records; this detection process may take up
to 72 hours. Upon successful detection, Amazon SES will be able to
DKIM-sign email originating from that domain.

You can execute this operation no more than once per second.

To enable or disable Easy DKIM signing for a domain, use the
C<SetIdentityDkimEnabled> operation.

For more information about creating DNS records using DKIM tokens, go
to the Amazon SES Developer Guide.


=head2 VerifyDomainIdentity(Domain => Str)

Each argument is described in detail in: L<Paws::SES::VerifyDomainIdentity>

Returns: a L<Paws::SES::VerifyDomainIdentityResponse> instance

  Adds a domain to the list of identities for your Amazon SES account and
attempts to verify it. For more information about verifying domains,
see Verifying Email Addresses and Domains in the I<Amazon SES Developer
Guide.>

You can execute this operation no more than once per second.


=head2 VerifyEmailAddress(EmailAddress => Str)

Each argument is described in detail in: L<Paws::SES::VerifyEmailAddress>

Returns: nothing

  Deprecated. Use the C<VerifyEmailIdentity> operation to verify a new
email address.


=head2 VerifyEmailIdentity(EmailAddress => Str)

Each argument is described in detail in: L<Paws::SES::VerifyEmailIdentity>

Returns: a L<Paws::SES::VerifyEmailIdentityResponse> instance

  Adds an email address to the list of identities for your Amazon SES
account and attempts to verify it. This operation causes a confirmation
email message to be sent to the specified address.

You can execute this operation no more than once per second.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllIdentities(sub { },[IdentityType => Str, MaxItems => Int, NextToken => Str])

=head2 ListAllIdentities([IdentityType => Str, MaxItems => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Identities, passing the object as the first parameter, and the string 'Identities' as the second parameter 

If not, it will return a a L<Paws::SES::ListIdentitiesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

