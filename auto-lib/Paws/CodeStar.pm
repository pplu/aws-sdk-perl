package Paws::CodeStar;
  use Moose;
  sub service { 'codestar' }
  sub version { '2017-04-19' }
  sub target_prefix { 'CodeStar_20170419' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';

  
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
  


  sub operations { qw/AssociateTeamMember CreateProject CreateUserProfile DeleteProject DeleteUserProfile DescribeProject DescribeUserProfile DisassociateTeamMember ListProjects ListResources ListTeamMembers ListUserProfiles UpdateProject UpdateTeamMember UpdateUserProfile / }

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

CreateProject, which creates an empty project in AWS CodeStar with no
resources.

=item *

DeleteProject, which deletes a project in AWS CodeStar.

=item *

DescribeProject, which lists the attributes of a project.

=item *

ListProjects, which lists all AWS CodeStar projects associated with
your AWS account.

=item *

ListResources, which lists the resources associated with an AWS
CodeStar project.

=item *

UpdateProject, which updates the attributes of an AWS CodeStar project.

=back

Teams and team members, by calling the following:

=over

=item *

AssociateTeamMember, which adds an IAM user to the team for an AWS
CodeStar project.

=item *

DisassociateTeamMember, which removes an IAM user from the team for an
AWS CodeStar project.

=item *

ListTeamMembers, which lists all the IAM users in the team for an AWS
CodeStar project, including their roles and attributes.

=back

Users, by calling the following:

=over

=item *

CreateUserProfile, which creates a user profile that contains data
associated with the user across all AWS CodeStar projects.

=item *

DeleteUserProfile, which deletes all user profile information across
all AWS CodeStar projects.

=item *

DescribeUserProfile, which describes the profile of a user.

=item *

ListUserProfiles, which lists all AWS CodeStar user profiles.

=item *

UpdateUserProfile, which updates the profile for an AWS CodeStar user.

=back


=head1 METHODS

=head2 AssociateTeamMember(ProjectId => Str, ProjectRole => Str, UserArn => Str, [ClientRequestToken => Str, RemoteAccessAllowed => Bool])

Each argument is described in detail in: L<Paws::CodeStar::AssociateTeamMember>

Returns: a L<Paws::CodeStar::AssociateTeamMemberResult> instance

  Adds an IAM user to the team for an AWS CodeStar project.


=head2 CreateProject(Id => Str, Name => Str, [ClientRequestToken => Str, Description => Str])

Each argument is described in detail in: L<Paws::CodeStar::CreateProject>

Returns: a L<Paws::CodeStar::CreateProjectResult> instance

  Creates a project in AWS CodeStar with minimal structure and no
resources.


=head2 CreateUserProfile(DisplayName => Str, EmailAddress => Str, UserArn => Str, [SshPublicKey => Str])

Each argument is described in detail in: L<Paws::CodeStar::CreateUserProfile>

Returns: a L<Paws::CodeStar::CreateUserProfileResult> instance

  Creates a profile for a user that includes user preferences, such as
the display name and email address assocciated with the user, in AWS
CodeStar. The user profile is not project-specific. Information in the
user profile is displayed wherever the user's information appears to
other users in AWS CodeStar.


=head2 DeleteProject(Id => Str, [ClientRequestToken => Str, DeleteStack => Bool])

Each argument is described in detail in: L<Paws::CodeStar::DeleteProject>

Returns: a L<Paws::CodeStar::DeleteProjectResult> instance

  Deletes a project, including project resources. Does not delete users
associated with the project, but does delete the IAM roles that allowed
access to the project.


=head2 DeleteUserProfile(UserArn => Str)

Each argument is described in detail in: L<Paws::CodeStar::DeleteUserProfile>

Returns: a L<Paws::CodeStar::DeleteUserProfileResult> instance

  Deletes a user profile in AWS CodeStar, including all personal
preference data associated with that profile, such as display name and
email address. It does not delete the history of that user, for example
the history of commits made by that user.


=head2 DescribeProject(Id => Str)

Each argument is described in detail in: L<Paws::CodeStar::DescribeProject>

Returns: a L<Paws::CodeStar::DescribeProjectResult> instance

  Describes a project and its resources.


=head2 DescribeUserProfile(UserArn => Str)

Each argument is described in detail in: L<Paws::CodeStar::DescribeUserProfile>

Returns: a L<Paws::CodeStar::DescribeUserProfileResult> instance

  Describes a user in AWS CodeStar and the user attributes across all
projects.


=head2 DisassociateTeamMember(ProjectId => Str, UserArn => Str)

Each argument is described in detail in: L<Paws::CodeStar::DisassociateTeamMember>

Returns: a L<Paws::CodeStar::DisassociateTeamMemberResult> instance

  Removes a user from a project. Removing a user from a project also
removes the IAM policies from that user that allowed access to the
project and its resources. Disassociating a team member does not remove
that user's profile from AWS CodeStar. It does not remove the user from
IAM.


=head2 ListProjects([MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::CodeStar::ListProjects>

Returns: a L<Paws::CodeStar::ListProjectsResult> instance

  Lists all projects in AWS CodeStar associated with your AWS account.


=head2 ListResources(ProjectId => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::CodeStar::ListResources>

Returns: a L<Paws::CodeStar::ListResourcesResult> instance

  Lists resources associated with a project in AWS CodeStar.


=head2 ListTeamMembers(ProjectId => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::CodeStar::ListTeamMembers>

Returns: a L<Paws::CodeStar::ListTeamMembersResult> instance

  Lists all team members associated with a project.


=head2 ListUserProfiles([MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::CodeStar::ListUserProfiles>

Returns: a L<Paws::CodeStar::ListUserProfilesResult> instance

  Lists all the user profiles configured for your AWS account in AWS
CodeStar.


=head2 UpdateProject(Id => Str, [Description => Str, Name => Str])

Each argument is described in detail in: L<Paws::CodeStar::UpdateProject>

Returns: a L<Paws::CodeStar::UpdateProjectResult> instance

  Updates a project in AWS CodeStar.


=head2 UpdateTeamMember(ProjectId => Str, UserArn => Str, [ProjectRole => Str, RemoteAccessAllowed => Bool])

Each argument is described in detail in: L<Paws::CodeStar::UpdateTeamMember>

Returns: a L<Paws::CodeStar::UpdateTeamMemberResult> instance

  Updates a team member's attributes in an AWS CodeStar project. For
example, you can change a team member's role in the project, or change
whether they have remote access to project resources.


=head2 UpdateUserProfile(UserArn => Str, [DisplayName => Str, EmailAddress => Str, SshPublicKey => Str])

Each argument is described in detail in: L<Paws::CodeStar::UpdateUserProfile>

Returns: a L<Paws::CodeStar::UpdateUserProfileResult> instance

  Updates a user's profile in AWS CodeStar. The user profile is not
project-specific. Information in the user profile is displayed wherever
the user's information appears to other users in AWS CodeStar.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

