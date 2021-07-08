package Paws::WorkMail;
  use Moose;
  sub service { 'workmail' }
  sub signing_name { 'workmail' }
  sub version { '2017-10-01' }
  sub target_prefix { 'WorkMailService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AssociateDelegateToResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::AssociateDelegateToResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateMemberToGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::AssociateMemberToGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelMailboxExportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::CancelMailboxExportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::CreateAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::CreateGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMobileDeviceAccessRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::CreateMobileDeviceAccessRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateOrganization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::CreateOrganization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::CreateResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::CreateUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAccessControlRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DeleteAccessControlRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DeleteAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DeleteGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMailboxPermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DeleteMailboxPermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMobileDeviceAccessRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DeleteMobileDeviceAccessRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteOrganization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DeleteOrganization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DeleteResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRetentionPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DeleteRetentionPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DeleteUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterFromWorkMail {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DeregisterFromWorkMail', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DescribeGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeMailboxExportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DescribeMailboxExportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeOrganization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DescribeOrganization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DescribeResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DescribeUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateDelegateFromResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DisassociateDelegateFromResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateMemberFromGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::DisassociateMemberFromGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAccessControlEffect {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::GetAccessControlEffect', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDefaultRetentionPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::GetDefaultRetentionPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMailboxDetails {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::GetMailboxDetails', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMobileDeviceAccessEffect {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::GetMobileDeviceAccessEffect', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAccessControlRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::ListAccessControlRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAliases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::ListAliases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGroupMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::ListGroupMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::ListGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMailboxExportJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::ListMailboxExportJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMailboxPermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::ListMailboxPermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMobileDeviceAccessRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::ListMobileDeviceAccessRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListOrganizations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::ListOrganizations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResourceDelegates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::ListResourceDelegates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::ListResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUsers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::ListUsers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutAccessControlRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::PutAccessControlRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutMailboxPermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::PutMailboxPermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutRetentionPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::PutRetentionPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterToWorkMail {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::RegisterToWorkMail', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetPassword {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::ResetPassword', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartMailboxExportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::StartMailboxExportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMailboxQuota {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::UpdateMailboxQuota', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMobileDeviceAccessRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::UpdateMobileDeviceAccessRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePrimaryEmailAddress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::UpdatePrimaryEmailAddress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMail::UpdateResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAliases {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAliases(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAliases(@_, NextToken => $next_result->NextToken);
        push @{ $result->Aliases }, @{ $next_result->Aliases };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Aliases') foreach (@{ $result->Aliases });
        $result = $self->ListAliases(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Aliases') foreach (@{ $result->Aliases });
    }

    return undef
  }
  sub ListAllGroupMembers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListGroupMembers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListGroupMembers(@_, NextToken => $next_result->NextToken);
        push @{ $result->Members }, @{ $next_result->Members };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Members') foreach (@{ $result->Members });
        $result = $self->ListGroupMembers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Members') foreach (@{ $result->Members });
    }

    return undef
  }
  sub ListAllGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListGroups(@_, NextToken => $next_result->NextToken);
        push @{ $result->Groups }, @{ $next_result->Groups };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Groups') foreach (@{ $result->Groups });
        $result = $self->ListGroups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Groups') foreach (@{ $result->Groups });
    }

    return undef
  }
  sub ListAllMailboxPermissions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListMailboxPermissions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListMailboxPermissions(@_, NextToken => $next_result->NextToken);
        push @{ $result->Permissions }, @{ $next_result->Permissions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Permissions') foreach (@{ $result->Permissions });
        $result = $self->ListMailboxPermissions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Permissions') foreach (@{ $result->Permissions });
    }

    return undef
  }
  sub ListAllOrganizations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListOrganizations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListOrganizations(@_, NextToken => $next_result->NextToken);
        push @{ $result->OrganizationSummaries }, @{ $next_result->OrganizationSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'OrganizationSummaries') foreach (@{ $result->OrganizationSummaries });
        $result = $self->ListOrganizations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'OrganizationSummaries') foreach (@{ $result->OrganizationSummaries });
    }

    return undef
  }
  sub ListAllResourceDelegates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListResourceDelegates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListResourceDelegates(@_, NextToken => $next_result->NextToken);
        push @{ $result->Delegates }, @{ $next_result->Delegates };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Delegates') foreach (@{ $result->Delegates });
        $result = $self->ListResourceDelegates(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Delegates') foreach (@{ $result->Delegates });
    }

    return undef
  }
  sub ListAllResources {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListResources(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListResources(@_, NextToken => $next_result->NextToken);
        push @{ $result->Resources }, @{ $next_result->Resources };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Resources') foreach (@{ $result->Resources });
        $result = $self->ListResources(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Resources') foreach (@{ $result->Resources });
    }

    return undef
  }
  sub ListAllUsers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListUsers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListUsers(@_, NextToken => $next_result->NextToken);
        push @{ $result->Users }, @{ $next_result->Users };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Users') foreach (@{ $result->Users });
        $result = $self->ListUsers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Users') foreach (@{ $result->Users });
    }

    return undef
  }


  sub operations { qw/AssociateDelegateToResource AssociateMemberToGroup CancelMailboxExportJob CreateAlias CreateGroup CreateMobileDeviceAccessRule CreateOrganization CreateResource CreateUser DeleteAccessControlRule DeleteAlias DeleteGroup DeleteMailboxPermissions DeleteMobileDeviceAccessRule DeleteOrganization DeleteResource DeleteRetentionPolicy DeleteUser DeregisterFromWorkMail DescribeGroup DescribeMailboxExportJob DescribeOrganization DescribeResource DescribeUser DisassociateDelegateFromResource DisassociateMemberFromGroup GetAccessControlEffect GetDefaultRetentionPolicy GetMailboxDetails GetMobileDeviceAccessEffect ListAccessControlRules ListAliases ListGroupMembers ListGroups ListMailboxExportJobs ListMailboxPermissions ListMobileDeviceAccessRules ListOrganizations ListResourceDelegates ListResources ListTagsForResource ListUsers PutAccessControlRule PutMailboxPermissions PutRetentionPolicy RegisterToWorkMail ResetPassword StartMailboxExportJob TagResource UntagResource UpdateMailboxQuota UpdateMobileDeviceAccessRule UpdatePrimaryEmailAddress UpdateResource / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail - Perl Interface to AWS Amazon WorkMail

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('WorkMail');
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

Amazon WorkMail is a secure, managed business email and calendaring
service with support for existing desktop and mobile email clients. You
can access your email, contacts, and calendars using Microsoft Outlook,
your browser, or other native iOS and Android email applications. You
can integrate WorkMail with your existing corporate directory and
control both the keys that encrypt your data and the location in which
your data is stored.

The WorkMail API is designed for the following scenarios:

=over

=item *

Listing and describing organizations

=back

=over

=item *

Managing users

=back

=over

=item *

Managing groups

=back

=over

=item *

Managing resources

=back

All WorkMail API operations are Amazon-authenticated and
certificate-signed. They not only require the use of the AWS SDK, but
also allow for the exclusive use of AWS Identity and Access Management
users and roles to help facilitate access, trust, and permission
policies. By creating a role and allowing an IAM user to access the
WorkMail site, the IAM user gains full administrative visibility into
the entire WorkMail organization (or as set in the IAM policy). This
includes, but is not limited to, the ability to create, update, and
delete users, groups, and resources. This allows developers to perform
the scenarios listed above, as well as give users the ability to grant
access on a selective basis using the IAM model.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01>


=head1 METHODS

=head2 AssociateDelegateToResource

=over

=item EntityId => Str

=item OrganizationId => Str

=item ResourceId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::AssociateDelegateToResource>

Returns: a L<Paws::WorkMail::AssociateDelegateToResourceResponse> instance

Adds a member (user or group) to the resource's set of delegates.


=head2 AssociateMemberToGroup

=over

=item GroupId => Str

=item MemberId => Str

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::AssociateMemberToGroup>

Returns: a L<Paws::WorkMail::AssociateMemberToGroupResponse> instance

Adds a member (user or group) to the group's set.


=head2 CancelMailboxExportJob

=over

=item ClientToken => Str

=item JobId => Str

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::CancelMailboxExportJob>

Returns: a L<Paws::WorkMail::CancelMailboxExportJobResponse> instance

Cancels a mailbox export job.

If the mailbox export job is near completion, it might not be possible
to cancel it.


=head2 CreateAlias

=over

=item Alias => Str

=item EntityId => Str

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::CreateAlias>

Returns: a L<Paws::WorkMail::CreateAliasResponse> instance

Adds an alias to the set of a given member (user or group) of Amazon
WorkMail.


=head2 CreateGroup

=over

=item Name => Str

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::CreateGroup>

Returns: a L<Paws::WorkMail::CreateGroupResponse> instance

Creates a group that can be used in Amazon WorkMail by calling the
RegisterToWorkMail operation.


=head2 CreateMobileDeviceAccessRule

=over

=item Effect => Str

=item Name => Str

=item OrganizationId => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [DeviceModels => ArrayRef[Str|Undef]]

=item [DeviceOperatingSystems => ArrayRef[Str|Undef]]

=item [DeviceTypes => ArrayRef[Str|Undef]]

=item [DeviceUserAgents => ArrayRef[Str|Undef]]

=item [NotDeviceModels => ArrayRef[Str|Undef]]

=item [NotDeviceOperatingSystems => ArrayRef[Str|Undef]]

=item [NotDeviceTypes => ArrayRef[Str|Undef]]

=item [NotDeviceUserAgents => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::WorkMail::CreateMobileDeviceAccessRule>

Returns: a L<Paws::WorkMail::CreateMobileDeviceAccessRuleResponse> instance

Creates a new mobile device access rule for the specified Amazon
WorkMail organization.


=head2 CreateOrganization

=over

=item Alias => Str

=item [ClientToken => Str]

=item [DirectoryId => Str]

=item [Domains => ArrayRef[L<Paws::WorkMail::Domain>]]

=item [EnableInteroperability => Bool]

=item [KmsKeyArn => Str]


=back

Each argument is described in detail in: L<Paws::WorkMail::CreateOrganization>

Returns: a L<Paws::WorkMail::CreateOrganizationResponse> instance

Creates a new Amazon WorkMail organization. Optionally, you can choose
to associate an existing AWS Directory Service directory with your
organization. If an AWS Directory Service directory ID is specified,
the organization alias must match the directory alias. If you choose
not to associate an existing directory with your organization, then we
create a new Amazon WorkMail directory for you. For more information,
see Adding an organization
(https://docs.aws.amazon.com/workmail/latest/adminguide/add_new_organization.html)
in the I<Amazon WorkMail Administrator Guide>.

You can associate multiple email domains with an organization, then set
your default email domain from the Amazon WorkMail console. You can
also associate a domain that is managed in an Amazon Route 53 public
hosted zone. For more information, see Adding a domain
(https://docs.aws.amazon.com/workmail/latest/adminguide/add_domain.html)
and Choosing the default domain
(https://docs.aws.amazon.com/workmail/latest/adminguide/default_domain.html)
in the I<Amazon WorkMail Administrator Guide>.

Optionally, you can use a customer managed master key from AWS Key
Management Service (AWS KMS) to encrypt email for your organization. If
you don't associate an AWS KMS key, Amazon WorkMail creates a default
AWS managed master key for you.


=head2 CreateResource

=over

=item Name => Str

=item OrganizationId => Str

=item Type => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::CreateResource>

Returns: a L<Paws::WorkMail::CreateResourceResponse> instance

Creates a new Amazon WorkMail resource.


=head2 CreateUser

=over

=item DisplayName => Str

=item Name => Str

=item OrganizationId => Str

=item Password => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::CreateUser>

Returns: a L<Paws::WorkMail::CreateUserResponse> instance

Creates a user who can be used in Amazon WorkMail by calling the
RegisterToWorkMail operation.


=head2 DeleteAccessControlRule

=over

=item Name => Str

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::DeleteAccessControlRule>

Returns: a L<Paws::WorkMail::DeleteAccessControlRuleResponse> instance

Deletes an access control rule for the specified WorkMail organization.


=head2 DeleteAlias

=over

=item Alias => Str

=item EntityId => Str

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::DeleteAlias>

Returns: a L<Paws::WorkMail::DeleteAliasResponse> instance

Remove one or more specified aliases from a set of aliases for a given
user.


=head2 DeleteGroup

=over

=item GroupId => Str

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::DeleteGroup>

Returns: a L<Paws::WorkMail::DeleteGroupResponse> instance

Deletes a group from Amazon WorkMail.


=head2 DeleteMailboxPermissions

=over

=item EntityId => Str

=item GranteeId => Str

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::DeleteMailboxPermissions>

Returns: a L<Paws::WorkMail::DeleteMailboxPermissionsResponse> instance

Deletes permissions granted to a member (user or group).


=head2 DeleteMobileDeviceAccessRule

=over

=item MobileDeviceAccessRuleId => Str

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::DeleteMobileDeviceAccessRule>

Returns: a L<Paws::WorkMail::DeleteMobileDeviceAccessRuleResponse> instance

Deletes a mobile device access rule for the specified Amazon WorkMail
organization.


=head2 DeleteOrganization

=over

=item DeleteDirectory => Bool

=item OrganizationId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkMail::DeleteOrganization>

Returns: a L<Paws::WorkMail::DeleteOrganizationResponse> instance

Deletes an Amazon WorkMail organization and all underlying AWS
resources managed by Amazon WorkMail as part of the organization. You
can choose whether to delete the associated directory. For more
information, see Removing an organization
(https://docs.aws.amazon.com/workmail/latest/adminguide/remove_organization.html)
in the I<Amazon WorkMail Administrator Guide>.


=head2 DeleteResource

=over

=item OrganizationId => Str

=item ResourceId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::DeleteResource>

Returns: a L<Paws::WorkMail::DeleteResourceResponse> instance

Deletes the specified resource.


=head2 DeleteRetentionPolicy

=over

=item Id => Str

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::DeleteRetentionPolicy>

Returns: a L<Paws::WorkMail::DeleteRetentionPolicyResponse> instance

Deletes the specified retention policy from the specified organization.


=head2 DeleteUser

=over

=item OrganizationId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::DeleteUser>

Returns: a L<Paws::WorkMail::DeleteUserResponse> instance

Deletes a user from Amazon WorkMail and all subsequent systems. Before
you can delete a user, the user state must be C<DISABLED>. Use the
DescribeUser action to confirm the user state.

Deleting a user is permanent and cannot be undone. WorkMail archives
user mailboxes for 30 days before they are permanently removed.


=head2 DeregisterFromWorkMail

=over

=item EntityId => Str

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::DeregisterFromWorkMail>

Returns: a L<Paws::WorkMail::DeregisterFromWorkMailResponse> instance

Mark a user, group, or resource as no longer used in Amazon WorkMail.
This action disassociates the mailbox and schedules it for clean-up.
WorkMail keeps mailboxes for 30 days before they are permanently
removed. The functionality in the console is I<Disable>.


=head2 DescribeGroup

=over

=item GroupId => Str

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::DescribeGroup>

Returns: a L<Paws::WorkMail::DescribeGroupResponse> instance

Returns the data available for the group.


=head2 DescribeMailboxExportJob

=over

=item JobId => Str

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::DescribeMailboxExportJob>

Returns: a L<Paws::WorkMail::DescribeMailboxExportJobResponse> instance

Describes the current status of a mailbox export job.


=head2 DescribeOrganization

=over

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::DescribeOrganization>

Returns: a L<Paws::WorkMail::DescribeOrganizationResponse> instance

Provides more information regarding a given organization based on its
identifier.


=head2 DescribeResource

=over

=item OrganizationId => Str

=item ResourceId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::DescribeResource>

Returns: a L<Paws::WorkMail::DescribeResourceResponse> instance

Returns the data available for the resource.


=head2 DescribeUser

=over

=item OrganizationId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::DescribeUser>

Returns: a L<Paws::WorkMail::DescribeUserResponse> instance

Provides information regarding the user.


=head2 DisassociateDelegateFromResource

=over

=item EntityId => Str

=item OrganizationId => Str

=item ResourceId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::DisassociateDelegateFromResource>

Returns: a L<Paws::WorkMail::DisassociateDelegateFromResourceResponse> instance

Removes a member from the resource's set of delegates.


=head2 DisassociateMemberFromGroup

=over

=item GroupId => Str

=item MemberId => Str

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::DisassociateMemberFromGroup>

Returns: a L<Paws::WorkMail::DisassociateMemberFromGroupResponse> instance

Removes a member from a group.


=head2 GetAccessControlEffect

=over

=item Action => Str

=item IpAddress => Str

=item OrganizationId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::GetAccessControlEffect>

Returns: a L<Paws::WorkMail::GetAccessControlEffectResponse> instance

Gets the effects of an organization's access control rules as they
apply to a specified IPv4 address, access protocol action, or user ID.


=head2 GetDefaultRetentionPolicy

=over

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::GetDefaultRetentionPolicy>

Returns: a L<Paws::WorkMail::GetDefaultRetentionPolicyResponse> instance

Gets the default retention policy details for the specified
organization.


=head2 GetMailboxDetails

=over

=item OrganizationId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::GetMailboxDetails>

Returns: a L<Paws::WorkMail::GetMailboxDetailsResponse> instance

Requests a user's mailbox details for a specified organization and
user.


=head2 GetMobileDeviceAccessEffect

=over

=item OrganizationId => Str

=item [DeviceModel => Str]

=item [DeviceOperatingSystem => Str]

=item [DeviceType => Str]

=item [DeviceUserAgent => Str]


=back

Each argument is described in detail in: L<Paws::WorkMail::GetMobileDeviceAccessEffect>

Returns: a L<Paws::WorkMail::GetMobileDeviceAccessEffectResponse> instance

Simulates the effect of the mobile device access rules for the given
attributes of a sample access event. Use this method to test the
effects of the current set of mobile device access rules for the Amazon
WorkMail organization for a particular user's attributes.


=head2 ListAccessControlRules

=over

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::ListAccessControlRules>

Returns: a L<Paws::WorkMail::ListAccessControlRulesResponse> instance

Lists the access control rules for the specified organization.


=head2 ListAliases

=over

=item EntityId => Str

=item OrganizationId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkMail::ListAliases>

Returns: a L<Paws::WorkMail::ListAliasesResponse> instance

Creates a paginated call to list the aliases associated with a given
entity.


=head2 ListGroupMembers

=over

=item GroupId => Str

=item OrganizationId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkMail::ListGroupMembers>

Returns: a L<Paws::WorkMail::ListGroupMembersResponse> instance

Returns an overview of the members of a group. Users and groups can be
members of a group.


=head2 ListGroups

=over

=item OrganizationId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkMail::ListGroups>

Returns: a L<Paws::WorkMail::ListGroupsResponse> instance

Returns summaries of the organization's groups.


=head2 ListMailboxExportJobs

=over

=item OrganizationId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkMail::ListMailboxExportJobs>

Returns: a L<Paws::WorkMail::ListMailboxExportJobsResponse> instance

Lists the mailbox export jobs started for the specified organization
within the last seven days.


=head2 ListMailboxPermissions

=over

=item EntityId => Str

=item OrganizationId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkMail::ListMailboxPermissions>

Returns: a L<Paws::WorkMail::ListMailboxPermissionsResponse> instance

Lists the mailbox permissions associated with a user, group, or
resource mailbox.


=head2 ListMobileDeviceAccessRules

=over

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::ListMobileDeviceAccessRules>

Returns: a L<Paws::WorkMail::ListMobileDeviceAccessRulesResponse> instance

Lists the mobile device access rules for the specified Amazon WorkMail
organization.


=head2 ListOrganizations

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkMail::ListOrganizations>

Returns: a L<Paws::WorkMail::ListOrganizationsResponse> instance

Returns summaries of the customer's organizations.


=head2 ListResourceDelegates

=over

=item OrganizationId => Str

=item ResourceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkMail::ListResourceDelegates>

Returns: a L<Paws::WorkMail::ListResourceDelegatesResponse> instance

Lists the delegates associated with a resource. Users and groups can be
resource delegates and answer requests on behalf of the resource.


=head2 ListResources

=over

=item OrganizationId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkMail::ListResources>

Returns: a L<Paws::WorkMail::ListResourcesResponse> instance

Returns summaries of the organization's resources.


=head2 ListTagsForResource

=over

=item ResourceARN => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::ListTagsForResource>

Returns: a L<Paws::WorkMail::ListTagsForResourceResponse> instance

Lists the tags applied to an Amazon WorkMail organization resource.


=head2 ListUsers

=over

=item OrganizationId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkMail::ListUsers>

Returns: a L<Paws::WorkMail::ListUsersResponse> instance

Returns summaries of the organization's users.


=head2 PutAccessControlRule

=over

=item Description => Str

=item Effect => Str

=item Name => Str

=item OrganizationId => Str

=item [Actions => ArrayRef[Str|Undef]]

=item [IpRanges => ArrayRef[Str|Undef]]

=item [NotActions => ArrayRef[Str|Undef]]

=item [NotIpRanges => ArrayRef[Str|Undef]]

=item [NotUserIds => ArrayRef[Str|Undef]]

=item [UserIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::WorkMail::PutAccessControlRule>

Returns: a L<Paws::WorkMail::PutAccessControlRuleResponse> instance

Adds a new access control rule for the specified organization. The rule
allows or denies access to the organization for the specified IPv4
addresses, access protocol actions, and user IDs. Adding a new rule
with the same name as an existing rule replaces the older rule.


=head2 PutMailboxPermissions

=over

=item EntityId => Str

=item GranteeId => Str

=item OrganizationId => Str

=item PermissionValues => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::WorkMail::PutMailboxPermissions>

Returns: a L<Paws::WorkMail::PutMailboxPermissionsResponse> instance

Sets permissions for a user, group, or resource. This replaces any
pre-existing permissions.


=head2 PutRetentionPolicy

=over

=item FolderConfigurations => ArrayRef[L<Paws::WorkMail::FolderConfiguration>]

=item Name => Str

=item OrganizationId => Str

=item [Description => Str]

=item [Id => Str]


=back

Each argument is described in detail in: L<Paws::WorkMail::PutRetentionPolicy>

Returns: a L<Paws::WorkMail::PutRetentionPolicyResponse> instance

Puts a retention policy to the specified organization.


=head2 RegisterToWorkMail

=over

=item Email => Str

=item EntityId => Str

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::RegisterToWorkMail>

Returns: a L<Paws::WorkMail::RegisterToWorkMailResponse> instance

Registers an existing and disabled user, group, or resource for Amazon
WorkMail use by associating a mailbox and calendaring capabilities. It
performs no change if the user, group, or resource is enabled and fails
if the user, group, or resource is deleted. This operation results in
the accumulation of costs. For more information, see Pricing
(https://aws.amazon.com/workmail/pricing). The equivalent console
functionality for this operation is I<Enable>.

Users can either be created by calling the CreateUser API operation or
they can be synchronized from your directory. For more information, see
DeregisterFromWorkMail.


=head2 ResetPassword

=over

=item OrganizationId => Str

=item Password => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::ResetPassword>

Returns: a L<Paws::WorkMail::ResetPasswordResponse> instance

Allows the administrator to reset the password for a user.


=head2 StartMailboxExportJob

=over

=item ClientToken => Str

=item EntityId => Str

=item KmsKeyArn => Str

=item OrganizationId => Str

=item RoleArn => Str

=item S3BucketName => Str

=item S3Prefix => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::WorkMail::StartMailboxExportJob>

Returns: a L<Paws::WorkMail::StartMailboxExportJobResponse> instance

Starts a mailbox export job to export MIME-format email messages and
calendar items from the specified mailbox to the specified Amazon
Simple Storage Service (Amazon S3) bucket. For more information, see
Exporting mailbox content
(https://docs.aws.amazon.com/workmail/latest/adminguide/mail-export.html)
in the I<Amazon WorkMail Administrator Guide>.


=head2 TagResource

=over

=item ResourceARN => Str

=item Tags => ArrayRef[L<Paws::WorkMail::Tag>]


=back

Each argument is described in detail in: L<Paws::WorkMail::TagResource>

Returns: a L<Paws::WorkMail::TagResourceResponse> instance

Applies the specified tags to the specified Amazon WorkMail
organization resource.


=head2 UntagResource

=over

=item ResourceARN => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::WorkMail::UntagResource>

Returns: a L<Paws::WorkMail::UntagResourceResponse> instance

Untags the specified tags from the specified Amazon WorkMail
organization resource.


=head2 UpdateMailboxQuota

=over

=item MailboxQuota => Int

=item OrganizationId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::UpdateMailboxQuota>

Returns: a L<Paws::WorkMail::UpdateMailboxQuotaResponse> instance

Updates a user's current mailbox quota for a specified organization and
user.


=head2 UpdateMobileDeviceAccessRule

=over

=item Effect => Str

=item MobileDeviceAccessRuleId => Str

=item Name => Str

=item OrganizationId => Str

=item [Description => Str]

=item [DeviceModels => ArrayRef[Str|Undef]]

=item [DeviceOperatingSystems => ArrayRef[Str|Undef]]

=item [DeviceTypes => ArrayRef[Str|Undef]]

=item [DeviceUserAgents => ArrayRef[Str|Undef]]

=item [NotDeviceModels => ArrayRef[Str|Undef]]

=item [NotDeviceOperatingSystems => ArrayRef[Str|Undef]]

=item [NotDeviceTypes => ArrayRef[Str|Undef]]

=item [NotDeviceUserAgents => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::WorkMail::UpdateMobileDeviceAccessRule>

Returns: a L<Paws::WorkMail::UpdateMobileDeviceAccessRuleResponse> instance

Updates a mobile device access rule for the specified Amazon WorkMail
organization.


=head2 UpdatePrimaryEmailAddress

=over

=item Email => Str

=item EntityId => Str

=item OrganizationId => Str


=back

Each argument is described in detail in: L<Paws::WorkMail::UpdatePrimaryEmailAddress>

Returns: a L<Paws::WorkMail::UpdatePrimaryEmailAddressResponse> instance

Updates the primary email for a user, group, or resource. The current
email is moved into the list of aliases (or swapped between an existing
alias and the current primary email), and the email provided in the
input is promoted as the primary.


=head2 UpdateResource

=over

=item OrganizationId => Str

=item ResourceId => Str

=item [BookingOptions => L<Paws::WorkMail::BookingOptions>]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::WorkMail::UpdateResource>

Returns: a L<Paws::WorkMail::UpdateResourceResponse> instance

Updates data for the resource. To have the latest information, it must
be preceded by a DescribeResource call. The dataset in the request
should be the one expected when performing another C<DescribeResource>
call.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAliases(sub { },EntityId => Str, OrganizationId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllAliases(EntityId => Str, OrganizationId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Aliases, passing the object as the first parameter, and the string 'Aliases' as the second parameter 

If not, it will return a a L<Paws::WorkMail::ListAliasesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllGroupMembers(sub { },GroupId => Str, OrganizationId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllGroupMembers(GroupId => Str, OrganizationId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Members, passing the object as the first parameter, and the string 'Members' as the second parameter 

If not, it will return a a L<Paws::WorkMail::ListGroupMembersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllGroups(sub { },OrganizationId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllGroups(OrganizationId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Groups, passing the object as the first parameter, and the string 'Groups' as the second parameter 

If not, it will return a a L<Paws::WorkMail::ListGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMailboxPermissions(sub { },EntityId => Str, OrganizationId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllMailboxPermissions(EntityId => Str, OrganizationId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Permissions, passing the object as the first parameter, and the string 'Permissions' as the second parameter 

If not, it will return a a L<Paws::WorkMail::ListMailboxPermissionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllOrganizations(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllOrganizations([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - OrganizationSummaries, passing the object as the first parameter, and the string 'OrganizationSummaries' as the second parameter 

If not, it will return a a L<Paws::WorkMail::ListOrganizationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllResourceDelegates(sub { },OrganizationId => Str, ResourceId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllResourceDelegates(OrganizationId => Str, ResourceId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Delegates, passing the object as the first parameter, and the string 'Delegates' as the second parameter 

If not, it will return a a L<Paws::WorkMail::ListResourceDelegatesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllResources(sub { },OrganizationId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllResources(OrganizationId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Resources, passing the object as the first parameter, and the string 'Resources' as the second parameter 

If not, it will return a a L<Paws::WorkMail::ListResourcesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllUsers(sub { },OrganizationId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllUsers(OrganizationId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Users, passing the object as the first parameter, and the string 'Users' as the second parameter 

If not, it will return a a L<Paws::WorkMail::ListUsersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

