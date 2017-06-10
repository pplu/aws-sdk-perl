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

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::QueryCaller', 'Paws::Net::XMLResponse';

  
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
  sub UpdateConfigurationSetEventDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::UpdateConfigurationSetEventDestination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateReceiptRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::UpdateReceiptRule', @_);
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
        $result = $self->ListIdentities(@_, NextToken => $result->NextToken);
        push @{ $result->Identities }, @{ $next_result->Identities };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $result = $self->ListIdentities(@_, NextToken => $result->NextToken);
        $callback->($_ => 'Identities') foreach (@{ $result->Identities });
      }
    }

    return undef
  }


  sub operations { qw/CloneReceiptRuleSet CreateConfigurationSet CreateConfigurationSetEventDestination CreateReceiptFilter CreateReceiptRule CreateReceiptRuleSet DeleteConfigurationSet DeleteConfigurationSetEventDestination DeleteIdentity DeleteIdentityPolicy DeleteReceiptFilter DeleteReceiptRule DeleteReceiptRuleSet DeleteVerifiedEmailAddress DescribeActiveReceiptRuleSet DescribeConfigurationSet DescribeReceiptRule DescribeReceiptRuleSet GetIdentityDkimAttributes GetIdentityMailFromDomainAttributes GetIdentityNotificationAttributes GetIdentityPolicies GetIdentityVerificationAttributes GetSendQuota GetSendStatistics ListConfigurationSets ListIdentities ListIdentityPolicies ListReceiptFilters ListReceiptRuleSets ListVerifiedEmailAddresses PutIdentityPolicy ReorderReceiptRuleSet SendBounce SendEmail SendRawEmail SetActiveReceiptRuleSet SetIdentityDkimEnabled SetIdentityFeedbackForwardingEnabled SetIdentityHeadersInNotificationsEnabled SetIdentityMailFromDomain SetIdentityNotificationTopic SetReceiptRulePosition UpdateConfigurationSetEventDestination UpdateReceiptRule VerifyDomainDkim VerifyDomainIdentity VerifyEmailAddress VerifyEmailIdentity / }

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

This action is throttled at one request per second.


=head2 CreateConfigurationSet(ConfigurationSet => L<Paws::SES::ConfigurationSet>)

Each argument is described in detail in: L<Paws::SES::CreateConfigurationSet>

Returns: a L<Paws::SES::CreateConfigurationSetResponse> instance

  Creates a configuration set.

Configuration sets enable you to publish email sending events. For
information about using configuration sets, see the Amazon SES
Developer Guide.

This action is throttled at one request per second.


=head2 CreateConfigurationSetEventDestination(ConfigurationSetName => Str, EventDestination => L<Paws::SES::EventDestination>)

Each argument is described in detail in: L<Paws::SES::CreateConfigurationSetEventDestination>

Returns: a L<Paws::SES::CreateConfigurationSetEventDestinationResponse> instance

  Creates a configuration set event destination.

When you create or update an event destination, you must provide one,
and only one, destination. The destination can be either Amazon
CloudWatch or Amazon Kinesis Firehose.

An event destination is the AWS service to which Amazon SES publishes
the email sending events associated with a configuration set. For
information about using configuration sets, see the Amazon SES
Developer Guide.

This action is throttled at one request per second.


=head2 CreateReceiptFilter(Filter => L<Paws::SES::ReceiptFilter>)

Each argument is described in detail in: L<Paws::SES::CreateReceiptFilter>

Returns: a L<Paws::SES::CreateReceiptFilterResponse> instance

  Creates a new IP address filter.

For information about setting up IP address filters, see the Amazon SES
Developer Guide.

This action is throttled at one request per second.


=head2 CreateReceiptRule(Rule => L<Paws::SES::ReceiptRule>, RuleSetName => Str, [After => Str])

Each argument is described in detail in: L<Paws::SES::CreateReceiptRule>

Returns: a L<Paws::SES::CreateReceiptRuleResponse> instance

  Creates a receipt rule.

For information about setting up receipt rules, see the Amazon SES
Developer Guide.

This action is throttled at one request per second.


=head2 CreateReceiptRuleSet(RuleSetName => Str)

Each argument is described in detail in: L<Paws::SES::CreateReceiptRuleSet>

Returns: a L<Paws::SES::CreateReceiptRuleSetResponse> instance

  Creates an empty receipt rule set.

For information about setting up receipt rule sets, see the Amazon SES
Developer Guide.

This action is throttled at one request per second.


=head2 DeleteConfigurationSet(ConfigurationSetName => Str)

Each argument is described in detail in: L<Paws::SES::DeleteConfigurationSet>

Returns: a L<Paws::SES::DeleteConfigurationSetResponse> instance

  Deletes a configuration set.

Configuration sets enable you to publish email sending events. For
information about using configuration sets, see the Amazon SES
Developer Guide.

This action is throttled at one request per second.


=head2 DeleteConfigurationSetEventDestination(ConfigurationSetName => Str, EventDestinationName => Str)

Each argument is described in detail in: L<Paws::SES::DeleteConfigurationSetEventDestination>

Returns: a L<Paws::SES::DeleteConfigurationSetEventDestinationResponse> instance

  Deletes a configuration set event destination.

Configuration set event destinations are associated with configuration
sets, which enable you to publish email sending events. For information
about using configuration sets, see the Amazon SES Developer Guide.

This action is throttled at one request per second.


=head2 DeleteIdentity(Identity => Str)

Each argument is described in detail in: L<Paws::SES::DeleteIdentity>

Returns: a L<Paws::SES::DeleteIdentityResponse> instance

  Deletes the specified identity (an email address or a domain) from the
list of verified identities.

This action is throttled at one request per second.


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

This action is throttled at one request per second.


=head2 DeleteReceiptFilter(FilterName => Str)

Each argument is described in detail in: L<Paws::SES::DeleteReceiptFilter>

Returns: a L<Paws::SES::DeleteReceiptFilterResponse> instance

  Deletes the specified IP address filter.

For information about managing IP address filters, see the Amazon SES
Developer Guide.

This action is throttled at one request per second.


=head2 DeleteReceiptRule(RuleName => Str, RuleSetName => Str)

Each argument is described in detail in: L<Paws::SES::DeleteReceiptRule>

Returns: a L<Paws::SES::DeleteReceiptRuleResponse> instance

  Deletes the specified receipt rule.

For information about managing receipt rules, see the Amazon SES
Developer Guide.

This action is throttled at one request per second.


=head2 DeleteReceiptRuleSet(RuleSetName => Str)

Each argument is described in detail in: L<Paws::SES::DeleteReceiptRuleSet>

Returns: a L<Paws::SES::DeleteReceiptRuleSetResponse> instance

  Deletes the specified receipt rule set and all of the receipt rules it
contains.

The currently active rule set cannot be deleted.

For information about managing receipt rule sets, see the Amazon SES
Developer Guide.

This action is throttled at one request per second.


=head2 DeleteVerifiedEmailAddress(EmailAddress => Str)

Each argument is described in detail in: L<Paws::SES::DeleteVerifiedEmailAddress>

Returns: nothing

  Deletes the specified email address from the list of verified
addresses.

The DeleteVerifiedEmailAddress action is deprecated as of the May 15,
2012 release of Domain Verification. The DeleteIdentity action is now
preferred.

This action is throttled at one request per second.


=head2 DescribeActiveReceiptRuleSet()

Each argument is described in detail in: L<Paws::SES::DescribeActiveReceiptRuleSet>

Returns: a L<Paws::SES::DescribeActiveReceiptRuleSetResponse> instance

  Returns the metadata and receipt rules for the receipt rule set that is
currently active.

For information about setting up receipt rule sets, see the Amazon SES
Developer Guide.

This action is throttled at one request per second.


=head2 DescribeConfigurationSet(ConfigurationSetName => Str, [ConfigurationSetAttributeNames => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::SES::DescribeConfigurationSet>

Returns: a L<Paws::SES::DescribeConfigurationSetResponse> instance

  Returns the details of the specified configuration set.

Configuration sets enable you to publish email sending events. For
information about using configuration sets, see the Amazon SES
Developer Guide.

This action is throttled at one request per second.


=head2 DescribeReceiptRule(RuleName => Str, RuleSetName => Str)

Each argument is described in detail in: L<Paws::SES::DescribeReceiptRule>

Returns: a L<Paws::SES::DescribeReceiptRuleResponse> instance

  Returns the details of the specified receipt rule.

For information about setting up receipt rules, see the Amazon SES
Developer Guide.

This action is throttled at one request per second.


=head2 DescribeReceiptRuleSet(RuleSetName => Str)

Each argument is described in detail in: L<Paws::SES::DescribeReceiptRuleSet>

Returns: a L<Paws::SES::DescribeReceiptRuleSetResponse> instance

  Returns the details of the specified receipt rule set.

For information about managing receipt rule sets, see the Amazon SES
Developer Guide.

This action is throttled at one request per second.


=head2 GetIdentityDkimAttributes(Identities => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::SES::GetIdentityDkimAttributes>

Returns: a L<Paws::SES::GetIdentityDkimAttributesResponse> instance

  Returns the current status of Easy DKIM signing for an entity. For
domain name identities, this action also returns the DKIM tokens that
are required for Easy DKIM signing, and whether Amazon SES has
successfully verified that these tokens have been published.

This action takes a list of identities as input and returns the
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

This action is throttled at one request per second and can only get
DKIM attributes for up to 100 identities at a time.

For more information about creating DNS records using DKIM tokens, go
to the Amazon SES Developer Guide.


=head2 GetIdentityMailFromDomainAttributes(Identities => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::SES::GetIdentityMailFromDomainAttributes>

Returns: a L<Paws::SES::GetIdentityMailFromDomainAttributesResponse> instance

  Returns the custom MAIL FROM attributes for a list of identities (email
addresses and/or domains).

This action is throttled at one request per second and can only get
custom MAIL FROM attributes for up to 100 identities at a time.


=head2 GetIdentityNotificationAttributes(Identities => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::SES::GetIdentityNotificationAttributes>

Returns: a L<Paws::SES::GetIdentityNotificationAttributesResponse> instance

  Given a list of verified identities (email addresses and/or domains),
returns a structure describing identity notification attributes.

This action is throttled at one request per second and can only get
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

This action is throttled at one request per second.


=head2 GetIdentityVerificationAttributes(Identities => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::SES::GetIdentityVerificationAttributes>

Returns: a L<Paws::SES::GetIdentityVerificationAttributesResponse> instance

  Given a list of identities (email addresses and/or domains), returns
the verification status and (for domain identities) the verification
token for each identity.

This action is throttled at one request per second and can only get
verification attributes for up to 100 identities at a time.


=head2 GetSendQuota( => )

Each argument is described in detail in: L<Paws::SES::GetSendQuota>

Returns: a L<Paws::SES::GetSendQuotaResponse> instance

  Returns the user's current sending limits.

This action is throttled at one request per second.


=head2 GetSendStatistics( => )

Each argument is described in detail in: L<Paws::SES::GetSendStatistics>

Returns: a L<Paws::SES::GetSendStatisticsResponse> instance

  Returns the user's sending statistics. The result is a list of data
points, representing the last two weeks of sending activity.

Each data point in the list contains statistics for a 15-minute
interval.

This action is throttled at one request per second.


=head2 ListConfigurationSets([MaxItems => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::SES::ListConfigurationSets>

Returns: a L<Paws::SES::ListConfigurationSetsResponse> instance

  Lists the configuration sets associated with your AWS account.

Configuration sets enable you to publish email sending events. For
information about using configuration sets, see the Amazon SES
Developer Guide.

This action is throttled at one request per second and can return up to
50 configuration sets at a time.


=head2 ListIdentities([IdentityType => Str, MaxItems => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::SES::ListIdentities>

Returns: a L<Paws::SES::ListIdentitiesResponse> instance

  Returns a list containing all of the identities (email addresses and
domains) for your AWS account, regardless of verification status.

This action is throttled at one request per second.


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

This action is throttled at one request per second.


=head2 ListReceiptFilters()

Each argument is described in detail in: L<Paws::SES::ListReceiptFilters>

Returns: a L<Paws::SES::ListReceiptFiltersResponse> instance

  Lists the IP address filters associated with your AWS account.

For information about managing IP address filters, see the Amazon SES
Developer Guide.

This action is throttled at one request per second.


=head2 ListReceiptRuleSets([NextToken => Str])

Each argument is described in detail in: L<Paws::SES::ListReceiptRuleSets>

Returns: a L<Paws::SES::ListReceiptRuleSetsResponse> instance

  Lists the receipt rule sets that exist under your AWS account. If there
are additional receipt rule sets to be retrieved, you will receive a
C<NextToken> that you can provide to the next call to
C<ListReceiptRuleSets> to retrieve the additional entries.

For information about managing receipt rule sets, see the Amazon SES
Developer Guide.

This action is throttled at one request per second.


=head2 ListVerifiedEmailAddresses( => )

Each argument is described in detail in: L<Paws::SES::ListVerifiedEmailAddresses>

Returns: a L<Paws::SES::ListVerifiedEmailAddressesResponse> instance

  Returns a list containing all of the email addresses that have been
verified.

The ListVerifiedEmailAddresses action is deprecated as of the May 15,
2012 release of Domain Verification. The ListIdentities action is now
preferred.

This action is throttled at one request per second.


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

This action is throttled at one request per second.


=head2 ReorderReceiptRuleSet(RuleNames => ArrayRef[Str|Undef], RuleSetName => Str)

Each argument is described in detail in: L<Paws::SES::ReorderReceiptRuleSet>

Returns: a L<Paws::SES::ReorderReceiptRuleSetResponse> instance

  Reorders the receipt rules within a receipt rule set.

All of the rules in the rule set must be represented in this request.
That is, this API will return an error if the reorder request doesn't
explicitly position all of the rules.

For information about managing receipt rule sets, see the Amazon SES
Developer Guide.

This action is throttled at one request per second.


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

This action is throttled at one request per second.


=head2 SendEmail(Destination => L<Paws::SES::Destination>, Message => L<Paws::SES::Message>, Source => Str, [ConfigurationSetName => Str, ReplyToAddresses => ArrayRef[Str|Undef], ReturnPath => Str, ReturnPathArn => Str, SourceArn => Str, Tags => ArrayRef[L<Paws::SES::MessageTag>]])

Each argument is described in detail in: L<Paws::SES::SendEmail>

Returns: a L<Paws::SES::SendEmailResponse> instance

  Composes an email message based on input data, and then immediately
queues the message for sending.

There are several important points to know about C<SendEmail>:

=over

=item *

You can only send email from verified email addresses and domains;
otherwise, you will get an "Email address not verified" error. If your
account is still in the Amazon SES sandbox, you must also verify every
recipient email address except for the recipients provided by the
Amazon SES mailbox simulator. For more information, go to the Amazon
SES Developer Guide.

=item *

The total size of the message cannot exceed 10 MB. This includes any
attachments that are part of the message.

=item *

Amazon SES has a limit on the total number of recipients per message.
The combined number of To:, CC: and BCC: email addresses cannot exceed
50. If you need to send an email message to a larger audience, you can
divide your recipient list into groups of 50 or fewer, and then call
Amazon SES repeatedly to send the message to each group.

=item *

For every message that you send, the total number of recipients (To:,
CC: and BCC:) is counted against your sending quota - the maximum
number of emails you can send in a 24-hour period. For information
about your sending quota, go to the Amazon SES Developer Guide.

=back



=head2 SendRawEmail(RawMessage => L<Paws::SES::RawMessage>, [ConfigurationSetName => Str, Destinations => ArrayRef[Str|Undef], FromArn => Str, ReturnPathArn => Str, Source => Str, SourceArn => Str, Tags => ArrayRef[L<Paws::SES::MessageTag>]])

Each argument is described in detail in: L<Paws::SES::SendRawEmail>

Returns: a L<Paws::SES::SendRawEmailResponse> instance

  Sends an email message, with header and content specified by the
client. The C<SendRawEmail> action is useful for sending multipart MIME
emails. The raw text of the message must comply with Internet email
standards; otherwise, the message cannot be sent.

There are several important points to know about C<SendRawEmail>:

=over

=item *

You can only send email from verified email addresses and domains;
otherwise, you will get an "Email address not verified" error. If your
account is still in the Amazon SES sandbox, you must also verify every
recipient email address except for the recipients provided by the
Amazon SES mailbox simulator. For more information, go to the Amazon
SES Developer Guide.

=item *

The total size of the message cannot exceed 10 MB. This includes any
attachments that are part of the message.

=item *

Amazon SES has a limit on the total number of recipients per message.
The combined number of To:, CC: and BCC: email addresses cannot exceed
50. If you need to send an email message to a larger audience, you can
divide your recipient list into groups of 50 or fewer, and then call
Amazon SES repeatedly to send the message to each group.

=item *

The To:, CC:, and BCC: headers in the raw message can contain a group
list. Note that each recipient in a group list counts towards the
50-recipient limit.

=item *

Amazon SES overrides any Message-ID and Date headers you provide.

=item *

For every message that you send, the total number of recipients (To:,
CC: and BCC:) is counted against your sending quota - the maximum
number of emails you can send in a 24-hour period. For information
about your sending quota, go to the Amazon SES Developer Guide.

=item *

If you are using sending authorization to send on behalf of another
user, C<SendRawEmail> enables you to specify the cross-account identity
for the email's "Source," "From," and "Return-Path" parameters in one
of two ways: you can pass optional parameters C<SourceArn>, C<FromArn>,
and/or C<ReturnPathArn> to the API, or you can include the following
X-headers in the header of your raw email:

=over

=item *

C<X-SES-SOURCE-ARN>

=item *

C<X-SES-FROM-ARN>

=item *

C<X-SES-RETURN-PATH-ARN>

=back

Do not include these X-headers in the DKIM signature, because they are
removed by Amazon SES before sending the email.

For the most common sending authorization use case, we recommend that
you specify the C<SourceIdentityArn> and do not specify either the
C<FromIdentityArn> or C<ReturnPathIdentityArn>. (The same note applies
to the corresponding X-headers.) If you only specify the
C<SourceIdentityArn>, Amazon SES will simply set the "From" address and
the "Return Path" address to the identity specified in
C<SourceIdentityArn>. For more information about sending authorization,
see the Amazon SES Developer Guide.

=back



=head2 SetActiveReceiptRuleSet([RuleSetName => Str])

Each argument is described in detail in: L<Paws::SES::SetActiveReceiptRuleSet>

Returns: a L<Paws::SES::SetActiveReceiptRuleSetResponse> instance

  Sets the specified receipt rule set as the active receipt rule set.

To disable your email-receiving through Amazon SES completely, you can
call this API with RuleSetName set to null.

For information about managing receipt rule sets, see the Amazon SES
Developer Guide.

This action is throttled at one request per second.


=head2 SetIdentityDkimEnabled(DkimEnabled => Bool, Identity => Str)

Each argument is described in detail in: L<Paws::SES::SetIdentityDkimEnabled>

Returns: a L<Paws::SES::SetIdentityDkimEnabledResponse> instance

  Enables or disables Easy DKIM signing of email sent from an identity:

=over

=item *

If Easy DKIM signing is enabled for a domain name identity (e.g.,
C<example.com>), then Amazon SES will DKIM-sign all email sent by
addresses under that domain name (e.g., C<user@example.com>).

=item *

If Easy DKIM signing is enabled for an email address, then Amazon SES
will DKIM-sign all email sent by that email address.

=back

For email addresses (e.g., C<user@example.com>), you can only enable
Easy DKIM signing if the corresponding domain (e.g., C<example.com>)
has been set up for Easy DKIM using the AWS Console or the
C<VerifyDomainDkim> action.

This action is throttled at one request per second.

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

This action is throttled at one request per second.

For more information about using notifications with Amazon SES, see the
Amazon SES Developer Guide.


=head2 SetIdentityHeadersInNotificationsEnabled(Enabled => Bool, Identity => Str, NotificationType => Str)

Each argument is described in detail in: L<Paws::SES::SetIdentityHeadersInNotificationsEnabled>

Returns: a L<Paws::SES::SetIdentityHeadersInNotificationsEnabledResponse> instance

  Given an identity (an email address or a domain), sets whether Amazon
SES includes the original email headers in the Amazon Simple
Notification Service (Amazon SNS) notifications of a specified type.

This action is throttled at one request per second.

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

This action is throttled at one request per second.


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

This action is throttled at one request per second.

For more information about feedback notification, see the Amazon SES
Developer Guide.


=head2 SetReceiptRulePosition(RuleName => Str, RuleSetName => Str, [After => Str])

Each argument is described in detail in: L<Paws::SES::SetReceiptRulePosition>

Returns: a L<Paws::SES::SetReceiptRulePositionResponse> instance

  Sets the position of the specified receipt rule in the receipt rule
set.

For information about managing receipt rules, see the Amazon SES
Developer Guide.

This action is throttled at one request per second.


=head2 UpdateConfigurationSetEventDestination(ConfigurationSetName => Str, EventDestination => L<Paws::SES::EventDestination>)

Each argument is described in detail in: L<Paws::SES::UpdateConfigurationSetEventDestination>

Returns: a L<Paws::SES::UpdateConfigurationSetEventDestinationResponse> instance

  Updates the event destination of a configuration set.

When you create or update an event destination, you must provide one,
and only one, destination. The destination can be either Amazon
CloudWatch or Amazon Kinesis Firehose.

Event destinations are associated with configuration sets, which enable
you to publish email sending events to Amazon CloudWatch or Amazon
Kinesis Firehose. For information about using configuration sets, see
the Amazon SES Developer Guide.

This action is throttled at one request per second.


=head2 UpdateReceiptRule(Rule => L<Paws::SES::ReceiptRule>, RuleSetName => Str)

Each argument is described in detail in: L<Paws::SES::UpdateReceiptRule>

Returns: a L<Paws::SES::UpdateReceiptRuleResponse> instance

  Updates a receipt rule.

For information about managing receipt rules, see the Amazon SES
Developer Guide.

This action is throttled at one request per second.


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

This action is throttled at one request per second.

To enable or disable Easy DKIM signing for a domain, use the
C<SetIdentityDkimEnabled> action.

For more information about creating DNS records using DKIM tokens, go
to the Amazon SES Developer Guide.


=head2 VerifyDomainIdentity(Domain => Str)

Each argument is described in detail in: L<Paws::SES::VerifyDomainIdentity>

Returns: a L<Paws::SES::VerifyDomainIdentityResponse> instance

  Verifies a domain.

This action is throttled at one request per second.


=head2 VerifyEmailAddress(EmailAddress => Str)

Each argument is described in detail in: L<Paws::SES::VerifyEmailAddress>

Returns: nothing

  Verifies an email address. This action causes a confirmation email
message to be sent to the specified address.

The VerifyEmailAddress action is deprecated as of the May 15, 2012
release of Domain Verification. The VerifyEmailIdentity action is now
preferred.

This action is throttled at one request per second.


=head2 VerifyEmailIdentity(EmailAddress => Str)

Each argument is described in detail in: L<Paws::SES::VerifyEmailIdentity>

Returns: a L<Paws::SES::VerifyEmailIdentityResponse> instance

  Verifies an email address. This action causes a confirmation email
message to be sent to the specified address.

This action is throttled at one request per second.




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

