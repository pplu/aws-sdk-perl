package Paws::Shield;
  use Moose;
  sub service { 'shield' }
  sub signing_name { 'shield' }
  sub version { '2016-06-02' }
  sub target_prefix { 'AWSShield_20160616' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AssociateDRTLogBucket {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::AssociateDRTLogBucket', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateDRTRole {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::AssociateDRTRole', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateHealthCheck {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::AssociateHealthCheck', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateProactiveEngagementDetails {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::AssociateProactiveEngagementDetails', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateProtection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::CreateProtection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateProtectionGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::CreateProtectionGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::CreateSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProtection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::DeleteProtection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProtectionGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::DeleteProtectionGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::DeleteSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAttack {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::DescribeAttack', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAttackStatistics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::DescribeAttackStatistics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDRTAccess {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::DescribeDRTAccess', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEmergencyContactSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::DescribeEmergencyContactSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeProtection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::DescribeProtection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeProtectionGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::DescribeProtectionGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::DescribeSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableProactiveEngagement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::DisableProactiveEngagement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateDRTLogBucket {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::DisassociateDRTLogBucket', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateDRTRole {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::DisassociateDRTRole', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateHealthCheck {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::DisassociateHealthCheck', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableProactiveEngagement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::EnableProactiveEngagement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSubscriptionState {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::GetSubscriptionState', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAttacks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::ListAttacks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProtectionGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::ListProtectionGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProtections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::ListProtections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResourcesInProtectionGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::ListResourcesInProtectionGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEmergencyContactSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::UpdateEmergencyContactSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateProtectionGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::UpdateProtectionGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::UpdateSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAttacks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAttacks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAttacks(@_, NextToken => $next_result->NextToken);
        push @{ $result->AttackSummaries }, @{ $next_result->AttackSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AttackSummaries') foreach (@{ $result->AttackSummaries });
        $result = $self->ListAttacks(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AttackSummaries') foreach (@{ $result->AttackSummaries });
    }

    return undef
  }
  sub ListAllProtections {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListProtections(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListProtections(@_, NextToken => $next_result->NextToken);
        push @{ $result->Protections }, @{ $next_result->Protections };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Protections') foreach (@{ $result->Protections });
        $result = $self->ListProtections(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Protections') foreach (@{ $result->Protections });
    }

    return undef
  }


  sub operations { qw/AssociateDRTLogBucket AssociateDRTRole AssociateHealthCheck AssociateProactiveEngagementDetails CreateProtection CreateProtectionGroup CreateSubscription DeleteProtection DeleteProtectionGroup DeleteSubscription DescribeAttack DescribeAttackStatistics DescribeDRTAccess DescribeEmergencyContactSettings DescribeProtection DescribeProtectionGroup DescribeSubscription DisableProactiveEngagement DisassociateDRTLogBucket DisassociateDRTRole DisassociateHealthCheck EnableProactiveEngagement GetSubscriptionState ListAttacks ListProtectionGroups ListProtections ListResourcesInProtectionGroup ListTagsForResource TagResource UntagResource UpdateEmergencyContactSettings UpdateProtectionGroup UpdateSubscription / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Shield - Perl Interface to AWS AWS Shield

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Shield');
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

AWS Shield Advanced

This is the I<AWS Shield Advanced API Reference>. This guide is for
developers who need detailed information about the AWS Shield Advanced
API actions, data types, and errors. For detailed information about AWS
WAF and AWS Shield Advanced features and an overview of how to use the
AWS WAF and AWS Shield Advanced APIs, see the AWS WAF and AWS Shield
Developer Guide
(https://docs.aws.amazon.com/waf/latest/developerguide/).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02>


=head1 METHODS

=head2 AssociateDRTLogBucket

=over

=item LogBucket => Str


=back

Each argument is described in detail in: L<Paws::Shield::AssociateDRTLogBucket>

Returns: a L<Paws::Shield::AssociateDRTLogBucketResponse> instance

Authorizes the DDoS Response Team (DRT) to access the specified Amazon
S3 bucket containing your AWS WAF logs. You can associate up to 10
Amazon S3 buckets with your subscription.

To use the services of the DRT and make an C<AssociateDRTLogBucket>
request, you must be subscribed to the Business Support plan
(https://aws.amazon.com/premiumsupport/business-support/) or the
Enterprise Support plan
(https://aws.amazon.com/premiumsupport/enterprise-support/).


=head2 AssociateDRTRole

=over

=item RoleArn => Str


=back

Each argument is described in detail in: L<Paws::Shield::AssociateDRTRole>

Returns: a L<Paws::Shield::AssociateDRTRoleResponse> instance

Authorizes the DDoS Response Team (DRT), using the specified role, to
access your AWS account to assist with DDoS attack mitigation during
potential attacks. This enables the DRT to inspect your AWS WAF
configuration and create or update AWS WAF rules and web ACLs.

You can associate only one C<RoleArn> with your subscription. If you
submit an C<AssociateDRTRole> request for an account that already has
an associated role, the new C<RoleArn> will replace the existing
C<RoleArn>.

Prior to making the C<AssociateDRTRole> request, you must attach the
AWSShieldDRTAccessPolicy
(https://console.aws.amazon.com/iam/home?#/policies/arn:aws:iam::aws:policy/service-role/AWSShieldDRTAccessPolicy)
managed policy to the role you will specify in the request. For more
information see Attaching and Detaching IAM Policies. The role must
also trust the service principal C< drt.shield.amazonaws.com>. For more
information, see IAM JSON Policy Elements: Principal
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html).

The DRT will have access only to your AWS WAF and Shield resources. By
submitting this request, you authorize the DRT to inspect your AWS WAF
and Shield configuration and create and update AWS WAF rules and web
ACLs on your behalf. The DRT takes these actions only if explicitly
authorized by you.

You must have the C<iam:PassRole> permission to make an
C<AssociateDRTRole> request. For more information, see Granting a User
Permissions to Pass a Role to an AWS Service
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_passrole.html).

To use the services of the DRT and make an C<AssociateDRTRole> request,
you must be subscribed to the Business Support plan
(https://aws.amazon.com/premiumsupport/business-support/) or the
Enterprise Support plan
(https://aws.amazon.com/premiumsupport/enterprise-support/).


=head2 AssociateHealthCheck

=over

=item HealthCheckArn => Str

=item ProtectionId => Str


=back

Each argument is described in detail in: L<Paws::Shield::AssociateHealthCheck>

Returns: a L<Paws::Shield::AssociateHealthCheckResponse> instance

Adds health-based detection to the Shield Advanced protection for a
resource. Shield Advanced health-based detection uses the health of
your AWS resource to improve responsiveness and accuracy in attack
detection and mitigation.

You define the health check in Route 53 and then associate it with your
Shield Advanced protection. For more information, see Shield Advanced
Health-Based Detection
(https://docs.aws.amazon.com/waf/latest/developerguide/ddos-overview.html#ddos-advanced-health-check-option)
in the AWS WAF and AWS Shield Developer Guide
(https://docs.aws.amazon.com/waf/latest/developerguide/).


=head2 AssociateProactiveEngagementDetails

=over

=item EmergencyContactList => ArrayRef[L<Paws::Shield::EmergencyContact>]


=back

Each argument is described in detail in: L<Paws::Shield::AssociateProactiveEngagementDetails>

Returns: a L<Paws::Shield::AssociateProactiveEngagementDetailsResponse> instance

Initializes proactive engagement and sets the list of contacts for the
DDoS Response Team (DRT) to use. You must provide at least one phone
number in the emergency contact list.

After you have initialized proactive engagement using this call, to
disable or enable proactive engagement, use the calls
C<DisableProactiveEngagement> and C<EnableProactiveEngagement>.

This call defines the list of email addresses and phone numbers that
the DDoS Response Team (DRT) can use to contact you for escalations to
the DRT and to initiate proactive customer support.

The contacts that you provide in the request replace any contacts that
were already defined. If you already have contacts defined and want to
use them, retrieve the list using C<DescribeEmergencyContactSettings>
and then provide it to this call.


=head2 CreateProtection

=over

=item Name => Str

=item ResourceArn => Str

=item [Tags => ArrayRef[L<Paws::Shield::Tag>]]


=back

Each argument is described in detail in: L<Paws::Shield::CreateProtection>

Returns: a L<Paws::Shield::CreateProtectionResponse> instance

Enables AWS Shield Advanced for a specific AWS resource. The resource
can be an Amazon CloudFront distribution, Elastic Load Balancing load
balancer, AWS Global Accelerator accelerator, Elastic IP Address, or an
Amazon Route 53 hosted zone.

You can add protection to only a single resource with each
CreateProtection request. If you want to add protection to multiple
resources at once, use the AWS WAF console
(https://console.aws.amazon.com/waf/). For more information see Getting
Started with AWS Shield Advanced
(https://docs.aws.amazon.com/waf/latest/developerguide/getting-started-ddos.html)
and Add AWS Shield Advanced Protection to more AWS Resources
(https://docs.aws.amazon.com/waf/latest/developerguide/configure-new-protection.html).


=head2 CreateProtectionGroup

=over

=item Aggregation => Str

=item Pattern => Str

=item ProtectionGroupId => Str

=item [Members => ArrayRef[Str|Undef]]

=item [ResourceType => Str]

=item [Tags => ArrayRef[L<Paws::Shield::Tag>]]


=back

Each argument is described in detail in: L<Paws::Shield::CreateProtectionGroup>

Returns: a L<Paws::Shield::CreateProtectionGroupResponse> instance

Creates a grouping of protected resources so they can be handled as a
collective. This resource grouping improves the accuracy of detection
and reduces false positives.


=head2 CreateSubscription






Each argument is described in detail in: L<Paws::Shield::CreateSubscription>

Returns: a L<Paws::Shield::CreateSubscriptionResponse> instance

Activates AWS Shield Advanced for an account.

When you initally create a subscription, your subscription is set to be
automatically renewed at the end of the existing subscription period.
You can change this by submitting an C<UpdateSubscription> request.


=head2 DeleteProtection

=over

=item ProtectionId => Str


=back

Each argument is described in detail in: L<Paws::Shield::DeleteProtection>

Returns: a L<Paws::Shield::DeleteProtectionResponse> instance

Deletes an AWS Shield Advanced Protection.


=head2 DeleteProtectionGroup

=over

=item ProtectionGroupId => Str


=back

Each argument is described in detail in: L<Paws::Shield::DeleteProtectionGroup>

Returns: a L<Paws::Shield::DeleteProtectionGroupResponse> instance

Removes the specified protection group.


=head2 DeleteSubscription






Each argument is described in detail in: L<Paws::Shield::DeleteSubscription>

Returns: a L<Paws::Shield::DeleteSubscriptionResponse> instance

Removes AWS Shield Advanced from an account. AWS Shield Advanced
requires a 1-year subscription commitment. You cannot delete a
subscription prior to the completion of that commitment.


=head2 DescribeAttack

=over

=item AttackId => Str


=back

Each argument is described in detail in: L<Paws::Shield::DescribeAttack>

Returns: a L<Paws::Shield::DescribeAttackResponse> instance

Describes the details of a DDoS attack.


=head2 DescribeAttackStatistics






Each argument is described in detail in: L<Paws::Shield::DescribeAttackStatistics>

Returns: a L<Paws::Shield::DescribeAttackStatisticsResponse> instance

Provides information about the number and type of attacks AWS Shield
has detected in the last year for all resources that belong to your
account, regardless of whether you've defined Shield protections for
them. This operation is available to Shield customers as well as to
Shield Advanced customers.

The operation returns data for the time range of midnight UTC, one year
ago, to midnight UTC, today. For example, if the current time is
C<2020-10-26 15:39:32 PDT>, equal to C<2020-10-26 22:39:32 UTC>, then
the time range for the attack data returned is from C<2019-10-26
00:00:00 UTC> to C<2020-10-26 00:00:00 UTC>.

The time range indicates the period covered by the attack statistics
data items.


=head2 DescribeDRTAccess






Each argument is described in detail in: L<Paws::Shield::DescribeDRTAccess>

Returns: a L<Paws::Shield::DescribeDRTAccessResponse> instance

Returns the current role and list of Amazon S3 log buckets used by the
DDoS Response Team (DRT) to access your AWS account while assisting
with attack mitigation.


=head2 DescribeEmergencyContactSettings






Each argument is described in detail in: L<Paws::Shield::DescribeEmergencyContactSettings>

Returns: a L<Paws::Shield::DescribeEmergencyContactSettingsResponse> instance

A list of email addresses and phone numbers that the DDoS Response Team
(DRT) can use to contact you if you have proactive engagement enabled,
for escalations to the DRT and to initiate proactive customer support.


=head2 DescribeProtection

=over

=item [ProtectionId => Str]

=item [ResourceArn => Str]


=back

Each argument is described in detail in: L<Paws::Shield::DescribeProtection>

Returns: a L<Paws::Shield::DescribeProtectionResponse> instance

Lists the details of a Protection object.


=head2 DescribeProtectionGroup

=over

=item ProtectionGroupId => Str


=back

Each argument is described in detail in: L<Paws::Shield::DescribeProtectionGroup>

Returns: a L<Paws::Shield::DescribeProtectionGroupResponse> instance

Returns the specification for the specified protection group.


=head2 DescribeSubscription






Each argument is described in detail in: L<Paws::Shield::DescribeSubscription>

Returns: a L<Paws::Shield::DescribeSubscriptionResponse> instance

Provides details about the AWS Shield Advanced subscription for an
account.


=head2 DisableProactiveEngagement






Each argument is described in detail in: L<Paws::Shield::DisableProactiveEngagement>

Returns: a L<Paws::Shield::DisableProactiveEngagementResponse> instance

Removes authorization from the DDoS Response Team (DRT) to notify
contacts about escalations to the DRT and to initiate proactive
customer support.


=head2 DisassociateDRTLogBucket

=over

=item LogBucket => Str


=back

Each argument is described in detail in: L<Paws::Shield::DisassociateDRTLogBucket>

Returns: a L<Paws::Shield::DisassociateDRTLogBucketResponse> instance

Removes the DDoS Response Team's (DRT) access to the specified Amazon
S3 bucket containing your AWS WAF logs.

To make a C<DisassociateDRTLogBucket> request, you must be subscribed
to the Business Support plan
(https://aws.amazon.com/premiumsupport/business-support/) or the
Enterprise Support plan
(https://aws.amazon.com/premiumsupport/enterprise-support/). However,
if you are not subscribed to one of these support plans, but had been
previously and had granted the DRT access to your account, you can
submit a C<DisassociateDRTLogBucket> request to remove this access.


=head2 DisassociateDRTRole






Each argument is described in detail in: L<Paws::Shield::DisassociateDRTRole>

Returns: a L<Paws::Shield::DisassociateDRTRoleResponse> instance

Removes the DDoS Response Team's (DRT) access to your AWS account.

To make a C<DisassociateDRTRole> request, you must be subscribed to the
Business Support plan
(https://aws.amazon.com/premiumsupport/business-support/) or the
Enterprise Support plan
(https://aws.amazon.com/premiumsupport/enterprise-support/). However,
if you are not subscribed to one of these support plans, but had been
previously and had granted the DRT access to your account, you can
submit a C<DisassociateDRTRole> request to remove this access.


=head2 DisassociateHealthCheck

=over

=item HealthCheckArn => Str

=item ProtectionId => Str


=back

Each argument is described in detail in: L<Paws::Shield::DisassociateHealthCheck>

Returns: a L<Paws::Shield::DisassociateHealthCheckResponse> instance

Removes health-based detection from the Shield Advanced protection for
a resource. Shield Advanced health-based detection uses the health of
your AWS resource to improve responsiveness and accuracy in attack
detection and mitigation.

You define the health check in Route 53 and then associate or
disassociate it with your Shield Advanced protection. For more
information, see Shield Advanced Health-Based Detection
(https://docs.aws.amazon.com/waf/latest/developerguide/ddos-overview.html#ddos-advanced-health-check-option)
in the AWS WAF and AWS Shield Developer Guide
(https://docs.aws.amazon.com/waf/latest/developerguide/).


=head2 EnableProactiveEngagement






Each argument is described in detail in: L<Paws::Shield::EnableProactiveEngagement>

Returns: a L<Paws::Shield::EnableProactiveEngagementResponse> instance

Authorizes the DDoS Response Team (DRT) to use email and phone to
notify contacts about escalations to the DRT and to initiate proactive
customer support.


=head2 GetSubscriptionState






Each argument is described in detail in: L<Paws::Shield::GetSubscriptionState>

Returns: a L<Paws::Shield::GetSubscriptionStateResponse> instance

Returns the C<SubscriptionState>, either C<Active> or C<Inactive>.


=head2 ListAttacks

=over

=item [EndTime => L<Paws::Shield::TimeRange>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceArns => ArrayRef[Str|Undef]]

=item [StartTime => L<Paws::Shield::TimeRange>]


=back

Each argument is described in detail in: L<Paws::Shield::ListAttacks>

Returns: a L<Paws::Shield::ListAttacksResponse> instance

Returns all ongoing DDoS attacks or all DDoS attacks during a specified
time period.


=head2 ListProtectionGroups

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Shield::ListProtectionGroups>

Returns: a L<Paws::Shield::ListProtectionGroupsResponse> instance

Retrieves the ProtectionGroup objects for the account.


=head2 ListProtections

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Shield::ListProtections>

Returns: a L<Paws::Shield::ListProtectionsResponse> instance

Lists all Protection objects for the account.


=head2 ListResourcesInProtectionGroup

=over

=item ProtectionGroupId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Shield::ListResourcesInProtectionGroup>

Returns: a L<Paws::Shield::ListResourcesInProtectionGroupResponse> instance

Retrieves the resources that are included in the protection group.


=head2 ListTagsForResource

=over

=item ResourceARN => Str


=back

Each argument is described in detail in: L<Paws::Shield::ListTagsForResource>

Returns: a L<Paws::Shield::ListTagsForResourceResponse> instance

Gets information about AWS tags for a specified Amazon Resource Name
(ARN) in AWS Shield.


=head2 TagResource

=over

=item ResourceARN => Str

=item Tags => ArrayRef[L<Paws::Shield::Tag>]


=back

Each argument is described in detail in: L<Paws::Shield::TagResource>

Returns: a L<Paws::Shield::TagResourceResponse> instance

Adds or updates tags for a resource in AWS Shield.


=head2 UntagResource

=over

=item ResourceARN => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Shield::UntagResource>

Returns: a L<Paws::Shield::UntagResourceResponse> instance

Removes tags from a resource in AWS Shield.


=head2 UpdateEmergencyContactSettings

=over

=item [EmergencyContactList => ArrayRef[L<Paws::Shield::EmergencyContact>]]


=back

Each argument is described in detail in: L<Paws::Shield::UpdateEmergencyContactSettings>

Returns: a L<Paws::Shield::UpdateEmergencyContactSettingsResponse> instance

Updates the details of the list of email addresses and phone numbers
that the DDoS Response Team (DRT) can use to contact you if you have
proactive engagement enabled, for escalations to the DRT and to
initiate proactive customer support.


=head2 UpdateProtectionGroup

=over

=item Aggregation => Str

=item Pattern => Str

=item ProtectionGroupId => Str

=item [Members => ArrayRef[Str|Undef]]

=item [ResourceType => Str]


=back

Each argument is described in detail in: L<Paws::Shield::UpdateProtectionGroup>

Returns: a L<Paws::Shield::UpdateProtectionGroupResponse> instance

Updates an existing protection group. A protection group is a grouping
of protected resources so they can be handled as a collective. This
resource grouping improves the accuracy of detection and reduces false
positives.


=head2 UpdateSubscription

=over

=item [AutoRenew => Str]


=back

Each argument is described in detail in: L<Paws::Shield::UpdateSubscription>

Returns: a L<Paws::Shield::UpdateSubscriptionResponse> instance

Updates the details of an existing subscription. Only enter values for
parameters you want to change. Empty parameters are not updated.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAttacks(sub { },[EndTime => L<Paws::Shield::TimeRange>, MaxResults => Int, NextToken => Str, ResourceArns => ArrayRef[Str|Undef], StartTime => L<Paws::Shield::TimeRange>])

=head2 ListAllAttacks([EndTime => L<Paws::Shield::TimeRange>, MaxResults => Int, NextToken => Str, ResourceArns => ArrayRef[Str|Undef], StartTime => L<Paws::Shield::TimeRange>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AttackSummaries, passing the object as the first parameter, and the string 'AttackSummaries' as the second parameter 

If not, it will return a a L<Paws::Shield::ListAttacksResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllProtections(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllProtections([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Protections, passing the object as the first parameter, and the string 'Protections' as the second parameter 

If not, it will return a a L<Paws::Shield::ListProtectionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

