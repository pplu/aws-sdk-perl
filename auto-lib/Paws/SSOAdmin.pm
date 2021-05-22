package Paws::SSOAdmin;
  use Moose;
  sub service { 'sso' }
  sub signing_name { 'sso' }
  sub version { '2020-07-20' }
  sub target_prefix { 'SWBExternalService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AttachManagedPolicyToPermissionSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::AttachManagedPolicyToPermissionSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAccountAssignment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::CreateAccountAssignment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateInstanceAccessControlAttributeConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::CreateInstanceAccessControlAttributeConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePermissionSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::CreatePermissionSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAccountAssignment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::DeleteAccountAssignment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteInlinePolicyFromPermissionSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::DeleteInlinePolicyFromPermissionSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteInstanceAccessControlAttributeConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::DeleteInstanceAccessControlAttributeConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePermissionSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::DeletePermissionSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAccountAssignmentCreationStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::DescribeAccountAssignmentCreationStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAccountAssignmentDeletionStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::DescribeAccountAssignmentDeletionStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInstanceAccessControlAttributeConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::DescribeInstanceAccessControlAttributeConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePermissionSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::DescribePermissionSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePermissionSetProvisioningStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::DescribePermissionSetProvisioningStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetachManagedPolicyFromPermissionSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::DetachManagedPolicyFromPermissionSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInlinePolicyForPermissionSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::GetInlinePolicyForPermissionSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAccountAssignmentCreationStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::ListAccountAssignmentCreationStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAccountAssignmentDeletionStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::ListAccountAssignmentDeletionStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAccountAssignments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::ListAccountAssignments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAccountsForProvisionedPermissionSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::ListAccountsForProvisionedPermissionSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::ListInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListManagedPoliciesInPermissionSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::ListManagedPoliciesInPermissionSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPermissionSetProvisioningStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::ListPermissionSetProvisioningStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPermissionSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::ListPermissionSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPermissionSetsProvisionedToAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::ListPermissionSetsProvisionedToAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ProvisionPermissionSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::ProvisionPermissionSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutInlinePolicyToPermissionSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::PutInlinePolicyToPermissionSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateInstanceAccessControlAttributeConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::UpdateInstanceAccessControlAttributeConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePermissionSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOAdmin::UpdatePermissionSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAccountAssignmentCreationStatus {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAccountAssignmentCreationStatus(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAccountAssignmentCreationStatus(@_, NextToken => $next_result->NextToken);
        push @{ $result->AccountAssignmentsCreationStatus }, @{ $next_result->AccountAssignmentsCreationStatus };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AccountAssignmentsCreationStatus') foreach (@{ $result->AccountAssignmentsCreationStatus });
        $result = $self->ListAccountAssignmentCreationStatus(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AccountAssignmentsCreationStatus') foreach (@{ $result->AccountAssignmentsCreationStatus });
    }

    return undef
  }
  sub ListAllAccountAssignmentDeletionStatus {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAccountAssignmentDeletionStatus(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAccountAssignmentDeletionStatus(@_, NextToken => $next_result->NextToken);
        push @{ $result->AccountAssignmentsDeletionStatus }, @{ $next_result->AccountAssignmentsDeletionStatus };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AccountAssignmentsDeletionStatus') foreach (@{ $result->AccountAssignmentsDeletionStatus });
        $result = $self->ListAccountAssignmentDeletionStatus(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AccountAssignmentsDeletionStatus') foreach (@{ $result->AccountAssignmentsDeletionStatus });
    }

    return undef
  }
  sub ListAllAccountAssignments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAccountAssignments(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAccountAssignments(@_, NextToken => $next_result->NextToken);
        push @{ $result->AccountAssignments }, @{ $next_result->AccountAssignments };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AccountAssignments') foreach (@{ $result->AccountAssignments });
        $result = $self->ListAccountAssignments(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AccountAssignments') foreach (@{ $result->AccountAssignments });
    }

    return undef
  }
  sub ListAllAccountsForProvisionedPermissionSet {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAccountsForProvisionedPermissionSet(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAccountsForProvisionedPermissionSet(@_, NextToken => $next_result->NextToken);
        push @{ $result->AccountIds }, @{ $next_result->AccountIds };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AccountIds') foreach (@{ $result->AccountIds });
        $result = $self->ListAccountsForProvisionedPermissionSet(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AccountIds') foreach (@{ $result->AccountIds });
    }

    return undef
  }
  sub ListAllInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListInstances(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListInstances(@_, NextToken => $next_result->NextToken);
        push @{ $result->Instances }, @{ $next_result->Instances };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Instances') foreach (@{ $result->Instances });
        $result = $self->ListInstances(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Instances') foreach (@{ $result->Instances });
    }

    return undef
  }
  sub ListAllManagedPoliciesInPermissionSet {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListManagedPoliciesInPermissionSet(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListManagedPoliciesInPermissionSet(@_, NextToken => $next_result->NextToken);
        push @{ $result->AttachedManagedPolicies }, @{ $next_result->AttachedManagedPolicies };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AttachedManagedPolicies') foreach (@{ $result->AttachedManagedPolicies });
        $result = $self->ListManagedPoliciesInPermissionSet(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AttachedManagedPolicies') foreach (@{ $result->AttachedManagedPolicies });
    }

    return undef
  }
  sub ListAllPermissionSetProvisioningStatus {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPermissionSetProvisioningStatus(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPermissionSetProvisioningStatus(@_, NextToken => $next_result->NextToken);
        push @{ $result->PermissionSetsProvisioningStatus }, @{ $next_result->PermissionSetsProvisioningStatus };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PermissionSetsProvisioningStatus') foreach (@{ $result->PermissionSetsProvisioningStatus });
        $result = $self->ListPermissionSetProvisioningStatus(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PermissionSetsProvisioningStatus') foreach (@{ $result->PermissionSetsProvisioningStatus });
    }

    return undef
  }
  sub ListAllPermissionSets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPermissionSets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPermissionSets(@_, NextToken => $next_result->NextToken);
        push @{ $result->PermissionSets }, @{ $next_result->PermissionSets };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PermissionSets') foreach (@{ $result->PermissionSets });
        $result = $self->ListPermissionSets(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PermissionSets') foreach (@{ $result->PermissionSets });
    }

    return undef
  }
  sub ListAllPermissionSetsProvisionedToAccount {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPermissionSetsProvisionedToAccount(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPermissionSetsProvisionedToAccount(@_, NextToken => $next_result->NextToken);
        push @{ $result->PermissionSets }, @{ $next_result->PermissionSets };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PermissionSets') foreach (@{ $result->PermissionSets });
        $result = $self->ListPermissionSetsProvisionedToAccount(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PermissionSets') foreach (@{ $result->PermissionSets });
    }

    return undef
  }
  sub ListAllTagsForResource {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTagsForResource(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTagsForResource(@_, NextToken => $next_result->NextToken);
        push @{ $result->Tags }, @{ $next_result->Tags };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Tags') foreach (@{ $result->Tags });
        $result = $self->ListTagsForResource(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Tags') foreach (@{ $result->Tags });
    }

    return undef
  }


  sub operations { qw/AttachManagedPolicyToPermissionSet CreateAccountAssignment CreateInstanceAccessControlAttributeConfiguration CreatePermissionSet DeleteAccountAssignment DeleteInlinePolicyFromPermissionSet DeleteInstanceAccessControlAttributeConfiguration DeletePermissionSet DescribeAccountAssignmentCreationStatus DescribeAccountAssignmentDeletionStatus DescribeInstanceAccessControlAttributeConfiguration DescribePermissionSet DescribePermissionSetProvisioningStatus DetachManagedPolicyFromPermissionSet GetInlinePolicyForPermissionSet ListAccountAssignmentCreationStatus ListAccountAssignmentDeletionStatus ListAccountAssignments ListAccountsForProvisionedPermissionSet ListInstances ListManagedPoliciesInPermissionSet ListPermissionSetProvisioningStatus ListPermissionSets ListPermissionSetsProvisionedToAccount ListTagsForResource ProvisionPermissionSet PutInlinePolicyToPermissionSet TagResource UntagResource UpdateInstanceAccessControlAttributeConfiguration UpdatePermissionSet / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin - Perl Interface to AWS AWS Single Sign-On Admin

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('SSOAdmin');
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



For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sso-2020-07-20>


=head1 METHODS

=head2 AttachManagedPolicyToPermissionSet

=over

=item InstanceArn => Str

=item ManagedPolicyArn => Str

=item PermissionSetArn => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::AttachManagedPolicyToPermissionSet>

Returns: a L<Paws::SSOAdmin::AttachManagedPolicyToPermissionSetResponse> instance

Attaches an IAM managed policy ARN to a permission set.

If the permission set is already referenced by one or more account
assignments, you will need to call C< ProvisionPermissionSet > after
this action to apply the corresponding IAM policy updates to all
assigned accounts.


=head2 CreateAccountAssignment

=over

=item InstanceArn => Str

=item PermissionSetArn => Str

=item PrincipalId => Str

=item PrincipalType => Str

=item TargetId => Str

=item TargetType => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::CreateAccountAssignment>

Returns: a L<Paws::SSOAdmin::CreateAccountAssignmentResponse> instance

Assigns access to a principal for a specified AWS account using a
specified permission set.

The term I<principal> here refers to a user or group that is defined in
AWS SSO.

As part of a successful C<CreateAccountAssignment> call, the specified
permission set will automatically be provisioned to the account in the
form of an IAM policy attached to the SSO-created IAM role. If the
permission set is subsequently updated, the corresponding IAM policies
attached to roles in your accounts will not be updated automatically.
In this case, you will need to call C< ProvisionPermissionSet > to make
these updates.


=head2 CreateInstanceAccessControlAttributeConfiguration

=over

=item InstanceAccessControlAttributeConfiguration => L<Paws::SSOAdmin::InstanceAccessControlAttributeConfiguration>

=item InstanceArn => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::CreateInstanceAccessControlAttributeConfiguration>

Returns: a L<Paws::SSOAdmin::CreateInstanceAccessControlAttributeConfigurationResponse> instance

Enables the attributes-based access control (ABAC) feature for the
specified AWS SSO instance. You can also specify new attributes to add
to your ABAC configuration during the enabling process. For more
information about ABAC, see Attribute-Based Access Control in the I<AWS
SSO User Guide>.


=head2 CreatePermissionSet

=over

=item InstanceArn => Str

=item Name => Str

=item [Description => Str]

=item [RelayState => Str]

=item [SessionDuration => Str]

=item [Tags => ArrayRef[L<Paws::SSOAdmin::Tag>]]


=back

Each argument is described in detail in: L<Paws::SSOAdmin::CreatePermissionSet>

Returns: a L<Paws::SSOAdmin::CreatePermissionSetResponse> instance

Creates a permission set within a specified SSO instance.

To grant users and groups access to AWS account resources, use C<
CreateAccountAssignment >.


=head2 DeleteAccountAssignment

=over

=item InstanceArn => Str

=item PermissionSetArn => Str

=item PrincipalId => Str

=item PrincipalType => Str

=item TargetId => Str

=item TargetType => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::DeleteAccountAssignment>

Returns: a L<Paws::SSOAdmin::DeleteAccountAssignmentResponse> instance

Deletes a principal's access from a specified AWS account using a
specified permission set.


=head2 DeleteInlinePolicyFromPermissionSet

=over

=item InstanceArn => Str

=item PermissionSetArn => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::DeleteInlinePolicyFromPermissionSet>

Returns: a L<Paws::SSOAdmin::DeleteInlinePolicyFromPermissionSetResponse> instance

Deletes the inline policy from a specified permission set.


=head2 DeleteInstanceAccessControlAttributeConfiguration

=over

=item InstanceArn => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::DeleteInstanceAccessControlAttributeConfiguration>

Returns: a L<Paws::SSOAdmin::DeleteInstanceAccessControlAttributeConfigurationResponse> instance

Disables the attributes-based access control (ABAC) feature for the
specified AWS SSO instance and deletes all of the attribute mappings
that have been configured. Once deleted, any attributes that are
received from an identity source and any custom attributes you have
previously configured will not be passed. For more information about
ABAC, see Attribute-Based Access Control in the I<AWS SSO User Guide>.


=head2 DeletePermissionSet

=over

=item InstanceArn => Str

=item PermissionSetArn => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::DeletePermissionSet>

Returns: a L<Paws::SSOAdmin::DeletePermissionSetResponse> instance

Deletes the specified permission set.


=head2 DescribeAccountAssignmentCreationStatus

=over

=item AccountAssignmentCreationRequestId => Str

=item InstanceArn => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::DescribeAccountAssignmentCreationStatus>

Returns: a L<Paws::SSOAdmin::DescribeAccountAssignmentCreationStatusResponse> instance

Describes the status of the assignment creation request.


=head2 DescribeAccountAssignmentDeletionStatus

=over

=item AccountAssignmentDeletionRequestId => Str

=item InstanceArn => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::DescribeAccountAssignmentDeletionStatus>

Returns: a L<Paws::SSOAdmin::DescribeAccountAssignmentDeletionStatusResponse> instance

Describes the status of the assignment deletion request.


=head2 DescribeInstanceAccessControlAttributeConfiguration

=over

=item InstanceArn => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::DescribeInstanceAccessControlAttributeConfiguration>

Returns: a L<Paws::SSOAdmin::DescribeInstanceAccessControlAttributeConfigurationResponse> instance

Returns the list of AWS SSO identity store attributes that have been
configured to work with attributes-based access control (ABAC) for the
specified AWS SSO instance. This will not return attributes configured
and sent by an external identity provider. For more information about
ABAC, see Attribute-Based Access Control in the I<AWS SSO User Guide>.


=head2 DescribePermissionSet

=over

=item InstanceArn => Str

=item PermissionSetArn => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::DescribePermissionSet>

Returns: a L<Paws::SSOAdmin::DescribePermissionSetResponse> instance

Gets the details of the permission set.


=head2 DescribePermissionSetProvisioningStatus

=over

=item InstanceArn => Str

=item ProvisionPermissionSetRequestId => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::DescribePermissionSetProvisioningStatus>

Returns: a L<Paws::SSOAdmin::DescribePermissionSetProvisioningStatusResponse> instance

Describes the status for the given permission set provisioning request.


=head2 DetachManagedPolicyFromPermissionSet

=over

=item InstanceArn => Str

=item ManagedPolicyArn => Str

=item PermissionSetArn => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::DetachManagedPolicyFromPermissionSet>

Returns: a L<Paws::SSOAdmin::DetachManagedPolicyFromPermissionSetResponse> instance

Detaches the attached IAM managed policy ARN from the specified
permission set.


=head2 GetInlinePolicyForPermissionSet

=over

=item InstanceArn => Str

=item PermissionSetArn => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::GetInlinePolicyForPermissionSet>

Returns: a L<Paws::SSOAdmin::GetInlinePolicyForPermissionSetResponse> instance

Obtains the inline policy assigned to the permission set.


=head2 ListAccountAssignmentCreationStatus

=over

=item InstanceArn => Str

=item [Filter => L<Paws::SSOAdmin::OperationStatusFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SSOAdmin::ListAccountAssignmentCreationStatus>

Returns: a L<Paws::SSOAdmin::ListAccountAssignmentCreationStatusResponse> instance

Lists the status of the AWS account assignment creation requests for a
specified SSO instance.


=head2 ListAccountAssignmentDeletionStatus

=over

=item InstanceArn => Str

=item [Filter => L<Paws::SSOAdmin::OperationStatusFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SSOAdmin::ListAccountAssignmentDeletionStatus>

Returns: a L<Paws::SSOAdmin::ListAccountAssignmentDeletionStatusResponse> instance

Lists the status of the AWS account assignment deletion requests for a
specified SSO instance.


=head2 ListAccountAssignments

=over

=item AccountId => Str

=item InstanceArn => Str

=item PermissionSetArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SSOAdmin::ListAccountAssignments>

Returns: a L<Paws::SSOAdmin::ListAccountAssignmentsResponse> instance

Lists the assignee of the specified AWS account with the specified
permission set.


=head2 ListAccountsForProvisionedPermissionSet

=over

=item InstanceArn => Str

=item PermissionSetArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ProvisioningStatus => Str]


=back

Each argument is described in detail in: L<Paws::SSOAdmin::ListAccountsForProvisionedPermissionSet>

Returns: a L<Paws::SSOAdmin::ListAccountsForProvisionedPermissionSetResponse> instance

Lists all the AWS accounts where the specified permission set is
provisioned.


=head2 ListInstances

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SSOAdmin::ListInstances>

Returns: a L<Paws::SSOAdmin::ListInstancesResponse> instance

Lists the SSO instances that the caller has access to.


=head2 ListManagedPoliciesInPermissionSet

=over

=item InstanceArn => Str

=item PermissionSetArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SSOAdmin::ListManagedPoliciesInPermissionSet>

Returns: a L<Paws::SSOAdmin::ListManagedPoliciesInPermissionSetResponse> instance

Lists the IAM managed policy that is attached to a specified permission
set.


=head2 ListPermissionSetProvisioningStatus

=over

=item InstanceArn => Str

=item [Filter => L<Paws::SSOAdmin::OperationStatusFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SSOAdmin::ListPermissionSetProvisioningStatus>

Returns: a L<Paws::SSOAdmin::ListPermissionSetProvisioningStatusResponse> instance

Lists the status of the permission set provisioning requests for a
specified SSO instance.


=head2 ListPermissionSets

=over

=item InstanceArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SSOAdmin::ListPermissionSets>

Returns: a L<Paws::SSOAdmin::ListPermissionSetsResponse> instance

Lists the PermissionSets in an SSO instance.


=head2 ListPermissionSetsProvisionedToAccount

=over

=item AccountId => Str

=item InstanceArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ProvisioningStatus => Str]


=back

Each argument is described in detail in: L<Paws::SSOAdmin::ListPermissionSetsProvisionedToAccount>

Returns: a L<Paws::SSOAdmin::ListPermissionSetsProvisionedToAccountResponse> instance

Lists all the permission sets that are provisioned to a specified AWS
account.


=head2 ListTagsForResource

=over

=item InstanceArn => Str

=item ResourceArn => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SSOAdmin::ListTagsForResource>

Returns: a L<Paws::SSOAdmin::ListTagsForResourceResponse> instance

Lists the tags that are attached to a specified resource.


=head2 ProvisionPermissionSet

=over

=item InstanceArn => Str

=item PermissionSetArn => Str

=item TargetType => Str

=item [TargetId => Str]


=back

Each argument is described in detail in: L<Paws::SSOAdmin::ProvisionPermissionSet>

Returns: a L<Paws::SSOAdmin::ProvisionPermissionSetResponse> instance

The process by which a specified permission set is provisioned to the
specified target.


=head2 PutInlinePolicyToPermissionSet

=over

=item InlinePolicy => Str

=item InstanceArn => Str

=item PermissionSetArn => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::PutInlinePolicyToPermissionSet>

Returns: a L<Paws::SSOAdmin::PutInlinePolicyToPermissionSetResponse> instance

Attaches an IAM inline policy to a permission set.

If the permission set is already referenced by one or more account
assignments, you will need to call C< ProvisionPermissionSet > after
this action to apply the corresponding IAM policy updates to all
assigned accounts.


=head2 TagResource

=over

=item InstanceArn => Str

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::SSOAdmin::Tag>]


=back

Each argument is described in detail in: L<Paws::SSOAdmin::TagResource>

Returns: a L<Paws::SSOAdmin::TagResourceResponse> instance

Associates a set of tags with a specified resource.


=head2 UntagResource

=over

=item InstanceArn => Str

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::SSOAdmin::UntagResource>

Returns: a L<Paws::SSOAdmin::UntagResourceResponse> instance

Disassociates a set of tags from a specified resource.


=head2 UpdateInstanceAccessControlAttributeConfiguration

=over

=item InstanceAccessControlAttributeConfiguration => L<Paws::SSOAdmin::InstanceAccessControlAttributeConfiguration>

=item InstanceArn => Str


=back

Each argument is described in detail in: L<Paws::SSOAdmin::UpdateInstanceAccessControlAttributeConfiguration>

Returns: a L<Paws::SSOAdmin::UpdateInstanceAccessControlAttributeConfigurationResponse> instance

Updates the AWS SSO identity store attributes to use with the AWS SSO
instance for attributes-based access control (ABAC). When using an
external identity provider as an identity source, you can pass
attributes through the SAML assertion as an alternative to configuring
attributes from the AWS SSO identity store. If a SAML assertion passes
any of these attributes, AWS SSO will replace the attribute value with
the value from the AWS SSO identity store. For more information about
ABAC, see Attribute-Based Access Control in the I<AWS SSO User Guide>.


=head2 UpdatePermissionSet

=over

=item InstanceArn => Str

=item PermissionSetArn => Str

=item [Description => Str]

=item [RelayState => Str]

=item [SessionDuration => Str]


=back

Each argument is described in detail in: L<Paws::SSOAdmin::UpdatePermissionSet>

Returns: a L<Paws::SSOAdmin::UpdatePermissionSetResponse> instance

Updates an existing permission set.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAccountAssignmentCreationStatus(sub { },InstanceArn => Str, [Filter => L<Paws::SSOAdmin::OperationStatusFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllAccountAssignmentCreationStatus(InstanceArn => Str, [Filter => L<Paws::SSOAdmin::OperationStatusFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AccountAssignmentsCreationStatus, passing the object as the first parameter, and the string 'AccountAssignmentsCreationStatus' as the second parameter 

If not, it will return a a L<Paws::SSOAdmin::ListAccountAssignmentCreationStatusResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAccountAssignmentDeletionStatus(sub { },InstanceArn => Str, [Filter => L<Paws::SSOAdmin::OperationStatusFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllAccountAssignmentDeletionStatus(InstanceArn => Str, [Filter => L<Paws::SSOAdmin::OperationStatusFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AccountAssignmentsDeletionStatus, passing the object as the first parameter, and the string 'AccountAssignmentsDeletionStatus' as the second parameter 

If not, it will return a a L<Paws::SSOAdmin::ListAccountAssignmentDeletionStatusResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAccountAssignments(sub { },AccountId => Str, InstanceArn => Str, PermissionSetArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllAccountAssignments(AccountId => Str, InstanceArn => Str, PermissionSetArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AccountAssignments, passing the object as the first parameter, and the string 'AccountAssignments' as the second parameter 

If not, it will return a a L<Paws::SSOAdmin::ListAccountAssignmentsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAccountsForProvisionedPermissionSet(sub { },InstanceArn => Str, PermissionSetArn => Str, [MaxResults => Int, NextToken => Str, ProvisioningStatus => Str])

=head2 ListAllAccountsForProvisionedPermissionSet(InstanceArn => Str, PermissionSetArn => Str, [MaxResults => Int, NextToken => Str, ProvisioningStatus => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AccountIds, passing the object as the first parameter, and the string 'AccountIds' as the second parameter 

If not, it will return a a L<Paws::SSOAdmin::ListAccountsForProvisionedPermissionSetResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllInstances(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllInstances([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Instances, passing the object as the first parameter, and the string 'Instances' as the second parameter 

If not, it will return a a L<Paws::SSOAdmin::ListInstancesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllManagedPoliciesInPermissionSet(sub { },InstanceArn => Str, PermissionSetArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllManagedPoliciesInPermissionSet(InstanceArn => Str, PermissionSetArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AttachedManagedPolicies, passing the object as the first parameter, and the string 'AttachedManagedPolicies' as the second parameter 

If not, it will return a a L<Paws::SSOAdmin::ListManagedPoliciesInPermissionSetResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPermissionSetProvisioningStatus(sub { },InstanceArn => Str, [Filter => L<Paws::SSOAdmin::OperationStatusFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllPermissionSetProvisioningStatus(InstanceArn => Str, [Filter => L<Paws::SSOAdmin::OperationStatusFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PermissionSetsProvisioningStatus, passing the object as the first parameter, and the string 'PermissionSetsProvisioningStatus' as the second parameter 

If not, it will return a a L<Paws::SSOAdmin::ListPermissionSetProvisioningStatusResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPermissionSets(sub { },InstanceArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllPermissionSets(InstanceArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PermissionSets, passing the object as the first parameter, and the string 'PermissionSets' as the second parameter 

If not, it will return a a L<Paws::SSOAdmin::ListPermissionSetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPermissionSetsProvisionedToAccount(sub { },AccountId => Str, InstanceArn => Str, [MaxResults => Int, NextToken => Str, ProvisioningStatus => Str])

=head2 ListAllPermissionSetsProvisionedToAccount(AccountId => Str, InstanceArn => Str, [MaxResults => Int, NextToken => Str, ProvisioningStatus => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PermissionSets, passing the object as the first parameter, and the string 'PermissionSets' as the second parameter 

If not, it will return a a L<Paws::SSOAdmin::ListPermissionSetsProvisionedToAccountResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTagsForResource(sub { },InstanceArn => Str, ResourceArn => Str, [NextToken => Str])

=head2 ListAllTagsForResource(InstanceArn => Str, ResourceArn => Str, [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Tags, passing the object as the first parameter, and the string 'Tags' as the second parameter 

If not, it will return a a L<Paws::SSOAdmin::ListTagsForResourceResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

