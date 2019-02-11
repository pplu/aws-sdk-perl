package Paws::WorkSpaces;
  use Moose;
  sub service { 'workspaces' }
  sub signing_name { 'workspaces' }
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
  sub DeleteWorkspaceImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DeleteWorkspaceImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DescribeAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAccountModifications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DescribeAccountModifications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeClientProperties {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DescribeClientProperties', @_);
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
  sub DescribeWorkspaceImages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::DescribeWorkspaceImages', @_);
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
  sub ImportWorkspaceImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::ImportWorkspaceImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAvailableManagementCidrRanges {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::ListAvailableManagementCidrRanges', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::ModifyAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyClientProperties {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkSpaces::ModifyClientProperties', @_);
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
  
  sub DescribeAllAccountModifications {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeAccountModifications(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeAccountModifications(@_, NextToken => $next_result->NextToken);
        push @{ $result->AccountModifications }, @{ $next_result->AccountModifications };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AccountModifications') foreach (@{ $result->AccountModifications });
        $result = $self->DescribeAccountModifications(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AccountModifications') foreach (@{ $result->AccountModifications });
    }

    return undef
  }
  sub DescribeAllIpGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeIpGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeIpGroups(@_, NextToken => $next_result->NextToken);
        push @{ $result->Result }, @{ $next_result->Result };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Result') foreach (@{ $result->Result });
        $result = $self->DescribeIpGroups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Result') foreach (@{ $result->Result });
    }

    return undef
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
  sub DescribeAllWorkspaceImages {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeWorkspaceImages(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeWorkspaceImages(@_, NextToken => $next_result->NextToken);
        push @{ $result->Images }, @{ $next_result->Images };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Images') foreach (@{ $result->Images });
        $result = $self->DescribeWorkspaceImages(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Images') foreach (@{ $result->Images });
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
  sub DescribeAllWorkspacesConnectionStatus {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeWorkspacesConnectionStatus(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeWorkspacesConnectionStatus(@_, NextToken => $next_result->NextToken);
        push @{ $result->WorkspacesConnectionStatus }, @{ $next_result->WorkspacesConnectionStatus };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'WorkspacesConnectionStatus') foreach (@{ $result->WorkspacesConnectionStatus });
        $result = $self->DescribeWorkspacesConnectionStatus(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'WorkspacesConnectionStatus') foreach (@{ $result->WorkspacesConnectionStatus });
    }

    return undef
  }
  sub ListAllAvailableManagementCidrRanges {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAvailableManagementCidrRanges(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAvailableManagementCidrRanges(@_, NextToken => $next_result->NextToken);
        push @{ $result->ManagementCidrRanges }, @{ $next_result->ManagementCidrRanges };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ManagementCidrRanges') foreach (@{ $result->ManagementCidrRanges });
        $result = $self->ListAvailableManagementCidrRanges(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ManagementCidrRanges') foreach (@{ $result->ManagementCidrRanges });
    }

    return undef
  }


  sub operations { qw/AssociateIpGroups AuthorizeIpRules CreateIpGroup CreateTags CreateWorkspaces DeleteIpGroup DeleteTags DeleteWorkspaceImage DescribeAccount DescribeAccountModifications DescribeClientProperties DescribeIpGroups DescribeTags DescribeWorkspaceBundles DescribeWorkspaceDirectories DescribeWorkspaceImages DescribeWorkspaces DescribeWorkspacesConnectionStatus DisassociateIpGroups ImportWorkspaceImage ListAvailableManagementCidrRanges ModifyAccount ModifyClientProperties ModifyWorkspaceProperties ModifyWorkspaceState RebootWorkspaces RebuildWorkspaces RevokeIpRules StartWorkspaces StopWorkspaces TerminateWorkspaces UpdateRulesOfIpGroup / }

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
Microsoft Windows and Amazon Linux desktops for your users.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08>


=head1 METHODS

=head2 AssociateIpGroups

=over

=item DirectoryId => Str

=item GroupIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::AssociateIpGroups>

Returns: a L<Paws::WorkSpaces::AssociateIpGroupsResult> instance

Associates the specified IP access control group with the specified
directory.


=head2 AuthorizeIpRules

=over

=item GroupId => Str

=item UserRules => ArrayRef[L<Paws::WorkSpaces::IpRuleItem>]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::AuthorizeIpRules>

Returns: a L<Paws::WorkSpaces::AuthorizeIpRulesResult> instance

Adds one or more rules to the specified IP access control group.

This action gives users permission to access their WorkSpaces from the
CIDR address ranges specified in the rules.


=head2 CreateIpGroup

=over

=item GroupName => Str

=item [GroupDesc => Str]

=item [UserRules => ArrayRef[L<Paws::WorkSpaces::IpRuleItem>]]


=back

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


=head2 CreateTags

=over

=item ResourceId => Str

=item Tags => ArrayRef[L<Paws::WorkSpaces::Tag>]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::CreateTags>

Returns: a L<Paws::WorkSpaces::CreateTagsResult> instance

Creates the specified tags for the specified WorkSpace.


=head2 CreateWorkspaces

=over

=item Workspaces => ArrayRef[L<Paws::WorkSpaces::WorkspaceRequest>]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::CreateWorkspaces>

Returns: a L<Paws::WorkSpaces::CreateWorkspacesResult> instance

Creates one or more WorkSpaces.

This operation is asynchronous and returns before the WorkSpaces are
created.


=head2 DeleteIpGroup

=over

=item GroupId => Str


=back

Each argument is described in detail in: L<Paws::WorkSpaces::DeleteIpGroup>

Returns: a L<Paws::WorkSpaces::DeleteIpGroupResult> instance

Deletes the specified IP access control group.

You cannot delete an IP access control group that is associated with a
directory.


=head2 DeleteTags

=over

=item ResourceId => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::DeleteTags>

Returns: a L<Paws::WorkSpaces::DeleteTagsResult> instance

Deletes the specified tags from the specified WorkSpace.


=head2 DeleteWorkspaceImage

=over

=item ImageId => Str


=back

Each argument is described in detail in: L<Paws::WorkSpaces::DeleteWorkspaceImage>

Returns: a L<Paws::WorkSpaces::DeleteWorkspaceImageResult> instance

Deletes the specified image from your account. To delete an image, you
must first delete any bundles that are associated with the image.


=head2 DescribeAccount






Each argument is described in detail in: L<Paws::WorkSpaces::DescribeAccount>

Returns: a L<Paws::WorkSpaces::DescribeAccountResult> instance

Retrieves a list that describes the configuration of bring your own
license (BYOL) for the specified account.


=head2 DescribeAccountModifications

=over

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::DescribeAccountModifications>

Returns: a L<Paws::WorkSpaces::DescribeAccountModificationsResult> instance

Retrieves a list that describes modifications to the configuration of
bring your own license (BYOL) for the specified account.


=head2 DescribeClientProperties

=over

=item ResourceIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::DescribeClientProperties>

Returns: a L<Paws::WorkSpaces::DescribeClientPropertiesResult> instance

Retrieves a list that describes one or more specified Amazon WorkSpaces
clients.


=head2 DescribeIpGroups

=over

=item [GroupIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::DescribeIpGroups>

Returns: a L<Paws::WorkSpaces::DescribeIpGroupsResult> instance

Describes one or more of your IP access control groups.


=head2 DescribeTags

=over

=item ResourceId => Str


=back

Each argument is described in detail in: L<Paws::WorkSpaces::DescribeTags>

Returns: a L<Paws::WorkSpaces::DescribeTagsResult> instance

Describes the specified tags for the specified WorkSpace.


=head2 DescribeWorkspaceBundles

=over

=item [BundleIds => ArrayRef[Str|Undef]]

=item [NextToken => Str]

=item [Owner => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::DescribeWorkspaceBundles>

Returns: a L<Paws::WorkSpaces::DescribeWorkspaceBundlesResult> instance

Retrieves a list that describes the available WorkSpace bundles.

You can filter the results using either bundle ID or owner, but not
both.


=head2 DescribeWorkspaceDirectories

=over

=item [DirectoryIds => ArrayRef[Str|Undef]]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::DescribeWorkspaceDirectories>

Returns: a L<Paws::WorkSpaces::DescribeWorkspaceDirectoriesResult> instance

Describes the available AWS Directory Service directories that are
registered with Amazon WorkSpaces.


=head2 DescribeWorkspaceImages

=over

=item [ImageIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::DescribeWorkspaceImages>

Returns: a L<Paws::WorkSpaces::DescribeWorkspaceImagesResult> instance

Retrieves a list that describes one or more specified images, if the
image identifiers are provided. Otherwise, all images in the account
are described.


=head2 DescribeWorkspaces

=over

=item [BundleId => Str]

=item [DirectoryId => Str]

=item [Limit => Int]

=item [NextToken => Str]

=item [UserName => Str]

=item [WorkspaceIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::DescribeWorkspaces>

Returns: a L<Paws::WorkSpaces::DescribeWorkspacesResult> instance

Describes the specified WorkSpaces.

You can filter the results by using the bundle identifier, directory
identifier, or owner, but you can specify only one filter at a time.


=head2 DescribeWorkspacesConnectionStatus

=over

=item [NextToken => Str]

=item [WorkspaceIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::DescribeWorkspacesConnectionStatus>

Returns: a L<Paws::WorkSpaces::DescribeWorkspacesConnectionStatusResult> instance

Describes the connection status of the specified WorkSpaces.


=head2 DisassociateIpGroups

=over

=item DirectoryId => Str

=item GroupIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::DisassociateIpGroups>

Returns: a L<Paws::WorkSpaces::DisassociateIpGroupsResult> instance

Disassociates the specified IP access control group from the specified
directory.


=head2 ImportWorkspaceImage

=over

=item Ec2ImageId => Str

=item ImageDescription => Str

=item ImageName => Str

=item IngestionProcess => Str


=back

Each argument is described in detail in: L<Paws::WorkSpaces::ImportWorkspaceImage>

Returns: a L<Paws::WorkSpaces::ImportWorkspaceImageResult> instance

Imports the specified Windows 7 or Windows 10 bring your own license
(BYOL) image into Amazon WorkSpaces. The image must be an already
licensed EC2 image that is in your AWS account, and you must own the
image.


=head2 ListAvailableManagementCidrRanges

=over

=item ManagementCidrRangeConstraint => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::ListAvailableManagementCidrRanges>

Returns: a L<Paws::WorkSpaces::ListAvailableManagementCidrRangesResult> instance

Retrieves a list of IP address ranges, specified as IPv4 CIDR blocks,
that you can use for the network management interface when you enable
bring your own license (BYOL).

The management network interface is connected to a secure Amazon
WorkSpaces management network. It is used for interactive streaming of
the WorkSpace desktop to Amazon WorkSpaces clients, and to allow Amazon
WorkSpaces to manage the WorkSpace.


=head2 ModifyAccount

=over

=item [DedicatedTenancyManagementCidrRange => Str]

=item [DedicatedTenancySupport => Str]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::ModifyAccount>

Returns: a L<Paws::WorkSpaces::ModifyAccountResult> instance

Modifies the configuration of bring your own license (BYOL) for the
specified account.


=head2 ModifyClientProperties

=over

=item ClientProperties => L<Paws::WorkSpaces::ClientProperties>

=item ResourceId => Str


=back

Each argument is described in detail in: L<Paws::WorkSpaces::ModifyClientProperties>

Returns: a L<Paws::WorkSpaces::ModifyClientPropertiesResult> instance

Modifies the properties of the specified Amazon WorkSpaces client.


=head2 ModifyWorkspaceProperties

=over

=item WorkspaceId => Str

=item WorkspaceProperties => L<Paws::WorkSpaces::WorkspaceProperties>


=back

Each argument is described in detail in: L<Paws::WorkSpaces::ModifyWorkspaceProperties>

Returns: a L<Paws::WorkSpaces::ModifyWorkspacePropertiesResult> instance

Modifies the specified WorkSpace properties.


=head2 ModifyWorkspaceState

=over

=item WorkspaceId => Str

=item WorkspaceState => Str


=back

Each argument is described in detail in: L<Paws::WorkSpaces::ModifyWorkspaceState>

Returns: a L<Paws::WorkSpaces::ModifyWorkspaceStateResult> instance

Sets the state of the specified WorkSpace.

To maintain a WorkSpace without being interrupted, set the WorkSpace
state to C<ADMIN_MAINTENANCE>. WorkSpaces in this state do not respond
to requests to reboot, stop, start, or rebuild. An AutoStop WorkSpace
in this state is not stopped. Users can log into a WorkSpace in the
C<ADMIN_MAINTENANCE> state.


=head2 RebootWorkspaces

=over

=item RebootWorkspaceRequests => ArrayRef[L<Paws::WorkSpaces::RebootRequest>]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::RebootWorkspaces>

Returns: a L<Paws::WorkSpaces::RebootWorkspacesResult> instance

Reboots the specified WorkSpaces.

You cannot reboot a WorkSpace unless its state is C<AVAILABLE> or
C<UNHEALTHY>.

This operation is asynchronous and returns before the WorkSpaces have
rebooted.


=head2 RebuildWorkspaces

=over

=item RebuildWorkspaceRequests => ArrayRef[L<Paws::WorkSpaces::RebuildRequest>]


=back

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


=head2 RevokeIpRules

=over

=item GroupId => Str

=item UserRules => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::RevokeIpRules>

Returns: a L<Paws::WorkSpaces::RevokeIpRulesResult> instance

Removes one or more rules from the specified IP access control group.


=head2 StartWorkspaces

=over

=item StartWorkspaceRequests => ArrayRef[L<Paws::WorkSpaces::StartRequest>]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::StartWorkspaces>

Returns: a L<Paws::WorkSpaces::StartWorkspacesResult> instance

Starts the specified WorkSpaces.

You cannot start a WorkSpace unless it has a running mode of
C<AutoStop> and a state of C<STOPPED>.


=head2 StopWorkspaces

=over

=item StopWorkspaceRequests => ArrayRef[L<Paws::WorkSpaces::StopRequest>]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::StopWorkspaces>

Returns: a L<Paws::WorkSpaces::StopWorkspacesResult> instance

Stops the specified WorkSpaces.

You cannot stop a WorkSpace unless it has a running mode of C<AutoStop>
and a state of C<AVAILABLE>, C<IMPAIRED>, C<UNHEALTHY>, or C<ERROR>.


=head2 TerminateWorkspaces

=over

=item TerminateWorkspaceRequests => ArrayRef[L<Paws::WorkSpaces::TerminateRequest>]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::TerminateWorkspaces>

Returns: a L<Paws::WorkSpaces::TerminateWorkspacesResult> instance

Terminates the specified WorkSpaces.

Terminating a WorkSpace is a permanent action and cannot be undone. The
user's data is destroyed. If you need to archive any user data, contact
Amazon Web Services before terminating the WorkSpace.

You can terminate a WorkSpace that is in any state except C<SUSPENDED>.

This operation is asynchronous and returns before the WorkSpaces have
been completely terminated.


=head2 UpdateRulesOfIpGroup

=over

=item GroupId => Str

=item UserRules => ArrayRef[L<Paws::WorkSpaces::IpRuleItem>]


=back

Each argument is described in detail in: L<Paws::WorkSpaces::UpdateRulesOfIpGroup>

Returns: a L<Paws::WorkSpaces::UpdateRulesOfIpGroupResult> instance

Replaces the current rules of the specified IP access control group
with the specified rules.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllAccountModifications(sub { },[NextToken => Str])

=head2 DescribeAllAccountModifications([NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AccountModifications, passing the object as the first parameter, and the string 'AccountModifications' as the second parameter 

If not, it will return a a L<Paws::WorkSpaces::DescribeAccountModificationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllIpGroups(sub { },[GroupIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllIpGroups([GroupIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Result, passing the object as the first parameter, and the string 'Result' as the second parameter 

If not, it will return a a L<Paws::WorkSpaces::DescribeIpGroupsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


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


=head2 DescribeAllWorkspaceImages(sub { },[ImageIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllWorkspaceImages([ImageIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Images, passing the object as the first parameter, and the string 'Images' as the second parameter 

If not, it will return a a L<Paws::WorkSpaces::DescribeWorkspaceImagesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllWorkspaces(sub { },[BundleId => Str, DirectoryId => Str, Limit => Int, NextToken => Str, UserName => Str, WorkspaceIds => ArrayRef[Str|Undef]])

=head2 DescribeAllWorkspaces([BundleId => Str, DirectoryId => Str, Limit => Int, NextToken => Str, UserName => Str, WorkspaceIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Workspaces, passing the object as the first parameter, and the string 'Workspaces' as the second parameter 

If not, it will return a a L<Paws::WorkSpaces::DescribeWorkspacesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllWorkspacesConnectionStatus(sub { },[NextToken => Str, WorkspaceIds => ArrayRef[Str|Undef]])

=head2 DescribeAllWorkspacesConnectionStatus([NextToken => Str, WorkspaceIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - WorkspacesConnectionStatus, passing the object as the first parameter, and the string 'WorkspacesConnectionStatus' as the second parameter 

If not, it will return a a L<Paws::WorkSpaces::DescribeWorkspacesConnectionStatusResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAvailableManagementCidrRanges(sub { },ManagementCidrRangeConstraint => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllAvailableManagementCidrRanges(ManagementCidrRangeConstraint => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ManagementCidrRanges, passing the object as the first parameter, and the string 'ManagementCidrRanges' as the second parameter 

If not, it will return a a L<Paws::WorkSpaces::ListAvailableManagementCidrRangesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

