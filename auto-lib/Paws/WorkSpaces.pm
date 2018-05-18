package Paws::WorkSpaces;
  use Moose;
  sub service { 'workspaces' }
  sub version { '2015-04-08' }
  sub target_prefix { 'WorkspacesService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AssociateIpGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::AssociateIpGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AuthorizeIpRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::AuthorizeIpRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateIpGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::CreateIpGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::CreateTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWorkspaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::CreateWorkspaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIpGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DeleteIpGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DeleteTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeIpGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DescribeIpGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DescribeTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeWorkspaceBundles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DescribeWorkspaceBundles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeWorkspaceDirectories {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DescribeWorkspaceDirectories', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeWorkspaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DescribeWorkspaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeWorkspacesConnectionStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DescribeWorkspacesConnectionStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateIpGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DisassociateIpGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyWorkspaceProperties {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::ModifyWorkspaceProperties', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyWorkspaceState {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::ModifyWorkspaceState', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RebootWorkspaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::RebootWorkspaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RebuildWorkspaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::RebuildWorkspaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RevokeIpRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::RevokeIpRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartWorkspaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::StartWorkspaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopWorkspaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::StopWorkspaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TerminateWorkspaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::TerminateWorkspaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRulesOfIpGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::UpdateRulesOfIpGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllWorkspaceBundles {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeWorkspaceBundles(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeWorkspaceBundles(@_, NextToken => $next_result->NextToken);
        push @{ $result->Bundles }, @{ $next_result->Bundles };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Bundles') foreach (@{ $result->Bundles });
        $result = $self->DescribeWorkspaceBundles(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Bundles') foreach (@{ $result->Bundles });
    }

    return undef
  }
  sub DescribeAllWorkspaceDirectories {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeWorkspaceDirectories(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeWorkspaceDirectories(@_, NextToken => $next_result->NextToken);
        push @{ $result->Directories }, @{ $next_result->Directories };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Directories') foreach (@{ $result->Directories });
        $result = $self->DescribeWorkspaceDirectories(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Directories') foreach (@{ $result->Directories });
    }

    return undef
  }
  sub DescribeAllWorkspaces {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeWorkspaces(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeWorkspaces(@_, NextToken => $next_result->NextToken);
        push @{ $result->Workspaces }, @{ $next_result->Workspaces };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Workspaces') foreach (@{ $result->Workspaces });
        $result = $self->DescribeWorkspaces(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Workspaces') foreach (@{ $result->Workspaces });
    }

    return undef
  }


  sub operations { qw/AssociateIpGroups AuthorizeIpRules CreateIpGroup CreateTags CreateWorkspaces DeleteIpGroup DeleteTags DescribeIpGroups DescribeTags DescribeWorkspaceBundles DescribeWorkspaceDirectories DescribeWorkspaces DescribeWorkspacesConnectionStatus DisassociateIpGroups ModifyWorkspaceProperties ModifyWorkspaceState RebootWorkspaces RebuildWorkspaces RevokeIpRules StartWorkspaces StopWorkspaces TerminateWorkspaces UpdateRulesOfIpGroup / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces - Perl Interface to AWS Amazon WorkSpaces

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('WorkSpaces');
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

Amazon WorkSpaces Service

Amazon WorkSpaces enables you to provision virtual, cloud-based
Microsoft Windows desktops for your users.

=head1 METHODS

=head2 AssociateIpGroups(DirectoryId => Str, GroupIds => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::WorkSpaces::AssociateIpGroups>

Returns: a L<Paws::WorkSpaces::AssociateIpGroupsResult> instance

Associates the specified IP access control group with the specified
directory.


=head2 AuthorizeIpRules(GroupId => Str, UserRules => ArrayRef[L<Paws::WorkSpaces::IpRuleItem>])

Each argument is described in detail in: L<Paws::WorkSpaces::AuthorizeIpRules>

Returns: a L<Paws::WorkSpaces::AuthorizeIpRulesResult> instance

Adds one or more rules to the specified IP access control group.

This action gives users permission to access their WorkSpaces from the
CIDR address ranges specified in the rules.


=head2 CreateIpGroup(GroupName => Str, [GroupDesc => Str, UserRules => ArrayRef[L<Paws::WorkSpaces::IpRuleItem>]])

Each argument is described in detail in: L<Paws::WorkSpaces::CreateIpGroup>

Returns: a L<Paws::WorkSpaces::CreateIpGroupResult> instance

Creates an IP access control group.

An IP access control group provides you with the ability to control the
IP addresses from which users are allowed to access their WorkSpaces.
To specify the CIDR address ranges, add rules to your IP access control
group and then associate the group with your directory. You can add
rules when you create the group or at any time using AuthorizeIpRules.

There is a default IP access control group associated with your
directory. If you don't associate an IP access control group with your
directory, the default group is used. The default group includes a
default rule that allows users to access their WorkSpaces from
anywhere. You cannot modify the default IP access control group for
your directory.


=head2 CreateTags(ResourceId => Str, Tags => ArrayRef[L<Paws::WorkSpaces::Tag>])

Each argument is described in detail in: L<Paws::WorkSpaces::CreateTags>

Returns: a L<Paws::WorkSpaces::CreateTagsResult> instance

Creates the specified tags for the specified WorkSpace.


=head2 CreateWorkspaces(Workspaces => ArrayRef[L<Paws::WorkSpaces::WorkspaceRequest>])

Each argument is described in detail in: L<Paws::WorkSpaces::CreateWorkspaces>

Returns: a L<Paws::WorkSpaces::CreateWorkspacesResult> instance

Creates one or more WorkSpaces.

This operation is asynchronous and returns before the WorkSpaces are
created.


=head2 DeleteIpGroup(GroupId => Str)

Each argument is described in detail in: L<Paws::WorkSpaces::DeleteIpGroup>

Returns: a L<Paws::WorkSpaces::DeleteIpGroupResult> instance

Deletes the specified IP access control group.

You cannot delete an IP access control group that is associated with a
directory.


=head2 DeleteTags(ResourceId => Str, TagKeys => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::WorkSpaces::DeleteTags>

Returns: a L<Paws::WorkSpaces::DeleteTagsResult> instance

Deletes the specified tags from the specified WorkSpace.


=head2 DescribeIpGroups([GroupIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::WorkSpaces::DescribeIpGroups>

Returns: a L<Paws::WorkSpaces::DescribeIpGroupsResult> instance

Describes one or more of your IP access control groups.


=head2 DescribeTags(ResourceId => Str)

Each argument is described in detail in: L<Paws::WorkSpaces::DescribeTags>

Returns: a L<Paws::WorkSpaces::DescribeTagsResult> instance

Describes the specified tags for the specified WorkSpace.


=head2 DescribeWorkspaceBundles([BundleIds => ArrayRef[Str|Undef], NextToken => Str, Owner => Str])

Each argument is described in detail in: L<Paws::WorkSpaces::DescribeWorkspaceBundles>

Returns: a L<Paws::WorkSpaces::DescribeWorkspaceBundlesResult> instance

Describes the available WorkSpace bundles.

You can filter the results using either bundle ID or owner, but not
both.


=head2 DescribeWorkspaceDirectories([DirectoryIds => ArrayRef[Str|Undef], NextToken => Str])

Each argument is described in detail in: L<Paws::WorkSpaces::DescribeWorkspaceDirectories>

Returns: a L<Paws::WorkSpaces::DescribeWorkspaceDirectoriesResult> instance

Describes the available AWS Directory Service directories that are
registered with Amazon WorkSpaces.


=head2 DescribeWorkspaces([BundleId => Str, DirectoryId => Str, Limit => Int, NextToken => Str, UserName => Str, WorkspaceIds => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::WorkSpaces::DescribeWorkspaces>

Returns: a L<Paws::WorkSpaces::DescribeWorkspacesResult> instance

Describes the specified WorkSpaces.

You can filter the results using bundle ID, directory ID, or owner, but
you can specify only one filter at a time.


=head2 DescribeWorkspacesConnectionStatus([NextToken => Str, WorkspaceIds => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::WorkSpaces::DescribeWorkspacesConnectionStatus>

Returns: a L<Paws::WorkSpaces::DescribeWorkspacesConnectionStatusResult> instance

Describes the connection status of the specified WorkSpaces.


=head2 DisassociateIpGroups(DirectoryId => Str, GroupIds => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::WorkSpaces::DisassociateIpGroups>

Returns: a L<Paws::WorkSpaces::DisassociateIpGroupsResult> instance

Disassociates the specified IP access control group from the specified
directory.


=head2 ModifyWorkspaceProperties(WorkspaceId => Str, WorkspaceProperties => L<Paws::WorkSpaces::WorkspaceProperties>)

Each argument is described in detail in: L<Paws::WorkSpaces::ModifyWorkspaceProperties>

Returns: a L<Paws::WorkSpaces::ModifyWorkspacePropertiesResult> instance

Modifies the specified WorkSpace properties.


=head2 ModifyWorkspaceState(WorkspaceId => Str, WorkspaceState => Str)

Each argument is described in detail in: L<Paws::WorkSpaces::ModifyWorkspaceState>

Returns: a L<Paws::WorkSpaces::ModifyWorkspaceStateResult> instance

Sets the state of the specified WorkSpace.

To maintain a WorkSpace without being interrupted, set the WorkSpace
state to C<ADMIN_MAINTENANCE>. WorkSpaces in this state do not respond
to requests to reboot, stop, start, or rebuild. An AutoStop WorkSpace
in this state is not stopped. Users can log into a WorkSpace in the
C<ADMIN_MAINTENANCE> state.


=head2 RebootWorkspaces(RebootWorkspaceRequests => ArrayRef[L<Paws::WorkSpaces::RebootRequest>])

Each argument is described in detail in: L<Paws::WorkSpaces::RebootWorkspaces>

Returns: a L<Paws::WorkSpaces::RebootWorkspacesResult> instance

Reboots the specified WorkSpaces.

You cannot reboot a WorkSpace unless its state is C<AVAILABLE> or
C<UNHEALTHY>.

This operation is asynchronous and returns before the WorkSpaces have
rebooted.


=head2 RebuildWorkspaces(RebuildWorkspaceRequests => ArrayRef[L<Paws::WorkSpaces::RebuildRequest>])

Each argument is described in detail in: L<Paws::WorkSpaces::RebuildWorkspaces>

Returns: a L<Paws::WorkSpaces::RebuildWorkspacesResult> instance

Rebuilds the specified WorkSpace.

You cannot rebuild a WorkSpace unless its state is C<AVAILABLE>,
C<ERROR>, or C<UNHEALTHY>.

Rebuilding a WorkSpace is a potentially destructive action that can
result in the loss of data. For more information, see Rebuild a
WorkSpace
(http://docs.aws.amazon.com/workspaces/latest/adminguide/reset-workspace.html).

This operation is asynchronous and returns before the WorkSpaces have
been completely rebuilt.


=head2 RevokeIpRules(GroupId => Str, UserRules => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::WorkSpaces::RevokeIpRules>

Returns: a L<Paws::WorkSpaces::RevokeIpRulesResult> instance

Removes one or more rules from the specified IP access control group.


=head2 StartWorkspaces(StartWorkspaceRequests => ArrayRef[L<Paws::WorkSpaces::StartRequest>])

Each argument is described in detail in: L<Paws::WorkSpaces::StartWorkspaces>

Returns: a L<Paws::WorkSpaces::StartWorkspacesResult> instance

Starts the specified WorkSpaces.

You cannot start a WorkSpace unless it has a running mode of
C<AutoStop> and a state of C<STOPPED>.


=head2 StopWorkspaces(StopWorkspaceRequests => ArrayRef[L<Paws::WorkSpaces::StopRequest>])

Each argument is described in detail in: L<Paws::WorkSpaces::StopWorkspaces>

Returns: a L<Paws::WorkSpaces::StopWorkspacesResult> instance

Stops the specified WorkSpaces.

You cannot stop a WorkSpace unless it has a running mode of C<AutoStop>
and a state of C<AVAILABLE>, C<IMPAIRED>, C<UNHEALTHY>, or C<ERROR>.


=head2 TerminateWorkspaces(TerminateWorkspaceRequests => ArrayRef[L<Paws::WorkSpaces::TerminateRequest>])

Each argument is described in detail in: L<Paws::WorkSpaces::TerminateWorkspaces>

Returns: a L<Paws::WorkSpaces::TerminateWorkspacesResult> instance

Terminates the specified WorkSpaces.

Terminating a WorkSpace is a permanent action and cannot be undone. The
user's data is destroyed. If you need to archive any user data, contact
Amazon Web Services before terminating the WorkSpace.

You can terminate a WorkSpace that is in any state except C<SUSPENDED>.

This operation is asynchronous and returns before the WorkSpaces have
been completely terminated.


=head2 UpdateRulesOfIpGroup(GroupId => Str, UserRules => ArrayRef[L<Paws::WorkSpaces::IpRuleItem>])

Each argument is described in detail in: L<Paws::WorkSpaces::UpdateRulesOfIpGroup>

Returns: a L<Paws::WorkSpaces::UpdateRulesOfIpGroupResult> instance

Replaces the current rules of the specified IP access control group
with the specified rules.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllWorkspaceBundles(sub { },[BundleIds => ArrayRef[Str|Undef], NextToken => Str, Owner => Str])

=head2 DescribeAllWorkspaceBundles([BundleIds => ArrayRef[Str|Undef], NextToken => Str, Owner => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Bundles, passing the object as the first parameter, and the string 'Bundles' as the second parameter 

If not, it will return a a L<Paws::WorkSpaces::DescribeWorkspaceBundlesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllWorkspaceDirectories(sub { },[DirectoryIds => ArrayRef[Str|Undef], NextToken => Str])

=head2 DescribeAllWorkspaceDirectories([DirectoryIds => ArrayRef[Str|Undef], NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Directories, passing the object as the first parameter, and the string 'Directories' as the second parameter 

If not, it will return a a L<Paws::WorkSpaces::DescribeWorkspaceDirectoriesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllWorkspaces(sub { },[BundleId => Str, DirectoryId => Str, Limit => Int, NextToken => Str, UserName => Str, WorkspaceIds => ArrayRef[Str|Undef]])

=head2 DescribeAllWorkspaces([BundleId => Str, DirectoryId => Str, Limit => Int, NextToken => Str, UserName => Str, WorkspaceIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Workspaces, passing the object as the first parameter, and the string 'Workspaces' as the second parameter 

If not, it will return a a L<Paws::WorkSpaces::DescribeWorkspacesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

