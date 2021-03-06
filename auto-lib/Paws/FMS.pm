package Paws::FMS;
  use Moose;
  sub service { 'fms' }
  sub signing_name { 'fms' }
  sub version { '2018-01-01' }
  sub target_prefix { 'AWSFMS_20180101' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AssociateAdminAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::AssociateAdminAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAppsList {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::DeleteAppsList', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNotificationChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::DeleteNotificationChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::DeletePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProtocolsList {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::DeleteProtocolsList', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateAdminAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::DisassociateAdminAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAdminAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::GetAdminAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAppsList {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::GetAppsList', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetComplianceDetail {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::GetComplianceDetail', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetNotificationChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::GetNotificationChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::GetPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetProtectionStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::GetProtectionStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetProtocolsList {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::GetProtocolsList', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetViolationDetails {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::GetViolationDetails', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAppsLists {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::ListAppsLists', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListComplianceStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::ListComplianceStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMemberAccounts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::ListMemberAccounts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::ListPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProtocolsLists {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::ListProtocolsLists', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutAppsList {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::PutAppsList', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutNotificationChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::PutNotificationChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::PutPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutProtocolsList {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::PutProtocolsList', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllComplianceStatus {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListComplianceStatus(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListComplianceStatus(@_, NextToken => $next_result->NextToken);
        push @{ $result->PolicyComplianceStatusList }, @{ $next_result->PolicyComplianceStatusList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PolicyComplianceStatusList') foreach (@{ $result->PolicyComplianceStatusList });
        $result = $self->ListComplianceStatus(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PolicyComplianceStatusList') foreach (@{ $result->PolicyComplianceStatusList });
    }

    return undef
  }
  sub ListAllMemberAccounts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListMemberAccounts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListMemberAccounts(@_, NextToken => $next_result->NextToken);
        push @{ $result->MemberAccounts }, @{ $next_result->MemberAccounts };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'MemberAccounts') foreach (@{ $result->MemberAccounts });
        $result = $self->ListMemberAccounts(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'MemberAccounts') foreach (@{ $result->MemberAccounts });
    }

    return undef
  }
  sub ListAllPolicies {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPolicies(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPolicies(@_, NextToken => $next_result->NextToken);
        push @{ $result->PolicyList }, @{ $next_result->PolicyList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PolicyList') foreach (@{ $result->PolicyList });
        $result = $self->ListPolicies(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PolicyList') foreach (@{ $result->PolicyList });
    }

    return undef
  }


  sub operations { qw/AssociateAdminAccount DeleteAppsList DeleteNotificationChannel DeletePolicy DeleteProtocolsList DisassociateAdminAccount GetAdminAccount GetAppsList GetComplianceDetail GetNotificationChannel GetPolicy GetProtectionStatus GetProtocolsList GetViolationDetails ListAppsLists ListComplianceStatus ListMemberAccounts ListPolicies ListProtocolsLists ListTagsForResource PutAppsList PutNotificationChannel PutPolicy PutProtocolsList TagResource UntagResource / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::FMS - Perl Interface to AWS Firewall Management Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('FMS');
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

AWS Firewall Manager

This is the I<AWS Firewall Manager API Reference>. This guide is for
developers who need detailed information about the AWS Firewall Manager
API actions, data types, and errors. For detailed information about AWS
Firewall Manager features, see the AWS Firewall Manager Developer Guide
(https://docs.aws.amazon.com/waf/latest/developerguide/fms-chapter.html).

Some API actions require explicit resource permissions. For
information, see the developer guide topic Firewall Manager required
permissions for API actions
(https://docs.aws.amazon.com/waf/latest/developerguide/fms-api-permissions-ref.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01>


=head1 METHODS

=head2 AssociateAdminAccount

=over

=item AdminAccount => Str


=back

Each argument is described in detail in: L<Paws::FMS::AssociateAdminAccount>

Returns: nothing

Sets the AWS Firewall Manager administrator account. AWS Firewall
Manager must be associated with the master account of your AWS
organization or associated with a member account that has the
appropriate permissions. If the account ID that you submit is not an
AWS Organizations master account, AWS Firewall Manager will set the
appropriate permissions for the given member account.

The account that you associate with AWS Firewall Manager is called the
AWS Firewall Manager administrator account.


=head2 DeleteAppsList

=over

=item ListId => Str


=back

Each argument is described in detail in: L<Paws::FMS::DeleteAppsList>

Returns: nothing

Permanently deletes an AWS Firewall Manager applications list.


=head2 DeleteNotificationChannel






Each argument is described in detail in: L<Paws::FMS::DeleteNotificationChannel>

Returns: nothing

Deletes an AWS Firewall Manager association with the IAM role and the
Amazon Simple Notification Service (SNS) topic that is used to record
AWS Firewall Manager SNS logs.


=head2 DeletePolicy

=over

=item PolicyId => Str

=item [DeleteAllPolicyResources => Bool]


=back

Each argument is described in detail in: L<Paws::FMS::DeletePolicy>

Returns: nothing

Permanently deletes an AWS Firewall Manager policy.


=head2 DeleteProtocolsList

=over

=item ListId => Str


=back

Each argument is described in detail in: L<Paws::FMS::DeleteProtocolsList>

Returns: nothing

Permanently deletes an AWS Firewall Manager protocols list.


=head2 DisassociateAdminAccount






Each argument is described in detail in: L<Paws::FMS::DisassociateAdminAccount>

Returns: nothing

Disassociates the account that has been set as the AWS Firewall Manager
administrator account. To set a different account as the administrator
account, you must submit an C<AssociateAdminAccount> request.


=head2 GetAdminAccount






Each argument is described in detail in: L<Paws::FMS::GetAdminAccount>

Returns: a L<Paws::FMS::GetAdminAccountResponse> instance

Returns the AWS Organizations master account that is associated with
AWS Firewall Manager as the AWS Firewall Manager administrator.


=head2 GetAppsList

=over

=item ListId => Str

=item [DefaultList => Bool]


=back

Each argument is described in detail in: L<Paws::FMS::GetAppsList>

Returns: a L<Paws::FMS::GetAppsListResponse> instance

Returns information about the specified AWS Firewall Manager
applications list.


=head2 GetComplianceDetail

=over

=item MemberAccount => Str

=item PolicyId => Str


=back

Each argument is described in detail in: L<Paws::FMS::GetComplianceDetail>

Returns: a L<Paws::FMS::GetComplianceDetailResponse> instance

Returns detailed compliance information about the specified member
account. Details include resources that are in and out of compliance
with the specified policy. Resources are considered noncompliant for
AWS WAF and Shield Advanced policies if the specified policy has not
been applied to them. Resources are considered noncompliant for
security group policies if they are in scope of the policy, they
violate one or more of the policy rules, and remediation is disabled or
not possible. Resources are considered noncompliant for Network
Firewall policies if a firewall is missing in the VPC, if the firewall
endpoint isn't set up in an expected Availability Zone and subnet, if a
subnet created by the Firewall Manager doesn't have the expected route
table, and for modifications to a firewall policy that violate the
Firewall Manager policy's rules.


=head2 GetNotificationChannel






Each argument is described in detail in: L<Paws::FMS::GetNotificationChannel>

Returns: a L<Paws::FMS::GetNotificationChannelResponse> instance

Information about the Amazon Simple Notification Service (SNS) topic
that is used to record AWS Firewall Manager SNS logs.


=head2 GetPolicy

=over

=item PolicyId => Str


=back

Each argument is described in detail in: L<Paws::FMS::GetPolicy>

Returns: a L<Paws::FMS::GetPolicyResponse> instance

Returns information about the specified AWS Firewall Manager policy.


=head2 GetProtectionStatus

=over

=item PolicyId => Str

=item [EndTime => Str]

=item [MaxResults => Int]

=item [MemberAccountId => Str]

=item [NextToken => Str]

=item [StartTime => Str]


=back

Each argument is described in detail in: L<Paws::FMS::GetProtectionStatus>

Returns: a L<Paws::FMS::GetProtectionStatusResponse> instance

If you created a Shield Advanced policy, returns policy-level attack
summary information in the event of a potential DDoS attack. Other
policy types are currently unsupported.


=head2 GetProtocolsList

=over

=item ListId => Str

=item [DefaultList => Bool]


=back

Each argument is described in detail in: L<Paws::FMS::GetProtocolsList>

Returns: a L<Paws::FMS::GetProtocolsListResponse> instance

Returns information about the specified AWS Firewall Manager protocols
list.


=head2 GetViolationDetails

=over

=item MemberAccount => Str

=item PolicyId => Str

=item ResourceId => Str

=item ResourceType => Str


=back

Each argument is described in detail in: L<Paws::FMS::GetViolationDetails>

Returns: a L<Paws::FMS::GetViolationDetailsResponse> instance

Retrieves violations for a resource based on the specified AWS Firewall
Manager policy and AWS account.


=head2 ListAppsLists

=over

=item MaxResults => Int

=item [DefaultLists => Bool]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FMS::ListAppsLists>

Returns: a L<Paws::FMS::ListAppsListsResponse> instance

Returns an array of C<AppsListDataSummary> objects.


=head2 ListComplianceStatus

=over

=item PolicyId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FMS::ListComplianceStatus>

Returns: a L<Paws::FMS::ListComplianceStatusResponse> instance

Returns an array of C<PolicyComplianceStatus> objects. Use
C<PolicyComplianceStatus> to get a summary of which member accounts are
protected by the specified policy.


=head2 ListMemberAccounts

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FMS::ListMemberAccounts>

Returns: a L<Paws::FMS::ListMemberAccountsResponse> instance

Returns a C<MemberAccounts> object that lists the member accounts in
the administrator's AWS organization.

The C<ListMemberAccounts> must be submitted by the account that is set
as the AWS Firewall Manager administrator.


=head2 ListPolicies

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FMS::ListPolicies>

Returns: a L<Paws::FMS::ListPoliciesResponse> instance

Returns an array of C<PolicySummary> objects.


=head2 ListProtocolsLists

=over

=item MaxResults => Int

=item [DefaultLists => Bool]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FMS::ListProtocolsLists>

Returns: a L<Paws::FMS::ListProtocolsListsResponse> instance

Returns an array of C<ProtocolsListDataSummary> objects.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::FMS::ListTagsForResource>

Returns: a L<Paws::FMS::ListTagsForResourceResponse> instance

Retrieves the list of tags for the specified AWS resource.


=head2 PutAppsList

=over

=item AppsList => L<Paws::FMS::AppsListData>

=item [TagList => ArrayRef[L<Paws::FMS::Tag>]]


=back

Each argument is described in detail in: L<Paws::FMS::PutAppsList>

Returns: a L<Paws::FMS::PutAppsListResponse> instance

Creates an AWS Firewall Manager applications list.


=head2 PutNotificationChannel

=over

=item SnsRoleName => Str

=item SnsTopicArn => Str


=back

Each argument is described in detail in: L<Paws::FMS::PutNotificationChannel>

Returns: nothing

Designates the IAM role and Amazon Simple Notification Service (SNS)
topic that AWS Firewall Manager uses to record SNS logs.

To perform this action outside of the console, you must configure the
SNS topic to allow the Firewall Manager role C<AWSServiceRoleForFMS> to
publish SNS logs. For more information, see Firewall Manager required
permissions for API actions
(https://docs.aws.amazon.com/waf/latest/developerguide/fms-api-permissions-ref.html)
in the I<AWS Firewall Manager Developer Guide>.


=head2 PutPolicy

=over

=item Policy => L<Paws::FMS::Policy>

=item [TagList => ArrayRef[L<Paws::FMS::Tag>]]


=back

Each argument is described in detail in: L<Paws::FMS::PutPolicy>

Returns: a L<Paws::FMS::PutPolicyResponse> instance

Creates an AWS Firewall Manager policy.

Firewall Manager provides the following types of policies:

=over

=item *

An AWS WAF policy (type WAFV2), which defines rule groups to run first
in the corresponding AWS WAF web ACL and rule groups to run last in the
web ACL.

=item *

An AWS WAF Classic policy (type WAF), which defines a rule group.

=item *

A Shield Advanced policy, which applies Shield Advanced protection to
specified accounts and resources.

=item *

A security group policy, which manages VPC security groups across your
AWS organization.

=item *

An AWS Network Firewall policy, which provides firewall rules to filter
network traffic in specified Amazon VPCs.

=back

Each policy is specific to one of the types. If you want to enforce
more than one policy type across accounts, create multiple policies.
You can create multiple policies for each type.

You must be subscribed to Shield Advanced to create a Shield Advanced
policy. For more information about subscribing to Shield Advanced, see
CreateSubscription
(https://docs.aws.amazon.com/waf/latest/DDOSAPIReference/API_CreateSubscription.html).


=head2 PutProtocolsList

=over

=item ProtocolsList => L<Paws::FMS::ProtocolsListData>

=item [TagList => ArrayRef[L<Paws::FMS::Tag>]]


=back

Each argument is described in detail in: L<Paws::FMS::PutProtocolsList>

Returns: a L<Paws::FMS::PutProtocolsListResponse> instance

Creates an AWS Firewall Manager protocols list.


=head2 TagResource

=over

=item ResourceArn => Str

=item TagList => ArrayRef[L<Paws::FMS::Tag>]


=back

Each argument is described in detail in: L<Paws::FMS::TagResource>

Returns: a L<Paws::FMS::TagResourceResponse> instance

Adds one or more tags to an AWS resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::FMS::UntagResource>

Returns: a L<Paws::FMS::UntagResourceResponse> instance

Removes one or more tags from an AWS resource.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllComplianceStatus(sub { },PolicyId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllComplianceStatus(PolicyId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PolicyComplianceStatusList, passing the object as the first parameter, and the string 'PolicyComplianceStatusList' as the second parameter 

If not, it will return a a L<Paws::FMS::ListComplianceStatusResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMemberAccounts(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllMemberAccounts([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - MemberAccounts, passing the object as the first parameter, and the string 'MemberAccounts' as the second parameter 

If not, it will return a a L<Paws::FMS::ListMemberAccountsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPolicies(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllPolicies([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PolicyList, passing the object as the first parameter, and the string 'PolicyList' as the second parameter 

If not, it will return a a L<Paws::FMS::ListPoliciesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

