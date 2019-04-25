package Paws::CodeStar;
  use Moose;
  sub service { 'codestar' }
  sub signing_name { 'codestar' }
  sub version { '2017-04-19' }
  sub target_prefix { 'CodeStar_20170419' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AssociateTeamMember {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeStar::AssociateTeamMember', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeStar::CreateProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUserProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeStar::CreateUserProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeStar::DeleteProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUserProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeStar::DeleteUserProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeStar::DescribeProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeUserProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeStar::DescribeUserProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateTeamMember {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeStar::DisassociateTeamMember', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProjects {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeStar::ListProjects', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeStar::ListResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeStar::ListTagsForProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTeamMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeStar::ListTeamMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUserProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeStar::ListUserProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeStar::TagProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeStar::UntagProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeStar::UpdateProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTeamMember {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeStar::UpdateTeamMember', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUserProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeStar::UpdateUserProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllProjects {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListProjects(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListProjects(@_, nextToken => $next_result->nextToken);
        push @{ $result->projects }, @{ $next_result->projects };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'projects') foreach (@{ $result->projects });
        $result = $self->ListProjects(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'projects') foreach (@{ $result->projects });
    }

    return undef
  }
  sub ListAllResources {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListResources(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListResources(@_, nextToken => $next_result->nextToken);
        push @{ $result->resources }, @{ $next_result->resources };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'resources') foreach (@{ $result->resources });
        $result = $self->ListResources(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'resources') foreach (@{ $result->resources });
    }

    return undef
  }
  sub ListAllTeamMembers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTeamMembers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTeamMembers(@_, nextToken => $next_result->nextToken);
        push @{ $result->teamMembers }, @{ $next_result->teamMembers };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'teamMembers') foreach (@{ $result->teamMembers });
        $result = $self->ListTeamMembers(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'teamMembers') foreach (@{ $result->teamMembers });
    }

    return undef
  }
  sub ListAllUserProfiles {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListUserProfiles(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListUserProfiles(@_, nextToken => $next_result->nextToken);
        push @{ $result->userProfiles }, @{ $next_result->userProfiles };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'userProfiles') foreach (@{ $result->userProfiles });
        $result = $self->ListUserProfiles(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'userProfiles') foreach (@{ $result->userProfiles });
    }

    return undef
  }


  sub operations { qw/AssociateTeamMember CreateProject CreateUserProfile DeleteProject DeleteUserProfile DescribeProject DescribeUserProfile DisassociateTeamMember ListProjects ListResources ListTagsForProject ListTeamMembers ListUserProfiles TagProject UntagProject UpdateProject UpdateTeamMember UpdateUserProfile / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStar - Perl Interface to AWS AWS CodeStar

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('CodeStar');
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

AWS CodeStar

This is the API reference for AWS CodeStar. This reference provides
descriptions of the operations and data types for the AWS CodeStar API
along with usage examples.

You can use the AWS CodeStar API to work with:

Projects and their resources, by calling the following:

=over

=item *

C<DeleteProject>, which deletes a project.

=item *

C<DescribeProject>, which lists the attributes of a project.

=item *

C<ListProjects>, which lists all projects associated with your AWS
account.

=item *

C<ListResources>, which lists the resources associated with a project.

=item *

C<ListTagsForProject>, which lists the tags associated with a project.

=item *

C<TagProject>, which adds tags to a project.

=item *

C<UntagProject>, which removes tags from a project.

=item *

C<UpdateProject>, which updates the attributes of a project.

=back

Teams and team members, by calling the following:

=over

=item *

C<AssociateTeamMember>, which adds an IAM user to the team for a
project.

=item *

C<DisassociateTeamMember>, which removes an IAM user from the team for
a project.

=item *

C<ListTeamMembers>, which lists all the IAM users in the team for a
project, including their roles and attributes.

=item *

C<UpdateTeamMember>, which updates a team member's attributes in a
project.

=back

Users, by calling the following:

=over

=item *

C<CreateUserProfile>, which creates a user profile that contains data
associated with the user across all projects.

=item *

C<DeleteUserProfile>, which deletes all user profile information across
all projects.

=item *

C<DescribeUserProfile>, which describes the profile of a user.

=item *

C<ListUserProfiles>, which lists all user profiles.

=item *

C<UpdateUserProfile>, which updates the profile for a user.

=back


For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19>


=head1 METHODS

=head2 AssociateTeamMember

=over

=item ProjectId => Str

=item ProjectRole => Str

=item UserArn => Str

=item [ClientRequestToken => Str]

=item [RemoteAccessAllowed => Bool]


=back

Each argument is described in detail in: L<Paws::CodeStar::AssociateTeamMember>

Returns: a L<Paws::CodeStar::AssociateTeamMemberResult> instance

Adds an IAM user to the team for an AWS CodeStar project.


=head2 CreateProject

=over

=item Id => Str

=item Name => Str

=item [ClientRequestToken => Str]

=item [Description => Str]

=item [SourceCode => ArrayRef[L<Paws::CodeStar::Code>]]

=item [Tags => L<Paws::CodeStar::Tags>]

=item [Toolchain => L<Paws::CodeStar::Toolchain>]


=back

Each argument is described in detail in: L<Paws::CodeStar::CreateProject>

Returns: a L<Paws::CodeStar::CreateProjectResult> instance

Creates a project, including project resources. This action creates a
project based on a submitted project request. A set of source code
files and a toolchain template file can be included with the project
request. If these are not provided, an empty project is created.


=head2 CreateUserProfile

=over

=item DisplayName => Str

=item EmailAddress => Str

=item UserArn => Str

=item [SshPublicKey => Str]


=back

Each argument is described in detail in: L<Paws::CodeStar::CreateUserProfile>

Returns: a L<Paws::CodeStar::CreateUserProfileResult> instance

Creates a profile for a user that includes user preferences, such as
the display name and email address assocciated with the user, in AWS
CodeStar. The user profile is not project-specific. Information in the
user profile is displayed wherever the user's information appears to
other users in AWS CodeStar.


=head2 DeleteProject

=over

=item Id => Str

=item [ClientRequestToken => Str]

=item [DeleteStack => Bool]


=back

Each argument is described in detail in: L<Paws::CodeStar::DeleteProject>

Returns: a L<Paws::CodeStar::DeleteProjectResult> instance

Deletes a project, including project resources. Does not delete users
associated with the project, but does delete the IAM roles that allowed
access to the project.


=head2 DeleteUserProfile

=over

=item UserArn => Str


=back

Each argument is described in detail in: L<Paws::CodeStar::DeleteUserProfile>

Returns: a L<Paws::CodeStar::DeleteUserProfileResult> instance

Deletes a user profile in AWS CodeStar, including all personal
preference data associated with that profile, such as display name and
email address. It does not delete the history of that user, for example
the history of commits made by that user.


=head2 DescribeProject

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CodeStar::DescribeProject>

Returns: a L<Paws::CodeStar::DescribeProjectResult> instance

Describes a project and its resources.


=head2 DescribeUserProfile

=over

=item UserArn => Str


=back

Each argument is described in detail in: L<Paws::CodeStar::DescribeUserProfile>

Returns: a L<Paws::CodeStar::DescribeUserProfileResult> instance

Describes a user in AWS CodeStar and the user attributes across all
projects.


=head2 DisassociateTeamMember

=over

=item ProjectId => Str

=item UserArn => Str


=back

Each argument is described in detail in: L<Paws::CodeStar::DisassociateTeamMember>

Returns: a L<Paws::CodeStar::DisassociateTeamMemberResult> instance

Removes a user from a project. Removing a user from a project also
removes the IAM policies from that user that allowed access to the
project and its resources. Disassociating a team member does not remove
that user's profile from AWS CodeStar. It does not remove the user from
IAM.


=head2 ListProjects

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeStar::ListProjects>

Returns: a L<Paws::CodeStar::ListProjectsResult> instance

Lists all projects in AWS CodeStar associated with your AWS account.


=head2 ListResources

=over

=item ProjectId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeStar::ListResources>

Returns: a L<Paws::CodeStar::ListResourcesResult> instance

Lists resources associated with a project in AWS CodeStar.


=head2 ListTagsForProject

=over

=item Id => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeStar::ListTagsForProject>

Returns: a L<Paws::CodeStar::ListTagsForProjectResult> instance

Gets the tags for a project.


=head2 ListTeamMembers

=over

=item ProjectId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeStar::ListTeamMembers>

Returns: a L<Paws::CodeStar::ListTeamMembersResult> instance

Lists all team members associated with a project.


=head2 ListUserProfiles

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeStar::ListUserProfiles>

Returns: a L<Paws::CodeStar::ListUserProfilesResult> instance

Lists all the user profiles configured for your AWS account in AWS
CodeStar.


=head2 TagProject

=over

=item Id => Str

=item Tags => L<Paws::CodeStar::Tags>


=back

Each argument is described in detail in: L<Paws::CodeStar::TagProject>

Returns: a L<Paws::CodeStar::TagProjectResult> instance

Adds tags to a project.


=head2 UntagProject

=over

=item Id => Str

=item Tags => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CodeStar::UntagProject>

Returns: a L<Paws::CodeStar::UntagProjectResult> instance

Removes tags from a project.


=head2 UpdateProject

=over

=item Id => Str

=item [Description => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::CodeStar::UpdateProject>

Returns: a L<Paws::CodeStar::UpdateProjectResult> instance

Updates a project in AWS CodeStar.


=head2 UpdateTeamMember

=over

=item ProjectId => Str

=item UserArn => Str

=item [ProjectRole => Str]

=item [RemoteAccessAllowed => Bool]


=back

Each argument is described in detail in: L<Paws::CodeStar::UpdateTeamMember>

Returns: a L<Paws::CodeStar::UpdateTeamMemberResult> instance

Updates a team member's attributes in an AWS CodeStar project. For
example, you can change a team member's role in the project, or change
whether they have remote access to project resources.


=head2 UpdateUserProfile

=over

=item UserArn => Str

=item [DisplayName => Str]

=item [EmailAddress => Str]

=item [SshPublicKey => Str]


=back

Each argument is described in detail in: L<Paws::CodeStar::UpdateUserProfile>

Returns: a L<Paws::CodeStar::UpdateUserProfileResult> instance

Updates a user's profile in AWS CodeStar. The user profile is not
project-specific. Information in the user profile is displayed wherever
the user's information appears to other users in AWS CodeStar.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllProjects(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllProjects([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - projects, passing the object as the first parameter, and the string 'projects' as the second parameter 

If not, it will return a a L<Paws::CodeStar::ListProjectsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllResources(sub { },ProjectId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllResources(ProjectId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - resources, passing the object as the first parameter, and the string 'resources' as the second parameter 

If not, it will return a a L<Paws::CodeStar::ListResourcesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTeamMembers(sub { },ProjectId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllTeamMembers(ProjectId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - teamMembers, passing the object as the first parameter, and the string 'teamMembers' as the second parameter 

If not, it will return a a L<Paws::CodeStar::ListTeamMembersResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllUserProfiles(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllUserProfiles([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - userProfiles, passing the object as the first parameter, and the string 'userProfiles' as the second parameter 

If not, it will return a a L<Paws::CodeStar::ListUserProfilesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

