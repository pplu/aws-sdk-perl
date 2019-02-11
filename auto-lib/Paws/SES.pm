package Paws::SES;
  use Moose;
  sub service { 'email' }
  sub signing_name { 'ses' }
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
  sub CreateCustomVerificationEmailTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::CreateCustomVerificationEmailTemplate', @_);
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
  sub DeleteCustomVerificationEmailTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::DeleteCustomVerificationEmailTemplate', @_);
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
  sub GetAccountSendingEnabled {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::GetAccountSendingEnabled', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCustomVerificationEmailTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::GetCustomVerificationEmailTemplate', @_);
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
  sub ListCustomVerificationEmailTemplates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::ListCustomVerificationEmailTemplates', @_);
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
  sub SendCustomVerificationEmail {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::SendCustomVerificationEmail', @_);
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
  sub UpdateAccountSendingEnabled {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::UpdateAccountSendingEnabled', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateConfigurationSetEventDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::UpdateConfigurationSetEventDestination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateConfigurationSetReputationMetricsEnabled {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::UpdateConfigurationSetReputationMetricsEnabled', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateConfigurationSetSendingEnabled {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::UpdateConfigurationSetSendingEnabled', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateConfigurationSetTrackingOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::UpdateConfigurationSetTrackingOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCustomVerificationEmailTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SES::UpdateCustomVerificationEmailTemplate', @_);
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
  
  sub ListAllConfigurationSets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListConfigurationSets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListConfigurationSets(@_, NextToken => $next_result->NextToken);
        push @{ $result->ConfigurationSets }, @{ $next_result->ConfigurationSets };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ConfigurationSets') foreach (@{ $result->ConfigurationSets });
        $result = $self->ListConfigurationSets(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ConfigurationSets') foreach (@{ $result->ConfigurationSets });
    }

    return undef
  }
  sub ListAllCustomVerificationEmailTemplates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCustomVerificationEmailTemplates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListCustomVerificationEmailTemplates(@_, NextToken => $next_result->NextToken);
        push @{ $result->CustomVerificationEmailTemplates }, @{ $next_result->CustomVerificationEmailTemplates };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'CustomVerificationEmailTemplates') foreach (@{ $result->CustomVerificationEmailTemplates });
        $result = $self->ListCustomVerificationEmailTemplates(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'CustomVerificationEmailTemplates') foreach (@{ $result->CustomVerificationEmailTemplates });
    }

    return undef
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
  sub ListAllReceiptRuleSets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListReceiptRuleSets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListReceiptRuleSets(@_, NextToken => $next_result->NextToken);
        push @{ $result->RuleSets }, @{ $next_result->RuleSets };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'RuleSets') foreach (@{ $result->RuleSets });
        $result = $self->ListReceiptRuleSets(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'RuleSets') foreach (@{ $result->RuleSets });
    }

    return undef
  }
  sub ListAllTemplates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTemplates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTemplates(@_, NextToken => $next_result->NextToken);
        push @{ $result->TemplatesMetadata }, @{ $next_result->TemplatesMetadata };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TemplatesMetadata') foreach (@{ $result->TemplatesMetadata });
        $result = $self->ListTemplates(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TemplatesMetadata') foreach (@{ $result->TemplatesMetadata });
    }

    return undef
  }


  sub operations { qw/CloneReceiptRuleSet CreateConfigurationSet CreateConfigurationSetEventDestination CreateConfigurationSetTrackingOptions CreateCustomVerificationEmailTemplate CreateReceiptFilter CreateReceiptRule CreateReceiptRuleSet CreateTemplate DeleteConfigurationSet DeleteConfigurationSetEventDestination DeleteConfigurationSetTrackingOptions DeleteCustomVerificationEmailTemplate DeleteIdentity DeleteIdentityPolicy DeleteReceiptFilter DeleteReceiptRule DeleteReceiptRuleSet DeleteTemplate DeleteVerifiedEmailAddress DescribeActiveReceiptRuleSet DescribeConfigurationSet DescribeReceiptRule DescribeReceiptRuleSet GetAccountSendingEnabled GetCustomVerificationEmailTemplate GetIdentityDkimAttributes GetIdentityMailFromDomainAttributes GetIdentityNotificationAttributes GetIdentityPolicies GetIdentityVerificationAttributes GetSendQuota GetSendStatistics GetTemplate ListConfigurationSets ListCustomVerificationEmailTemplates ListIdentities ListIdentityPolicies ListReceiptFilters ListReceiptRuleSets ListTemplates ListVerifiedEmailAddresses PutIdentityPolicy ReorderReceiptRuleSet SendBounce SendBulkTemplatedEmail SendCustomVerificationEmail SendEmail SendRawEmail SendTemplatedEmail SetActiveReceiptRuleSet SetIdentityDkimEnabled SetIdentityFeedbackForwardingEnabled SetIdentityHeadersInNotificationsEnabled SetIdentityMailFromDomain SetIdentityNotificationTopic SetReceiptRulePosition TestRenderTemplate UpdateAccountSendingEnabled UpdateConfigurationSetEventDestination UpdateConfigurationSetReputationMetricsEnabled UpdateConfigurationSetSendingEnabled UpdateConfigurationSetTrackingOptions UpdateCustomVerificationEmailTemplate UpdateReceiptRule UpdateTemplate VerifyDomainDkim VerifyDomainIdentity VerifyEmailAddress VerifyEmailIdentity / }

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

This document contains reference information for the Amazon Simple
Email Service (https://aws.amazon.com/ses/) (Amazon SES) API, version
2010-12-01. This document is best used in conjunction with the Amazon
SES Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/Welcome.html).

For a list of Amazon SES endpoints to use in service requests, see
Regions and Amazon SES
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/regions.html) in
the Amazon SES Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/Welcome.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/ses/>


=head1 METHODS

=head2 CloneReceiptRuleSet

=over

=item OriginalRuleSetName => Str

=item RuleSetName => Str


=back

Each argument is described in detail in: L<Paws::SES::CloneReceiptRuleSet>

Returns: a L<Paws::SES::CloneReceiptRuleSetResponse> instance

Creates a receipt rule set by cloning an existing one. All receipt
rules and configurations are copied to the new receipt rule set and are
completely independent of the source rule set.

For information about setting up rule sets, see the Amazon SES
Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rule-set.html).

You can execute this operation no more than once per second.


=head2 CreateConfigurationSet

=over

=item ConfigurationSet => L<Paws::SES::ConfigurationSet>


=back

Each argument is described in detail in: L<Paws::SES::CreateConfigurationSet>

Returns: a L<Paws::SES::CreateConfigurationSetResponse> instance

Creates a configuration set.

Configuration sets enable you to publish email sending events. For
information about using configuration sets, see the Amazon SES
Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html).

You can execute this operation no more than once per second.


=head2 CreateConfigurationSetEventDestination

=over

=item ConfigurationSetName => Str

=item EventDestination => L<Paws::SES::EventDestination>


=back

Each argument is described in detail in: L<Paws::SES::CreateConfigurationSetEventDestination>

Returns: a L<Paws::SES::CreateConfigurationSetEventDestinationResponse> instance

Creates a configuration set event destination.

When you create or update an event destination, you must provide one,
and only one, destination. The destination can be CloudWatch, Amazon
Kinesis Firehose, or Amazon Simple Notification Service (Amazon SNS).

An event destination is the AWS service to which Amazon SES publishes
the email sending events associated with a configuration set. For
information about using configuration sets, see the Amazon SES
Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html).

You can execute this operation no more than once per second.


=head2 CreateConfigurationSetTrackingOptions

=over

=item ConfigurationSetName => Str

=item TrackingOptions => L<Paws::SES::TrackingOptions>


=back

Each argument is described in detail in: L<Paws::SES::CreateConfigurationSetTrackingOptions>

Returns: a L<Paws::SES::CreateConfigurationSetTrackingOptionsResponse> instance

Creates an association between a configuration set and a custom domain
for open and click event tracking.

By default, images and links used for tracking open and click events
are hosted on domains operated by Amazon SES. You can configure a
subdomain of your own to handle these events. For information about
using custom domains, see the Amazon SES Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/configure-custom-open-click-domains.html).


=head2 CreateCustomVerificationEmailTemplate

=over

=item FailureRedirectionURL => Str

=item FromEmailAddress => Str

=item SuccessRedirectionURL => Str

=item TemplateContent => Str

=item TemplateName => Str

=item TemplateSubject => Str


=back

Each argument is described in detail in: L<Paws::SES::CreateCustomVerificationEmailTemplate>

Returns: nothing

Creates a new custom verification email template.

For more information about custom verification email templates, see
Using Custom Verification Email Templates
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html)
in the I<Amazon SES Developer Guide>.

You can execute this operation no more than once per second.


=head2 CreateReceiptFilter

=over

=item Filter => L<Paws::SES::ReceiptFilter>


=back

Each argument is described in detail in: L<Paws::SES::CreateReceiptFilter>

Returns: a L<Paws::SES::CreateReceiptFilterResponse> instance

Creates a new IP address filter.

For information about setting up IP address filters, see the Amazon SES
Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-ip-filters.html).

You can execute this operation no more than once per second.


=head2 CreateReceiptRule

=over

=item Rule => L<Paws::SES::ReceiptRule>

=item RuleSetName => Str

=item [After => Str]


=back

Each argument is described in detail in: L<Paws::SES::CreateReceiptRule>

Returns: a L<Paws::SES::CreateReceiptRuleResponse> instance

Creates a receipt rule.

For information about setting up receipt rules, see the Amazon SES
Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html).

You can execute this operation no more than once per second.


=head2 CreateReceiptRuleSet

=over

=item RuleSetName => Str


=back

Each argument is described in detail in: L<Paws::SES::CreateReceiptRuleSet>

Returns: a L<Paws::SES::CreateReceiptRuleSetResponse> instance

Creates an empty receipt rule set.

For information about setting up receipt rule sets, see the Amazon SES
Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rule-set.html).

You can execute this operation no more than once per second.


=head2 CreateTemplate

=over

=item Template => L<Paws::SES::Template>


=back

Each argument is described in detail in: L<Paws::SES::CreateTemplate>

Returns: a L<Paws::SES::CreateTemplateResponse> instance

Creates an email template. Email templates enable you to send
personalized email to one or more destinations in a single API
operation. For more information, see the Amazon SES Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html).

You can execute this operation no more than once per second.


=head2 DeleteConfigurationSet

=over

=item ConfigurationSetName => Str


=back

Each argument is described in detail in: L<Paws::SES::DeleteConfigurationSet>

Returns: a L<Paws::SES::DeleteConfigurationSetResponse> instance

Deletes a configuration set. Configuration sets enable you to publish
email sending events. For information about using configuration sets,
see the Amazon SES Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html).

You can execute this operation no more than once per second.


=head2 DeleteConfigurationSetEventDestination

=over

=item ConfigurationSetName => Str

=item EventDestinationName => Str


=back

Each argument is described in detail in: L<Paws::SES::DeleteConfigurationSetEventDestination>

Returns: a L<Paws::SES::DeleteConfigurationSetEventDestinationResponse> instance

Deletes a configuration set event destination. Configuration set event
destinations are associated with configuration sets, which enable you
to publish email sending events. For information about using
configuration sets, see the Amazon SES Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html).

You can execute this operation no more than once per second.


=head2 DeleteConfigurationSetTrackingOptions

=over

=item ConfigurationSetName => Str


=back

Each argument is described in detail in: L<Paws::SES::DeleteConfigurationSetTrackingOptions>

Returns: a L<Paws::SES::DeleteConfigurationSetTrackingOptionsResponse> instance

Deletes an association between a configuration set and a custom domain
for open and click event tracking.

By default, images and links used for tracking open and click events
are hosted on domains operated by Amazon SES. You can configure a
subdomain of your own to handle these events. For information about
using custom domains, see the Amazon SES Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/configure-custom-open-click-domains.html).

Deleting this kind of association will result in emails sent using the
specified configuration set to capture open and click events using the
standard, Amazon SES-operated domains.


=head2 DeleteCustomVerificationEmailTemplate

=over

=item TemplateName => Str


=back

Each argument is described in detail in: L<Paws::SES::DeleteCustomVerificationEmailTemplate>

Returns: nothing

Deletes an existing custom verification email template.

For more information about custom verification email templates, see
Using Custom Verification Email Templates
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html)
in the I<Amazon SES Developer Guide>.

You can execute this operation no more than once per second.


=head2 DeleteIdentity

=over

=item Identity => Str


=back

Each argument is described in detail in: L<Paws::SES::DeleteIdentity>

Returns: a L<Paws::SES::DeleteIdentityResponse> instance

Deletes the specified identity (an email address or a domain) from the
list of verified identities.

You can execute this operation no more than once per second.


=head2 DeleteIdentityPolicy

=over

=item Identity => Str

=item PolicyName => Str


=back

Each argument is described in detail in: L<Paws::SES::DeleteIdentityPolicy>

Returns: a L<Paws::SES::DeleteIdentityPolicyResponse> instance

Deletes the specified sending authorization policy for the given
identity (an email address or a domain). This API returns successfully
even if a policy with the specified name does not exist.

This API is for the identity owner only. If you have not verified the
identity, this API will return an error.

Sending authorization is a feature that enables an identity owner to
authorize other senders to use its identities. For information about
using sending authorization, see the Amazon SES Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html).

You can execute this operation no more than once per second.


=head2 DeleteReceiptFilter

=over

=item FilterName => Str


=back

Each argument is described in detail in: L<Paws::SES::DeleteReceiptFilter>

Returns: a L<Paws::SES::DeleteReceiptFilterResponse> instance

Deletes the specified IP address filter.

For information about managing IP address filters, see the Amazon SES
Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-ip-filters.html).

You can execute this operation no more than once per second.


=head2 DeleteReceiptRule

=over

=item RuleName => Str

=item RuleSetName => Str


=back

Each argument is described in detail in: L<Paws::SES::DeleteReceiptRule>

Returns: a L<Paws::SES::DeleteReceiptRuleResponse> instance

Deletes the specified receipt rule.

For information about managing receipt rules, see the Amazon SES
Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rules.html).

You can execute this operation no more than once per second.


=head2 DeleteReceiptRuleSet

=over

=item RuleSetName => Str


=back

Each argument is described in detail in: L<Paws::SES::DeleteReceiptRuleSet>

Returns: a L<Paws::SES::DeleteReceiptRuleSetResponse> instance

Deletes the specified receipt rule set and all of the receipt rules it
contains.

The currently active rule set cannot be deleted.

For information about managing receipt rule sets, see the Amazon SES
Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html).

You can execute this operation no more than once per second.


=head2 DeleteTemplate

=over

=item TemplateName => Str


=back

Each argument is described in detail in: L<Paws::SES::DeleteTemplate>

Returns: a L<Paws::SES::DeleteTemplateResponse> instance

Deletes an email template.

You can execute this operation no more than once per second.


=head2 DeleteVerifiedEmailAddress

=over

=item EmailAddress => Str


=back

Each argument is described in detail in: L<Paws::SES::DeleteVerifiedEmailAddress>

Returns: nothing

Deprecated. Use the C<DeleteIdentity> operation to delete email
addresses and domains.


=head2 DescribeActiveReceiptRuleSet






Each argument is described in detail in: L<Paws::SES::DescribeActiveReceiptRuleSet>

Returns: a L<Paws::SES::DescribeActiveReceiptRuleSetResponse> instance

Returns the metadata and receipt rules for the receipt rule set that is
currently active.

For information about setting up receipt rule sets, see the Amazon SES
Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rule-set.html).

You can execute this operation no more than once per second.


=head2 DescribeConfigurationSet

=over

=item ConfigurationSetName => Str

=item [ConfigurationSetAttributeNames => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::SES::DescribeConfigurationSet>

Returns: a L<Paws::SES::DescribeConfigurationSetResponse> instance

Returns the details of the specified configuration set. For information
about using configuration sets, see the Amazon SES Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html).

You can execute this operation no more than once per second.


=head2 DescribeReceiptRule

=over

=item RuleName => Str

=item RuleSetName => Str


=back

Each argument is described in detail in: L<Paws::SES::DescribeReceiptRule>

Returns: a L<Paws::SES::DescribeReceiptRuleResponse> instance

Returns the details of the specified receipt rule.

For information about setting up receipt rules, see the Amazon SES
Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html).

You can execute this operation no more than once per second.


=head2 DescribeReceiptRuleSet

=over

=item RuleSetName => Str


=back

Each argument is described in detail in: L<Paws::SES::DescribeReceiptRuleSet>

Returns: a L<Paws::SES::DescribeReceiptRuleSetResponse> instance

Returns the details of the specified receipt rule set.

For information about managing receipt rule sets, see the Amazon SES
Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html).

You can execute this operation no more than once per second.


=head2 GetAccountSendingEnabled

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::SES::GetAccountSendingEnabled>

Returns: a L<Paws::SES::GetAccountSendingEnabledResponse> instance

Returns the email sending status of the Amazon SES account for the
current region.

You can execute this operation no more than once per second.


=head2 GetCustomVerificationEmailTemplate

=over

=item TemplateName => Str


=back

Each argument is described in detail in: L<Paws::SES::GetCustomVerificationEmailTemplate>

Returns: a L<Paws::SES::GetCustomVerificationEmailTemplateResponse> instance

Returns the custom email verification template for the template name
you specify.

For more information about custom verification email templates, see
Using Custom Verification Email Templates
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html)
in the I<Amazon SES Developer Guide>.

You can execute this operation no more than once per second.


=head2 GetIdentityDkimAttributes

=over

=item Identities => ArrayRef[Str|Undef]


=back

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
to the Amazon SES Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim-dns-records.html).


=head2 GetIdentityMailFromDomainAttributes

=over

=item Identities => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::SES::GetIdentityMailFromDomainAttributes>

Returns: a L<Paws::SES::GetIdentityMailFromDomainAttributesResponse> instance

Returns the custom MAIL FROM attributes for a list of identities (email
addresses : domains).

This operation is throttled at one request per second and can only get
custom MAIL FROM attributes for up to 100 identities at a time.


=head2 GetIdentityNotificationAttributes

=over

=item Identities => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::SES::GetIdentityNotificationAttributes>

Returns: a L<Paws::SES::GetIdentityNotificationAttributesResponse> instance

Given a list of verified identities (email addresses and/or domains),
returns a structure describing identity notification attributes.

This operation is throttled at one request per second and can only get
notification attributes for up to 100 identities at a time.

For more information about using notifications with Amazon SES, see the
Amazon SES Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications.html).


=head2 GetIdentityPolicies

=over

=item Identity => Str

=item PolicyNames => ArrayRef[Str|Undef]


=back

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
using sending authorization, see the Amazon SES Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html).

You can execute this operation no more than once per second.


=head2 GetIdentityVerificationAttributes

=over

=item Identities => ArrayRef[Str|Undef]


=back

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


=head2 GetSendQuota

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::SES::GetSendQuota>

Returns: a L<Paws::SES::GetSendQuotaResponse> instance

Provides the sending limits for the Amazon SES account.

You can execute this operation no more than once per second.


=head2 GetSendStatistics

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::SES::GetSendStatistics>

Returns: a L<Paws::SES::GetSendStatisticsResponse> instance

Provides sending statistics for the current AWS Region. The result is a
list of data points, representing the last two weeks of sending
activity. Each data point in the list contains statistics for a
15-minute period of time.

You can execute this operation no more than once per second.


=head2 GetTemplate

=over

=item TemplateName => Str


=back

Each argument is described in detail in: L<Paws::SES::GetTemplate>

Returns: a L<Paws::SES::GetTemplateResponse> instance

Displays the template object (which includes the Subject line, HTML
part and text part) for the template you specify.

You can execute this operation no more than once per second.


=head2 ListConfigurationSets

=over

=item [MaxItems => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SES::ListConfigurationSets>

Returns: a L<Paws::SES::ListConfigurationSetsResponse> instance

Provides a list of the configuration sets associated with your Amazon
SES account in the current AWS Region. For information about using
configuration sets, see Monitoring Your Amazon SES Sending Activity
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html)
in the I<Amazon SES Developer Guide.>

You can execute this operation no more than once per second. This
operation will return up to 1,000 configuration sets each time it is
run. If your Amazon SES account has more than 1,000 configuration sets,
this operation will also return a NextToken element. You can then
execute the C<ListConfigurationSets> operation again, passing the
C<NextToken> parameter and the value of the NextToken element to
retrieve additional results.


=head2 ListCustomVerificationEmailTemplates

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SES::ListCustomVerificationEmailTemplates>

Returns: a L<Paws::SES::ListCustomVerificationEmailTemplatesResponse> instance

Lists the existing custom verification email templates for your account
in the current AWS Region.

For more information about custom verification email templates, see
Using Custom Verification Email Templates
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html)
in the I<Amazon SES Developer Guide>.

You can execute this operation no more than once per second.


=head2 ListIdentities

=over

=item [IdentityType => Str]

=item [MaxItems => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SES::ListIdentities>

Returns: a L<Paws::SES::ListIdentitiesResponse> instance

Returns a list containing all of the identities (email addresses and
domains) for your AWS account in the current AWS Region, regardless of
verification status.

You can execute this operation no more than once per second.


=head2 ListIdentityPolicies

=over

=item Identity => Str


=back

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
using sending authorization, see the Amazon SES Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html).

You can execute this operation no more than once per second.


=head2 ListReceiptFilters






Each argument is described in detail in: L<Paws::SES::ListReceiptFilters>

Returns: a L<Paws::SES::ListReceiptFiltersResponse> instance

Lists the IP address filters associated with your AWS account in the
current AWS Region.

For information about managing IP address filters, see the Amazon SES
Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-ip-filters.html).

You can execute this operation no more than once per second.


=head2 ListReceiptRuleSets

=over

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SES::ListReceiptRuleSets>

Returns: a L<Paws::SES::ListReceiptRuleSetsResponse> instance

Lists the receipt rule sets that exist under your AWS account in the
current AWS Region. If there are additional receipt rule sets to be
retrieved, you will receive a C<NextToken> that you can provide to the
next call to C<ListReceiptRuleSets> to retrieve the additional entries.

For information about managing receipt rule sets, see the Amazon SES
Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html).

You can execute this operation no more than once per second.


=head2 ListTemplates

=over

=item [MaxItems => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SES::ListTemplates>

Returns: a L<Paws::SES::ListTemplatesResponse> instance

Lists the email templates present in your Amazon SES account in the
current AWS Region.

You can execute this operation no more than once per second.


=head2 ListVerifiedEmailAddresses

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::SES::ListVerifiedEmailAddresses>

Returns: a L<Paws::SES::ListVerifiedEmailAddressesResponse> instance

Deprecated. Use the C<ListIdentities> operation to list the email
addresses and domains associated with your account.


=head2 PutIdentityPolicy

=over

=item Identity => Str

=item Policy => Str

=item PolicyName => Str


=back

Each argument is described in detail in: L<Paws::SES::PutIdentityPolicy>

Returns: a L<Paws::SES::PutIdentityPolicyResponse> instance

Adds or updates a sending authorization policy for the specified
identity (an email address or a domain).

This API is for the identity owner only. If you have not verified the
identity, this API will return an error.

Sending authorization is a feature that enables an identity owner to
authorize other senders to use its identities. For information about
using sending authorization, see the Amazon SES Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html).

You can execute this operation no more than once per second.


=head2 ReorderReceiptRuleSet

=over

=item RuleNames => ArrayRef[Str|Undef]

=item RuleSetName => Str


=back

Each argument is described in detail in: L<Paws::SES::ReorderReceiptRuleSet>

Returns: a L<Paws::SES::ReorderReceiptRuleSetResponse> instance

Reorders the receipt rules within a receipt rule set.

All of the rules in the rule set must be represented in this request.
That is, this API will return an error if the reorder request doesn't
explicitly position all of the rules.

For information about managing receipt rule sets, see the Amazon SES
Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html).

You can execute this operation no more than once per second.


=head2 SendBounce

=over

=item BouncedRecipientInfoList => ArrayRef[L<Paws::SES::BouncedRecipientInfo>]

=item BounceSender => Str

=item OriginalMessageId => Str

=item [BounceSenderArn => Str]

=item [Explanation => Str]

=item [MessageDsn => L<Paws::SES::MessageDsn>]


=back

Each argument is described in detail in: L<Paws::SES::SendBounce>

Returns: a L<Paws::SES::SendBounceResponse> instance

Generates and sends a bounce message to the sender of an email you
received through Amazon SES. You can only use this API on an email up
to 24 hours after you receive it.

You cannot use this API to send generic bounces for mail that was not
received by Amazon SES.

For information about receiving email through Amazon SES, see the
Amazon SES Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html).

You can execute this operation no more than once per second.


=head2 SendBulkTemplatedEmail

=over

=item Destinations => ArrayRef[L<Paws::SES::BulkEmailDestination>]

=item Source => Str

=item Template => Str

=item [ConfigurationSetName => Str]

=item [DefaultTags => ArrayRef[L<Paws::SES::MessageTag>]]

=item [DefaultTemplateData => Str]

=item [ReplyToAddresses => ArrayRef[Str|Undef]]

=item [ReturnPath => Str]

=item [ReturnPathArn => Str]

=item [SourceArn => Str]

=item [TemplateArn => Str]


=back

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
Email Addresses and Domains
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html)
in the I<Amazon SES Developer Guide.>

=item *

The maximum message size is 10 MB.

=item *

Each C<Destination> parameter must include at least one recipient email
address. The recipient address can be a To: address, a CC: address, or
a BCC: address. If a recipient email address is invalid (that is, it is
not in the format I<UserName@[SubDomain.]Domain.TopLevelDomain>), the
entire message will be rejected, even if the message contains other
recipients that are valid.

=item *

The message may not include more than 50 recipients, across the To:,
CC: and BCC: fields. If you need to send an email message to a larger
audience, you can divide your recipient list into groups of 50 or
fewer, and then call the C<SendBulkTemplatedEmail> operation several
times to send the message to each group.

=item *

The number of destinations you can contact in a single call to the API
may be limited by your account's maximum sending rate.

=back



=head2 SendCustomVerificationEmail

=over

=item EmailAddress => Str

=item TemplateName => Str

=item [ConfigurationSetName => Str]


=back

Each argument is described in detail in: L<Paws::SES::SendCustomVerificationEmail>

Returns: a L<Paws::SES::SendCustomVerificationEmailResponse> instance

Adds an email address to the list of identities for your Amazon SES
account in the current AWS Region and attempts to verify it. As a
result of executing this operation, a customized verification email is
sent to the specified address.

To use this operation, you must first create a custom verification
email template. For more information about creating and using custom
verification email templates, see Using Custom Verification Email
Templates
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html)
in the I<Amazon SES Developer Guide>.

You can execute this operation no more than once per second.


=head2 SendEmail

=over

=item Destination => L<Paws::SES::Destination>

=item Message => L<Paws::SES::Message>

=item Source => Str

=item [ConfigurationSetName => Str]

=item [ReplyToAddresses => ArrayRef[Str|Undef]]

=item [ReturnPath => Str]

=item [ReturnPathArn => Str]

=item [SourceArn => Str]

=item [Tags => ArrayRef[L<Paws::SES::MessageTag>]]


=back

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
Email Addresses and Domains
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html)
in the I<Amazon SES Developer Guide.>

=item *

The maximum message size is 10 MB.

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
Amazon SES, see Managing Your Amazon SES Sending Limits
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/manage-sending-limits.html)
in the I<Amazon SES Developer Guide.>


=head2 SendRawEmail

=over

=item RawMessage => L<Paws::SES::RawMessage>

=item [ConfigurationSetName => Str]

=item [Destinations => ArrayRef[Str|Undef]]

=item [FromArn => Str]

=item [ReturnPathArn => Str]

=item [Source => Str]

=item [SourceArn => Str]

=item [Tags => ArrayRef[L<Paws::SES::MessageTag>]]


=back

Each argument is described in detail in: L<Paws::SES::SendRawEmail>

Returns: a L<Paws::SES::SendRawEmailResponse> instance

Composes an email message and immediately queues it for sending.

This operation is more flexible than the C<SendEmail> API operation.
When you use the C<SendRawEmail> operation, you can specify the headers
of the message as well as its content. This flexibility is useful, for
example, when you want to send a multipart MIME email (such a message
that contains both a text and an HTML version). You can also use this
operation to send messages that include attachments.

The C<SendRawEmail> operation has the following requirements:

=over

=item *

You can only send email from verified email addresses or domains
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html).
If you try to send email from an address that isn't verified, the
operation results in an "Email address not verified" error.

=item *

If your account is still in the Amazon SES sandbox
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/request-production-access.html),
you can only send email to other verified addresses in your account, or
to addresses that are associated with the Amazon SES mailbox simulator
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/mailbox-simulator.html).

=item *

The maximum message size, including attachments, is 10 MB.

=item *

Each message has to include at least one recipient address. A recipient
address includes any address on the To:, CC:, or BCC: lines.

=item *

If you send a single message to more than one recipient address, and
one of the recipient addresses isn't in a valid format (that is, it's
not in the format I<UserName@[SubDomain.]Domain.TopLevelDomain>),
Amazon SES rejects the entire message, even if the other addresses are
valid.

=item *

Each message can include up to 50 recipient addresses across the To:,
CC:, or BCC: lines. If you need to send a single message to more than
50 recipients, you have to split the list of recipient addresses into
groups of less than 50 recipients, and send separate messages to each
group.

=item *

Amazon SES allows you to specify 8-bit Content-Transfer-Encoding for
MIME message parts. However, if Amazon SES has to modify the contents
of your message (for example, if you use open and click tracking),
8-bit content isn't preserved. For this reason, we highly recommend
that you encode all content that isn't 7-bit ASCII. For more
information, see MIME Encoding
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-raw.html#send-email-mime-encoding)
in the I<Amazon SES Developer Guide>.

=back

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
see the Using Sending Authorization with Amazon SES
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html)
in the I<Amazon SES Developer Guide.>

=item *

For every message that you send, the total number of recipients
(including each recipient in the To:, CC: and BCC: fields) is counted
against the maximum number of emails you can send in a 24-hour period
(your I<sending quota>). For more information about sending quotas in
Amazon SES, see Managing Your Amazon SES Sending Limits
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/manage-sending-limits.html)
in the I<Amazon SES Developer Guide.>

=back



=head2 SendTemplatedEmail

=over

=item Destination => L<Paws::SES::Destination>

=item Source => Str

=item Template => Str

=item TemplateData => Str

=item [ConfigurationSetName => Str]

=item [ReplyToAddresses => ArrayRef[Str|Undef]]

=item [ReturnPath => Str]

=item [ReturnPathArn => Str]

=item [SourceArn => Str]

=item [Tags => ArrayRef[L<Paws::SES::MessageTag>]]

=item [TemplateArn => Str]


=back

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
Email Addresses and Domains
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html)
in the I<Amazon SES Developer Guide.>

=item *

The maximum message size is 10 MB.

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

If your call to the C<SendTemplatedEmail> operation includes all of the
required parameters, Amazon SES accepts it and returns a Message ID.
However, if Amazon SES can't render the email because the template
contains errors, it doesn't send the email. Additionally, because it
already accepted the message, Amazon SES doesn't return a message
stating that it was unable to send the email.

For these reasons, we highly recommend that you set up Amazon SES to
send you notifications when Rendering Failure events occur. For more
information, see Sending Personalized Email Using the Amazon SES API
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html)
in the I<Amazon Simple Email Service Developer Guide>.


=head2 SetActiveReceiptRuleSet

=over

=item [RuleSetName => Str]


=back

Each argument is described in detail in: L<Paws::SES::SetActiveReceiptRuleSet>

Returns: a L<Paws::SES::SetActiveReceiptRuleSetResponse> instance

Sets the specified receipt rule set as the active receipt rule set.

To disable your email-receiving through Amazon SES completely, you can
call this API with RuleSetName set to null.

For information about managing receipt rule sets, see the Amazon SES
Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html).

You can execute this operation no more than once per second.


=head2 SetIdentityDkimEnabled

=over

=item DkimEnabled => Bool

=item Identity => Str


=back

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
Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html).


=head2 SetIdentityFeedbackForwardingEnabled

=over

=item ForwardingEnabled => Bool

=item Identity => Str


=back

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
Amazon SES Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications.html).


=head2 SetIdentityHeadersInNotificationsEnabled

=over

=item Enabled => Bool

=item Identity => Str

=item NotificationType => Str


=back

Each argument is described in detail in: L<Paws::SES::SetIdentityHeadersInNotificationsEnabled>

Returns: a L<Paws::SES::SetIdentityHeadersInNotificationsEnabledResponse> instance

Given an identity (an email address or a domain), sets whether Amazon
SES includes the original email headers in the Amazon Simple
Notification Service (Amazon SNS) notifications of a specified type.

You can execute this operation no more than once per second.

For more information about using notifications with Amazon SES, see the
Amazon SES Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications.html).


=head2 SetIdentityMailFromDomain

=over

=item Identity => Str

=item [BehaviorOnMXFailure => Str]

=item [MailFromDomain => Str]


=back

Each argument is described in detail in: L<Paws::SES::SetIdentityMailFromDomain>

Returns: a L<Paws::SES::SetIdentityMailFromDomainResponse> instance

Enables or disables the custom MAIL FROM domain setup for a verified
identity (an email address or a domain).

To send emails using the specified MAIL FROM domain, you must add an MX
record to your MAIL FROM domain's DNS settings. If you want your emails
to pass Sender Policy Framework (SPF) checks, you must also add or
update an SPF record. For more information, see the Amazon SES
Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/mail-from-set.html).

You can execute this operation no more than once per second.


=head2 SetIdentityNotificationTopic

=over

=item Identity => Str

=item NotificationType => Str

=item [SnsTopic => Str]


=back

Each argument is described in detail in: L<Paws::SES::SetIdentityNotificationTopic>

Returns: a L<Paws::SES::SetIdentityNotificationTopicResponse> instance

Sets an Amazon Simple Notification Service (Amazon SNS) topic to use
when delivering notifications. When you use this operation, you specify
a verified identity, such as an email address or domain. When you send
an email that uses the chosen identity in the Source field, Amazon SES
sends notifications to the topic you specified. You can send bounce,
complaint, or delivery notifications (or any combination of the three)
to the Amazon SNS topic that you specify.

You can execute this operation no more than once per second.

For more information about feedback notification, see the Amazon SES
Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications.html).


=head2 SetReceiptRulePosition

=over

=item RuleName => Str

=item RuleSetName => Str

=item [After => Str]


=back

Each argument is described in detail in: L<Paws::SES::SetReceiptRulePosition>

Returns: a L<Paws::SES::SetReceiptRulePositionResponse> instance

Sets the position of the specified receipt rule in the receipt rule
set.

For information about managing receipt rules, see the Amazon SES
Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rules.html).

You can execute this operation no more than once per second.


=head2 TestRenderTemplate

=over

=item TemplateData => Str

=item TemplateName => Str


=back

Each argument is described in detail in: L<Paws::SES::TestRenderTemplate>

Returns: a L<Paws::SES::TestRenderTemplateResponse> instance

Creates a preview of the MIME content of an email when provided with a
template and a set of replacement data.

You can execute this operation no more than once per second.


=head2 UpdateAccountSendingEnabled

=over

=item [Enabled => Bool]


=back

Each argument is described in detail in: L<Paws::SES::UpdateAccountSendingEnabled>

Returns: nothing

Enables or disables email sending across your entire Amazon SES account
in the current AWS Region. You can use this operation in conjunction
with Amazon CloudWatch alarms to temporarily pause email sending across
your Amazon SES account in a given AWS Region when reputation metrics
(such as your bounce or complaint rates) reach certain thresholds.

You can execute this operation no more than once per second.


=head2 UpdateConfigurationSetEventDestination

=over

=item ConfigurationSetName => Str

=item EventDestination => L<Paws::SES::EventDestination>


=back

Each argument is described in detail in: L<Paws::SES::UpdateConfigurationSetEventDestination>

Returns: a L<Paws::SES::UpdateConfigurationSetEventDestinationResponse> instance

Updates the event destination of a configuration set. Event
destinations are associated with configuration sets, which enable you
to publish email sending events to Amazon CloudWatch, Amazon Kinesis
Firehose, or Amazon Simple Notification Service (Amazon SNS). For
information about using configuration sets, see Monitoring Your Amazon
SES Sending Activity
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html)
in the I<Amazon SES Developer Guide.>

When you create or update an event destination, you must provide one,
and only one, destination. The destination can be Amazon CloudWatch,
Amazon Kinesis Firehose, or Amazon Simple Notification Service (Amazon
SNS).

You can execute this operation no more than once per second.


=head2 UpdateConfigurationSetReputationMetricsEnabled

=over

=item ConfigurationSetName => Str

=item Enabled => Bool


=back

Each argument is described in detail in: L<Paws::SES::UpdateConfigurationSetReputationMetricsEnabled>

Returns: nothing

Enables or disables the publishing of reputation metrics for emails
sent using a specific configuration set in a given AWS Region.
Reputation metrics include bounce and complaint rates. These metrics
are published to Amazon CloudWatch. By using CloudWatch, you can create
alarms when bounce or complaint rates exceed certain thresholds.

You can execute this operation no more than once per second.


=head2 UpdateConfigurationSetSendingEnabled

=over

=item ConfigurationSetName => Str

=item Enabled => Bool


=back

Each argument is described in detail in: L<Paws::SES::UpdateConfigurationSetSendingEnabled>

Returns: nothing

Enables or disables email sending for messages sent using a specific
configuration set in a given AWS Region. You can use this operation in
conjunction with Amazon CloudWatch alarms to temporarily pause email
sending for a configuration set when the reputation metrics for that
configuration set (such as your bounce on complaint rate) exceed
certain thresholds.

You can execute this operation no more than once per second.


=head2 UpdateConfigurationSetTrackingOptions

=over

=item ConfigurationSetName => Str

=item TrackingOptions => L<Paws::SES::TrackingOptions>


=back

Each argument is described in detail in: L<Paws::SES::UpdateConfigurationSetTrackingOptions>

Returns: a L<Paws::SES::UpdateConfigurationSetTrackingOptionsResponse> instance

Modifies an association between a configuration set and a custom domain
for open and click event tracking.

By default, images and links used for tracking open and click events
are hosted on domains operated by Amazon SES. You can configure a
subdomain of your own to handle these events. For information about
using custom domains, see the Amazon SES Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/configure-custom-open-click-domains.html).


=head2 UpdateCustomVerificationEmailTemplate

=over

=item TemplateName => Str

=item [FailureRedirectionURL => Str]

=item [FromEmailAddress => Str]

=item [SuccessRedirectionURL => Str]

=item [TemplateContent => Str]

=item [TemplateSubject => Str]


=back

Each argument is described in detail in: L<Paws::SES::UpdateCustomVerificationEmailTemplate>

Returns: nothing

Updates an existing custom verification email template.

For more information about custom verification email templates, see
Using Custom Verification Email Templates
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html)
in the I<Amazon SES Developer Guide>.

You can execute this operation no more than once per second.


=head2 UpdateReceiptRule

=over

=item Rule => L<Paws::SES::ReceiptRule>

=item RuleSetName => Str


=back

Each argument is described in detail in: L<Paws::SES::UpdateReceiptRule>

Returns: a L<Paws::SES::UpdateReceiptRuleResponse> instance

Updates a receipt rule.

For information about managing receipt rules, see the Amazon SES
Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rules.html).

You can execute this operation no more than once per second.


=head2 UpdateTemplate

=over

=item Template => L<Paws::SES::Template>


=back

Each argument is described in detail in: L<Paws::SES::UpdateTemplate>

Returns: a L<Paws::SES::UpdateTemplateResponse> instance

Updates an email template. Email templates enable you to send
personalized email to one or more destinations in a single API
operation. For more information, see the Amazon SES Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html).

You can execute this operation no more than once per second.


=head2 VerifyDomainDkim

=over

=item Domain => Str


=back

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
to the Amazon SES Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim-dns-records.html).


=head2 VerifyDomainIdentity

=over

=item Domain => Str


=back

Each argument is described in detail in: L<Paws::SES::VerifyDomainIdentity>

Returns: a L<Paws::SES::VerifyDomainIdentityResponse> instance

Adds a domain to the list of identities for your Amazon SES account in
the current AWS Region and attempts to verify it. For more information
about verifying domains, see Verifying Email Addresses and Domains
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html)
in the I<Amazon SES Developer Guide.>

You can execute this operation no more than once per second.


=head2 VerifyEmailAddress

=over

=item EmailAddress => Str


=back

Each argument is described in detail in: L<Paws::SES::VerifyEmailAddress>

Returns: nothing

Deprecated. Use the C<VerifyEmailIdentity> operation to verify a new
email address.


=head2 VerifyEmailIdentity

=over

=item EmailAddress => Str


=back

Each argument is described in detail in: L<Paws::SES::VerifyEmailIdentity>

Returns: a L<Paws::SES::VerifyEmailIdentityResponse> instance

Adds an email address to the list of identities for your Amazon SES
account in the current AWS region and attempts to verify it. As a
result of executing this operation, a verification email is sent to the
specified address.

You can execute this operation no more than once per second.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllConfigurationSets(sub { },[MaxItems => Int, NextToken => Str])

=head2 ListAllConfigurationSets([MaxItems => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ConfigurationSets, passing the object as the first parameter, and the string 'ConfigurationSets' as the second parameter 

If not, it will return a a L<Paws::SES::ListConfigurationSetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCustomVerificationEmailTemplates(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllCustomVerificationEmailTemplates([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CustomVerificationEmailTemplates, passing the object as the first parameter, and the string 'CustomVerificationEmailTemplates' as the second parameter 

If not, it will return a a L<Paws::SES::ListCustomVerificationEmailTemplatesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllIdentities(sub { },[IdentityType => Str, MaxItems => Int, NextToken => Str])

=head2 ListAllIdentities([IdentityType => Str, MaxItems => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Identities, passing the object as the first parameter, and the string 'Identities' as the second parameter 

If not, it will return a a L<Paws::SES::ListIdentitiesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllReceiptRuleSets(sub { },[NextToken => Str])

=head2 ListAllReceiptRuleSets([NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - RuleSets, passing the object as the first parameter, and the string 'RuleSets' as the second parameter 

If not, it will return a a L<Paws::SES::ListReceiptRuleSetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTemplates(sub { },[MaxItems => Int, NextToken => Str])

=head2 ListAllTemplates([MaxItems => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TemplatesMetadata, passing the object as the first parameter, and the string 'TemplatesMetadata' as the second parameter 

If not, it will return a a L<Paws::SES::ListTemplatesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

