package Paws::WAFV2;
  use Moose;
  sub service { 'wafv2' }
  sub signing_name { 'wafv2' }
  sub version { '2019-07-29' }
  sub target_prefix { 'AWSWAF_20190729' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AssociateWebACL {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::AssociateWebACL', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CheckCapacity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::CheckCapacity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateIPSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::CreateIPSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRegexPatternSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::CreateRegexPatternSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRuleGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::CreateRuleGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWebACL {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::CreateWebACL', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFirewallManagerRuleGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::DeleteFirewallManagerRuleGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIPSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::DeleteIPSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLoggingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::DeleteLoggingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePermissionPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::DeletePermissionPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRegexPatternSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::DeleteRegexPatternSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRuleGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::DeleteRuleGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWebACL {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::DeleteWebACL', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeManagedRuleGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::DescribeManagedRuleGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateWebACL {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::DisassociateWebACL', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIPSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::GetIPSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLoggingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::GetLoggingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPermissionPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::GetPermissionPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRateBasedStatementManagedKeys {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::GetRateBasedStatementManagedKeys', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRegexPatternSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::GetRegexPatternSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRuleGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::GetRuleGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSampledRequests {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::GetSampledRequests', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWebACL {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::GetWebACL', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWebACLForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::GetWebACLForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAvailableManagedRuleGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::ListAvailableManagedRuleGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIPSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::ListIPSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLoggingConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::ListLoggingConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRegexPatternSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::ListRegexPatternSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResourcesForWebACL {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::ListResourcesForWebACL', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRuleGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::ListRuleGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWebACLs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::ListWebACLs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutLoggingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::PutLoggingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutPermissionPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::PutPermissionPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateIPSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::UpdateIPSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRegexPatternSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::UpdateRegexPatternSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRuleGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::UpdateRuleGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateWebACL {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WAFV2::UpdateWebACL', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/AssociateWebACL CheckCapacity CreateIPSet CreateRegexPatternSet CreateRuleGroup CreateWebACL DeleteFirewallManagerRuleGroups DeleteIPSet DeleteLoggingConfiguration DeletePermissionPolicy DeleteRegexPatternSet DeleteRuleGroup DeleteWebACL DescribeManagedRuleGroup DisassociateWebACL GetIPSet GetLoggingConfiguration GetPermissionPolicy GetRateBasedStatementManagedKeys GetRegexPatternSet GetRuleGroup GetSampledRequests GetWebACL GetWebACLForResource ListAvailableManagedRuleGroups ListIPSets ListLoggingConfigurations ListRegexPatternSets ListResourcesForWebACL ListRuleGroups ListTagsForResource ListWebACLs PutLoggingConfiguration PutPermissionPolicy TagResource UntagResource UpdateIPSet UpdateRegexPatternSet UpdateRuleGroup UpdateWebACL / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2 - Perl Interface to AWS AWS WAFV2

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('WAFV2');
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

This is the latest version of the B<AWS WAF> API, released in November,
2019. The names of the entities that you use to access this API, like
endpoints and namespaces, all have the versioning information added,
like "V2" or "v2", to distinguish from the prior version. We recommend
migrating your resources to this version, because it has a number of
significant improvements.

If you used AWS WAF prior to this release, you can't use this AWS WAFV2
API to access any AWS WAF resources that you created before. You can
access your old rules, web ACLs, and other AWS WAF resources only
through the AWS WAF Classic APIs. The AWS WAF Classic APIs have
retained the prior names, endpoints, and namespaces.

For information, including how to migrate your AWS WAF resources to
this version, see the AWS WAF Developer Guide
(https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

AWS WAF is a web application firewall that lets you monitor the HTTP
and HTTPS requests that are forwarded to Amazon CloudFront, an Amazon
API Gateway REST API, an Application Load Balancer, or an AWS AppSync
GraphQL API. AWS WAF also lets you control access to your content.
Based on conditions that you specify, such as the IP addresses that
requests originate from or the values of query strings, the API Gateway
REST API, CloudFront distribution, the Application Load Balancer, or
the AWS AppSync GraphQL API responds to requests either with the
requested content or with an HTTP 403 status code (Forbidden). You also
can configure CloudFront to return a custom error page when a request
is blocked.

This API guide is for developers who need detailed information about
AWS WAF API actions, data types, and errors. For detailed information
about AWS WAF features and an overview of how to use AWS WAF, see the
AWS WAF Developer Guide
(https://docs.aws.amazon.com/waf/latest/developerguide/).

You can make calls using the endpoints listed in AWS Service Endpoints
for AWS WAF
(https://docs.aws.amazon.com/general/latest/gr/rande.html#waf_region).

=over

=item *

For regional applications, you can use any of the endpoints in the
list. A regional application can be an Application Load Balancer (ALB),
an API Gateway REST API, or an AppSync GraphQL API.

=item *

For AWS CloudFront applications, you must use the API endpoint listed
for US East (N. Virginia): us-east-1.

=back

Alternatively, you can use one of the AWS SDKs to access an API that's
tailored to the programming language or platform that you're using. For
more information, see AWS SDKs (http://aws.amazon.com/tools/#SDKs).

We currently provide two versions of the AWS WAF API: this API and the
prior versions, the classic AWS WAF APIs. This new API provides the
same functionality as the older versions, with the following major
improvements:

=over

=item *

You use one API for both global and regional applications. Where you
need to distinguish the scope, you specify a C<Scope> parameter and set
it to C<CLOUDFRONT> or C<REGIONAL>.

=item *

You can define a Web ACL or rule group with a single call, and update
it with a single call. You define all rule specifications in JSON
format, and pass them to your rule group or Web ACL calls.

=item *

The limits AWS WAF places on the use of rules more closely reflects the
cost of running each type of rule. Rule groups include capacity
settings, so you know the maximum cost of a rule group when you use it.

=back


For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29>


=head1 METHODS

=head2 AssociateWebACL

=over

=item ResourceArn => Str

=item WebACLArn => Str


=back

Each argument is described in detail in: L<Paws::WAFV2::AssociateWebACL>

Returns: a L<Paws::WAFV2::AssociateWebACLResponse> instance

Associates a Web ACL with a regional application resource, to protect
the resource. A regional application can be an Application Load
Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL API.

For AWS CloudFront, don't use this call. Instead, use your CloudFront
distribution configuration. To associate a Web ACL, in the CloudFront
call C<UpdateDistribution>, set the web ACL ID to the Amazon Resource
Name (ARN) of the Web ACL. For information, see UpdateDistribution
(https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_UpdateDistribution.html).


=head2 CheckCapacity

=over

=item Rules => ArrayRef[L<Paws::WAFV2::Rule>]

=item Scope => Str


=back

Each argument is described in detail in: L<Paws::WAFV2::CheckCapacity>

Returns: a L<Paws::WAFV2::CheckCapacityResponse> instance

Returns the web ACL capacity unit (WCU) requirements for a specified
scope and set of rules. You can use this to check the capacity
requirements for the rules you want to use in a RuleGroup or WebACL.

AWS WAF uses WCUs to calculate and control the operating resources that
are used to run your rules, rule groups, and web ACLs. AWS WAF
calculates capacity differently for each rule type, to reflect the
relative cost of each rule. Simple rules that cost little to run use
fewer WCUs than more complex rules that use more processing power. Rule
group capacity is fixed at creation, which helps users plan their web
ACL WCU usage when they use a rule group. The WCU limit for web ACLs is
1,500.


=head2 CreateIPSet

=over

=item Addresses => ArrayRef[Str|Undef]

=item IPAddressVersion => Str

=item Name => Str

=item Scope => Str

=item [Description => Str]

=item [Tags => ArrayRef[L<Paws::WAFV2::Tag>]]


=back

Each argument is described in detail in: L<Paws::WAFV2::CreateIPSet>

Returns: a L<Paws::WAFV2::CreateIPSetResponse> instance

Creates an IPSet, which you use to identify web requests that originate
from specific IP addresses or ranges of IP addresses. For example, if
you're receiving a lot of requests from a ranges of IP addresses, you
can configure AWS WAF to block them using an IPSet that lists those IP
addresses.


=head2 CreateRegexPatternSet

=over

=item Name => Str

=item RegularExpressionList => ArrayRef[L<Paws::WAFV2::Regex>]

=item Scope => Str

=item [Description => Str]

=item [Tags => ArrayRef[L<Paws::WAFV2::Tag>]]


=back

Each argument is described in detail in: L<Paws::WAFV2::CreateRegexPatternSet>

Returns: a L<Paws::WAFV2::CreateRegexPatternSetResponse> instance

Creates a RegexPatternSet, which you reference in a
RegexPatternSetReferenceStatement, to have AWS WAF inspect a web
request component for the specified patterns.


=head2 CreateRuleGroup

=over

=item Capacity => Int

=item Name => Str

=item Scope => Str

=item VisibilityConfig => L<Paws::WAFV2::VisibilityConfig>

=item [CustomResponseBodies => L<Paws::WAFV2::CustomResponseBodies>]

=item [Description => Str]

=item [Rules => ArrayRef[L<Paws::WAFV2::Rule>]]

=item [Tags => ArrayRef[L<Paws::WAFV2::Tag>]]


=back

Each argument is described in detail in: L<Paws::WAFV2::CreateRuleGroup>

Returns: a L<Paws::WAFV2::CreateRuleGroupResponse> instance

Creates a RuleGroup per the specifications provided.

A rule group defines a collection of rules to inspect and control web
requests that you can use in a WebACL. When you create a rule group,
you define an immutable capacity limit. If you update a rule group, you
must stay within the capacity. This allows others to reuse the rule
group with confidence in its capacity requirements.


=head2 CreateWebACL

=over

=item DefaultAction => L<Paws::WAFV2::DefaultAction>

=item Name => Str

=item Scope => Str

=item VisibilityConfig => L<Paws::WAFV2::VisibilityConfig>

=item [CustomResponseBodies => L<Paws::WAFV2::CustomResponseBodies>]

=item [Description => Str]

=item [Rules => ArrayRef[L<Paws::WAFV2::Rule>]]

=item [Tags => ArrayRef[L<Paws::WAFV2::Tag>]]


=back

Each argument is described in detail in: L<Paws::WAFV2::CreateWebACL>

Returns: a L<Paws::WAFV2::CreateWebACLResponse> instance

Creates a WebACL per the specifications provided.

A Web ACL defines a collection of rules to use to inspect and control
web requests. Each rule has an action defined (allow, block, or count)
for requests that match the statement of the rule. In the Web ACL, you
assign a default action to take (allow, block) for any request that
does not match any of the rules. The rules in a Web ACL can be a
combination of the types Rule, RuleGroup, and managed rule group. You
can associate a Web ACL with one or more AWS resources to protect. The
resources can be Amazon CloudFront, an Amazon API Gateway REST API, an
Application Load Balancer, or an AWS AppSync GraphQL API.


=head2 DeleteFirewallManagerRuleGroups

=over

=item WebACLArn => Str

=item WebACLLockToken => Str


=back

Each argument is described in detail in: L<Paws::WAFV2::DeleteFirewallManagerRuleGroups>

Returns: a L<Paws::WAFV2::DeleteFirewallManagerRuleGroupsResponse> instance

Deletes all rule groups that are managed by AWS Firewall Manager for
the specified web ACL.

You can only use this if C<ManagedByFirewallManager> is false in the
specified WebACL.


=head2 DeleteIPSet

=over

=item Id => Str

=item LockToken => Str

=item Name => Str

=item Scope => Str


=back

Each argument is described in detail in: L<Paws::WAFV2::DeleteIPSet>

Returns: a L<Paws::WAFV2::DeleteIPSetResponse> instance

Deletes the specified IPSet.


=head2 DeleteLoggingConfiguration

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::WAFV2::DeleteLoggingConfiguration>

Returns: a L<Paws::WAFV2::DeleteLoggingConfigurationResponse> instance

Deletes the LoggingConfiguration from the specified web ACL.


=head2 DeletePermissionPolicy

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::WAFV2::DeletePermissionPolicy>

Returns: a L<Paws::WAFV2::DeletePermissionPolicyResponse> instance

Permanently deletes an IAM policy from the specified rule group.

You must be the owner of the rule group to perform this operation.


=head2 DeleteRegexPatternSet

=over

=item Id => Str

=item LockToken => Str

=item Name => Str

=item Scope => Str


=back

Each argument is described in detail in: L<Paws::WAFV2::DeleteRegexPatternSet>

Returns: a L<Paws::WAFV2::DeleteRegexPatternSetResponse> instance

Deletes the specified RegexPatternSet.


=head2 DeleteRuleGroup

=over

=item Id => Str

=item LockToken => Str

=item Name => Str

=item Scope => Str


=back

Each argument is described in detail in: L<Paws::WAFV2::DeleteRuleGroup>

Returns: a L<Paws::WAFV2::DeleteRuleGroupResponse> instance

Deletes the specified RuleGroup.


=head2 DeleteWebACL

=over

=item Id => Str

=item LockToken => Str

=item Name => Str

=item Scope => Str


=back

Each argument is described in detail in: L<Paws::WAFV2::DeleteWebACL>

Returns: a L<Paws::WAFV2::DeleteWebACLResponse> instance

Deletes the specified WebACL.

You can only use this if C<ManagedByFirewallManager> is false in the
specified WebACL.


=head2 DescribeManagedRuleGroup

=over

=item Name => Str

=item Scope => Str

=item VendorName => Str


=back

Each argument is described in detail in: L<Paws::WAFV2::DescribeManagedRuleGroup>

Returns: a L<Paws::WAFV2::DescribeManagedRuleGroupResponse> instance

Provides high-level information for a managed rule group, including
descriptions of the rules.


=head2 DisassociateWebACL

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::WAFV2::DisassociateWebACL>

Returns: a L<Paws::WAFV2::DisassociateWebACLResponse> instance

Disassociates a Web ACL from a regional application resource. A
regional application can be an Application Load Balancer (ALB), an API
Gateway REST API, or an AppSync GraphQL API.

For AWS CloudFront, don't use this call. Instead, use your CloudFront
distribution configuration. To disassociate a Web ACL, provide an empty
web ACL ID in the CloudFront call C<UpdateDistribution>. For
information, see UpdateDistribution
(https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_UpdateDistribution.html).


=head2 GetIPSet

=over

=item Id => Str

=item Name => Str

=item Scope => Str


=back

Each argument is described in detail in: L<Paws::WAFV2::GetIPSet>

Returns: a L<Paws::WAFV2::GetIPSetResponse> instance

Retrieves the specified IPSet.


=head2 GetLoggingConfiguration

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::WAFV2::GetLoggingConfiguration>

Returns: a L<Paws::WAFV2::GetLoggingConfigurationResponse> instance

Returns the LoggingConfiguration for the specified web ACL.


=head2 GetPermissionPolicy

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::WAFV2::GetPermissionPolicy>

Returns: a L<Paws::WAFV2::GetPermissionPolicyResponse> instance

Returns the IAM policy that is attached to the specified rule group.

You must be the owner of the rule group to perform this operation.


=head2 GetRateBasedStatementManagedKeys

=over

=item RuleName => Str

=item Scope => Str

=item WebACLId => Str

=item WebACLName => Str


=back

Each argument is described in detail in: L<Paws::WAFV2::GetRateBasedStatementManagedKeys>

Returns: a L<Paws::WAFV2::GetRateBasedStatementManagedKeysResponse> instance

Retrieves the keys that are currently blocked by a rate-based rule. The
maximum number of managed keys that can be blocked for a single
rate-based rule is 10,000. If more than 10,000 addresses exceed the
rate limit, those with the highest rates are blocked.


=head2 GetRegexPatternSet

=over

=item Id => Str

=item Name => Str

=item Scope => Str


=back

Each argument is described in detail in: L<Paws::WAFV2::GetRegexPatternSet>

Returns: a L<Paws::WAFV2::GetRegexPatternSetResponse> instance

Retrieves the specified RegexPatternSet.


=head2 GetRuleGroup

=over

=item Id => Str

=item Name => Str

=item Scope => Str


=back

Each argument is described in detail in: L<Paws::WAFV2::GetRuleGroup>

Returns: a L<Paws::WAFV2::GetRuleGroupResponse> instance

Retrieves the specified RuleGroup.


=head2 GetSampledRequests

=over

=item MaxItems => Int

=item RuleMetricName => Str

=item Scope => Str

=item TimeWindow => L<Paws::WAFV2::TimeWindow>

=item WebAclArn => Str


=back

Each argument is described in detail in: L<Paws::WAFV2::GetSampledRequests>

Returns: a L<Paws::WAFV2::GetSampledRequestsResponse> instance

Gets detailed information about a specified number of requests--a
sample--that AWS WAF randomly selects from among the first 5,000
requests that your AWS resource received during a time range that you
choose. You can specify a sample size of up to 500 requests, and you
can specify any time range in the previous three hours.

C<GetSampledRequests> returns a time range, which is usually the time
range that you specified. However, if your resource (such as a
CloudFront distribution) received 5,000 requests before the specified
time range elapsed, C<GetSampledRequests> returns an updated time
range. This new time range indicates the actual period during which AWS
WAF selected the requests in the sample.


=head2 GetWebACL

=over

=item Id => Str

=item Name => Str

=item Scope => Str


=back

Each argument is described in detail in: L<Paws::WAFV2::GetWebACL>

Returns: a L<Paws::WAFV2::GetWebACLResponse> instance

Retrieves the specified WebACL.


=head2 GetWebACLForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::WAFV2::GetWebACLForResource>

Returns: a L<Paws::WAFV2::GetWebACLForResourceResponse> instance

Retrieves the WebACL for the specified resource.


=head2 ListAvailableManagedRuleGroups

=over

=item Scope => Str

=item [Limit => Int]

=item [NextMarker => Str]


=back

Each argument is described in detail in: L<Paws::WAFV2::ListAvailableManagedRuleGroups>

Returns: a L<Paws::WAFV2::ListAvailableManagedRuleGroupsResponse> instance

Retrieves an array of managed rule groups that are available for you to
use. This list includes all AWS Managed Rules rule groups and the AWS
Marketplace managed rule groups that you're subscribed to.


=head2 ListIPSets

=over

=item Scope => Str

=item [Limit => Int]

=item [NextMarker => Str]


=back

Each argument is described in detail in: L<Paws::WAFV2::ListIPSets>

Returns: a L<Paws::WAFV2::ListIPSetsResponse> instance

Retrieves an array of IPSetSummary objects for the IP sets that you
manage.


=head2 ListLoggingConfigurations

=over

=item [Limit => Int]

=item [NextMarker => Str]

=item [Scope => Str]


=back

Each argument is described in detail in: L<Paws::WAFV2::ListLoggingConfigurations>

Returns: a L<Paws::WAFV2::ListLoggingConfigurationsResponse> instance

Retrieves an array of your LoggingConfiguration objects.


=head2 ListRegexPatternSets

=over

=item Scope => Str

=item [Limit => Int]

=item [NextMarker => Str]


=back

Each argument is described in detail in: L<Paws::WAFV2::ListRegexPatternSets>

Returns: a L<Paws::WAFV2::ListRegexPatternSetsResponse> instance

Retrieves an array of RegexPatternSetSummary objects for the regex
pattern sets that you manage.


=head2 ListResourcesForWebACL

=over

=item WebACLArn => Str

=item [ResourceType => Str]


=back

Each argument is described in detail in: L<Paws::WAFV2::ListResourcesForWebACL>

Returns: a L<Paws::WAFV2::ListResourcesForWebACLResponse> instance

Retrieves an array of the Amazon Resource Names (ARNs) for the regional
resources that are associated with the specified web ACL. If you want
the list of AWS CloudFront resources, use the AWS CloudFront call
C<ListDistributionsByWebACLId>.


=head2 ListRuleGroups

=over

=item Scope => Str

=item [Limit => Int]

=item [NextMarker => Str]


=back

Each argument is described in detail in: L<Paws::WAFV2::ListRuleGroups>

Returns: a L<Paws::WAFV2::ListRuleGroupsResponse> instance

Retrieves an array of RuleGroupSummary objects for the rule groups that
you manage.


=head2 ListTagsForResource

=over

=item ResourceARN => Str

=item [Limit => Int]

=item [NextMarker => Str]


=back

Each argument is described in detail in: L<Paws::WAFV2::ListTagsForResource>

Returns: a L<Paws::WAFV2::ListTagsForResourceResponse> instance

Retrieves the TagInfoForResource for the specified resource. Tags are
key:value pairs that you can use to categorize and manage your
resources, for purposes like billing. For example, you might set the
tag key to "customer" and the value to the customer name or ID. You can
specify one or more tags to add to each AWS resource, up to 50 tags for
a resource.

You can tag the AWS resources that you manage through AWS WAF: web
ACLs, rule groups, IP sets, and regex pattern sets. You can't manage or
view tags through the AWS WAF console.


=head2 ListWebACLs

=over

=item Scope => Str

=item [Limit => Int]

=item [NextMarker => Str]


=back

Each argument is described in detail in: L<Paws::WAFV2::ListWebACLs>

Returns: a L<Paws::WAFV2::ListWebACLsResponse> instance

Retrieves an array of WebACLSummary objects for the web ACLs that you
manage.


=head2 PutLoggingConfiguration

=over

=item LoggingConfiguration => L<Paws::WAFV2::LoggingConfiguration>


=back

Each argument is described in detail in: L<Paws::WAFV2::PutLoggingConfiguration>

Returns: a L<Paws::WAFV2::PutLoggingConfigurationResponse> instance

Enables the specified LoggingConfiguration, to start logging from a web
ACL, according to the configuration provided.

You can access information about all traffic that AWS WAF inspects
using the following steps:

=over

=item 1.

Create an Amazon Kinesis Data Firehose.

Create the data firehose with a PUT source and in the Region that you
are operating. If you are capturing logs for Amazon CloudFront, always
create the firehose in US East (N. Virginia).

Give the data firehose a name that starts with the prefix
C<aws-waf-logs->. For example, C<aws-waf-logs-us-east-2-analytics>.

Do not create the data firehose using a C<Kinesis stream> as your
source.

=item 2.

Associate that firehose to your web ACL using a
C<PutLoggingConfiguration> request.

=back

When you successfully enable logging using a C<PutLoggingConfiguration>
request, AWS WAF will create a service linked role with the necessary
permissions to write logs to the Amazon Kinesis Data Firehose. For more
information, see Logging Web ACL Traffic Information
(https://docs.aws.amazon.com/waf/latest/developerguide/logging.html) in
the I<AWS WAF Developer Guide>.


=head2 PutPermissionPolicy

=over

=item Policy => Str

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::WAFV2::PutPermissionPolicy>

Returns: a L<Paws::WAFV2::PutPermissionPolicyResponse> instance

Attaches an IAM policy to the specified resource. Use this to share a
rule group across accounts.

You must be the owner of the rule group to perform this operation.

This action is subject to the following restrictions:

=over

=item *

You can attach only one policy with each C<PutPermissionPolicy>
request.

=item *

The ARN in the request must be a valid WAF RuleGroup ARN and the rule
group must exist in the same region.

=item *

The user making the request must be the owner of the rule group.

=back



=head2 TagResource

=over

=item ResourceARN => Str

=item Tags => ArrayRef[L<Paws::WAFV2::Tag>]


=back

Each argument is described in detail in: L<Paws::WAFV2::TagResource>

Returns: a L<Paws::WAFV2::TagResourceResponse> instance

Associates tags with the specified AWS resource. Tags are key:value
pairs that you can use to categorize and manage your resources, for
purposes like billing. For example, you might set the tag key to
"customer" and the value to the customer name or ID. You can specify
one or more tags to add to each AWS resource, up to 50 tags for a
resource.

You can tag the AWS resources that you manage through AWS WAF: web
ACLs, rule groups, IP sets, and regex pattern sets. You can't manage or
view tags through the AWS WAF console.


=head2 UntagResource

=over

=item ResourceARN => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::WAFV2::UntagResource>

Returns: a L<Paws::WAFV2::UntagResourceResponse> instance

Disassociates tags from an AWS resource. Tags are key:value pairs that
you can associate with AWS resources. For example, the tag key might be
"customer" and the tag value might be "companyA." You can specify one
or more tags to add to each container. You can add up to 50 tags to
each AWS resource.


=head2 UpdateIPSet

=over

=item Addresses => ArrayRef[Str|Undef]

=item Id => Str

=item LockToken => Str

=item Name => Str

=item Scope => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::WAFV2::UpdateIPSet>

Returns: a L<Paws::WAFV2::UpdateIPSetResponse> instance

Updates the specified IPSet.

This operation completely replaces any IP address specifications that
you already have in the IP set with the ones that you provide to this
call. If you want to add to or modify the addresses that are already in
the IP set, retrieve those by calling GetIPSet, update them, and
provide the complete updated array of IP addresses to this call.


=head2 UpdateRegexPatternSet

=over

=item Id => Str

=item LockToken => Str

=item Name => Str

=item RegularExpressionList => ArrayRef[L<Paws::WAFV2::Regex>]

=item Scope => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::WAFV2::UpdateRegexPatternSet>

Returns: a L<Paws::WAFV2::UpdateRegexPatternSetResponse> instance

Updates the specified RegexPatternSet.


=head2 UpdateRuleGroup

=over

=item Id => Str

=item LockToken => Str

=item Name => Str

=item Scope => Str

=item VisibilityConfig => L<Paws::WAFV2::VisibilityConfig>

=item [CustomResponseBodies => L<Paws::WAFV2::CustomResponseBodies>]

=item [Description => Str]

=item [Rules => ArrayRef[L<Paws::WAFV2::Rule>]]


=back

Each argument is described in detail in: L<Paws::WAFV2::UpdateRuleGroup>

Returns: a L<Paws::WAFV2::UpdateRuleGroupResponse> instance

Updates the specified RuleGroup.

A rule group defines a collection of rules to inspect and control web
requests that you can use in a WebACL. When you create a rule group,
you define an immutable capacity limit. If you update a rule group, you
must stay within the capacity. This allows others to reuse the rule
group with confidence in its capacity requirements.


=head2 UpdateWebACL

=over

=item DefaultAction => L<Paws::WAFV2::DefaultAction>

=item Id => Str

=item LockToken => Str

=item Name => Str

=item Scope => Str

=item VisibilityConfig => L<Paws::WAFV2::VisibilityConfig>

=item [CustomResponseBodies => L<Paws::WAFV2::CustomResponseBodies>]

=item [Description => Str]

=item [Rules => ArrayRef[L<Paws::WAFV2::Rule>]]


=back

Each argument is described in detail in: L<Paws::WAFV2::UpdateWebACL>

Returns: a L<Paws::WAFV2::UpdateWebACLResponse> instance

Updates the specified WebACL.

A Web ACL defines a collection of rules to use to inspect and control
web requests. Each rule has an action defined (allow, block, or count)
for requests that match the statement of the rule. In the Web ACL, you
assign a default action to take (allow, block) for any request that
does not match any of the rules. The rules in a Web ACL can be a
combination of the types Rule, RuleGroup, and managed rule group. You
can associate a Web ACL with one or more AWS resources to protect. The
resources can be Amazon CloudFront, an Amazon API Gateway REST API, an
Application Load Balancer, or an AWS AppSync GraphQL API.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

