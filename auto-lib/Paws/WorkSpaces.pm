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

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';

  
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
  sub DeleteTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DeleteTags', @_);
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
  sub ModifyWorkspaceProperties {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::ModifyWorkspaceProperties', @_);
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
  
  sub DescribeAllWorkspaceBundles {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeWorkspaceBundles(@_);

    if (not defined $callback) {
      while ($result->NextToken) {
        $result = $self->DescribeWorkspaceBundles(@_, NextToken => $result->NextToken);
        push @{ $result->Bundles }, @{ $result->Bundles };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $result = $self->DescribeWorkspaceBundles(@_, NextToken => $result->NextToken);
        $callback->($_ => 'Bundles') foreach (@{ $result->Bundles });
      }
    }

    return undef
  }
  sub DescribeAllWorkspaceDirectories {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeWorkspaceDirectories(@_);

    if (not defined $callback) {
      while ($result->NextToken) {
        $result = $self->DescribeWorkspaceDirectories(@_, NextToken => $result->NextToken);
        push @{ $result->Directories }, @{ $result->Directories };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $result = $self->DescribeWorkspaceDirectories(@_, NextToken => $result->NextToken);
        $callback->($_ => 'Directories') foreach (@{ $result->Directories });
      }
    }

    return undef
  }
  sub DescribeAllWorkspaces {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeWorkspaces(@_);

    if (not defined $callback) {
      while ($result->NextToken) {
        $result = $self->DescribeWorkspaces(@_, NextToken => $result->NextToken);
        push @{ $result->Workspaces }, @{ $result->Workspaces };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $result = $self->DescribeWorkspaces(@_, NextToken => $result->NextToken);
        $callback->($_ => 'Workspaces') foreach (@{ $result->Workspaces });
      }
    }

    return undef
  }


  sub operations { qw/CreateTags CreateWorkspaces DeleteTags DescribeTags DescribeWorkspaceBundles DescribeWorkspaceDirectories DescribeWorkspaces DescribeWorkspacesConnectionStatus ModifyWorkspaceProperties RebootWorkspaces RebuildWorkspaces StartWorkspaces StopWorkspaces TerminateWorkspaces / }

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

This reference provides detailed information about the Amazon
WorkSpaces operations.

=head1 METHODS

=head2 CreateTags(ResourceId => Str, Tags => ArrayRef[L<Paws::WorkSpaces::Tag>])

Each argument is described in detail in: L<Paws::WorkSpaces::CreateTags>

Returns: a L<Paws::WorkSpaces::CreateTagsResult> instance

  Creates tags for a WorkSpace.


=head2 CreateWorkspaces(Workspaces => ArrayRef[L<Paws::WorkSpaces::WorkspaceRequest>])

Each argument is described in detail in: L<Paws::WorkSpaces::CreateWorkspaces>

Returns: a L<Paws::WorkSpaces::CreateWorkspacesResult> instance

  Creates one or more WorkSpaces.

This operation is asynchronous and returns before the WorkSpaces are
created.


=head2 DeleteTags(ResourceId => Str, TagKeys => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::WorkSpaces::DeleteTags>

Returns: a L<Paws::WorkSpaces::DeleteTagsResult> instance

  Deletes tags from a WorkSpace.


=head2 DescribeTags(ResourceId => Str)

Each argument is described in detail in: L<Paws::WorkSpaces::DescribeTags>

Returns: a L<Paws::WorkSpaces::DescribeTagsResult> instance

  Describes tags for a WorkSpace.


=head2 DescribeWorkspaceBundles([BundleIds => ArrayRef[Str|Undef], NextToken => Str, Owner => Str])

Each argument is described in detail in: L<Paws::WorkSpaces::DescribeWorkspaceBundles>

Returns: a L<Paws::WorkSpaces::DescribeWorkspaceBundlesResult> instance

  Obtains information about the WorkSpace bundles that are available to
your account in the specified region.

You can filter the results with either the C<BundleIds> parameter, or
the C<Owner> parameter, but not both.

This operation supports pagination with the use of the C<NextToken>
request and response parameters. If more results are available, the
C<NextToken> response member contains a token that you pass in the next
call to this operation to retrieve the next set of items.


=head2 DescribeWorkspaceDirectories([DirectoryIds => ArrayRef[Str|Undef], NextToken => Str])

Each argument is described in detail in: L<Paws::WorkSpaces::DescribeWorkspaceDirectories>

Returns: a L<Paws::WorkSpaces::DescribeWorkspaceDirectoriesResult> instance

  Retrieves information about the AWS Directory Service directories in
the region that are registered with Amazon WorkSpaces and are available
to your account.

This operation supports pagination with the use of the C<NextToken>
request and response parameters. If more results are available, the
C<NextToken> response member contains a token that you pass in the next
call to this operation to retrieve the next set of items.


=head2 DescribeWorkspaces([BundleId => Str, DirectoryId => Str, Limit => Int, NextToken => Str, UserName => Str, WorkspaceIds => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::WorkSpaces::DescribeWorkspaces>

Returns: a L<Paws::WorkSpaces::DescribeWorkspacesResult> instance

  Obtains information about the specified WorkSpaces.

Only one of the filter parameters, such as C<BundleId>, C<DirectoryId>,
or C<WorkspaceIds>, can be specified at a time.

This operation supports pagination with the use of the C<NextToken>
request and response parameters. If more results are available, the
C<NextToken> response member contains a token that you pass in the next
call to this operation to retrieve the next set of items.


=head2 DescribeWorkspacesConnectionStatus([NextToken => Str, WorkspaceIds => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::WorkSpaces::DescribeWorkspacesConnectionStatus>

Returns: a L<Paws::WorkSpaces::DescribeWorkspacesConnectionStatusResult> instance

  Describes the connection status of a specified WorkSpace.


=head2 ModifyWorkspaceProperties(WorkspaceId => Str, WorkspaceProperties => L<Paws::WorkSpaces::WorkspaceProperties>)

Each argument is described in detail in: L<Paws::WorkSpaces::ModifyWorkspaceProperties>

Returns: a L<Paws::WorkSpaces::ModifyWorkspacePropertiesResult> instance

  Modifies the WorkSpace properties, including the running mode and
AutoStop time.


=head2 RebootWorkspaces(RebootWorkspaceRequests => ArrayRef[L<Paws::WorkSpaces::RebootRequest>])

Each argument is described in detail in: L<Paws::WorkSpaces::RebootWorkspaces>

Returns: a L<Paws::WorkSpaces::RebootWorkspacesResult> instance

  Reboots the specified WorkSpaces.

To be able to reboot a WorkSpace, the WorkSpace must have a B<State> of
C<AVAILABLE>, C<IMPAIRED>, or C<INOPERABLE>.

This operation is asynchronous and returns before the WorkSpaces have
rebooted.


=head2 RebuildWorkspaces(RebuildWorkspaceRequests => ArrayRef[L<Paws::WorkSpaces::RebuildRequest>])

Each argument is described in detail in: L<Paws::WorkSpaces::RebuildWorkspaces>

Returns: a L<Paws::WorkSpaces::RebuildWorkspacesResult> instance

  Rebuilds the specified WorkSpaces.

Rebuilding a WorkSpace is a potentially destructive action that can
result in the loss of data. Rebuilding a WorkSpace causes the following
to occur:

=over

=item *

The system is restored to the image of the bundle that the WorkSpace is
created from. Any applications that have been installed, or system
settings that have been made since the WorkSpace was created will be
lost.

=item *

The data drive (D drive) is re-created from the last automatic snapshot
taken of the data drive. The current contents of the data drive are
overwritten. Automatic snapshots of the data drive are taken every 12
hours, so the snapshot can be as much as 12 hours old.

=back

To be able to rebuild a WorkSpace, the WorkSpace must have a B<State>
of C<AVAILABLE> or C<ERROR>.

This operation is asynchronous and returns before the WorkSpaces have
been completely rebuilt.


=head2 StartWorkspaces(StartWorkspaceRequests => ArrayRef[L<Paws::WorkSpaces::StartRequest>])

Each argument is described in detail in: L<Paws::WorkSpaces::StartWorkspaces>

Returns: a L<Paws::WorkSpaces::StartWorkspacesResult> instance

  Starts the specified WorkSpaces. The WorkSpaces must have a running
mode of AutoStop and a state of STOPPED.


=head2 StopWorkspaces(StopWorkspaceRequests => ArrayRef[L<Paws::WorkSpaces::StopRequest>])

Each argument is described in detail in: L<Paws::WorkSpaces::StopWorkspaces>

Returns: a L<Paws::WorkSpaces::StopWorkspacesResult> instance

  Stops the specified WorkSpaces. The WorkSpaces must have a running mode
of AutoStop and a state of AVAILABLE, IMPAIRED, UNHEALTHY, or ERROR.


=head2 TerminateWorkspaces(TerminateWorkspaceRequests => ArrayRef[L<Paws::WorkSpaces::TerminateRequest>])

Each argument is described in detail in: L<Paws::WorkSpaces::TerminateWorkspaces>

Returns: a L<Paws::WorkSpaces::TerminateWorkspacesResult> instance

  Terminates the specified WorkSpaces.

Terminating a WorkSpace is a permanent action and cannot be undone. The
user's data is not maintained and will be destroyed. If you need to
archive any user data, contact Amazon Web Services before terminating
the WorkSpace.

You can terminate a WorkSpace that is in any state except C<SUSPENDED>.

This operation is asynchronous and returns before the WorkSpaces have
been completely terminated.




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

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

