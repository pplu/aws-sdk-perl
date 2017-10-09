package Paws::CodeBuild;
  use Moose;
  sub service { 'codebuild' }
  sub version { '2016-10-06' }
  sub target_prefix { 'CodeBuild_20161006' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub BatchDeleteBuilds {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::BatchDeleteBuilds', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetBuilds {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::BatchGetBuilds', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetProjects {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::BatchGetProjects', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::CreateProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWebhook {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::CreateWebhook', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::DeleteProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWebhook {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::DeleteWebhook', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBuilds {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::ListBuilds', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBuildsForProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::ListBuildsForProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCuratedEnvironmentImages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::ListCuratedEnvironmentImages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProjects {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::ListProjects', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartBuild {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::StartBuild', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopBuild {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::StopBuild', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::UpdateProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/BatchDeleteBuilds BatchGetBuilds BatchGetProjects CreateProject CreateWebhook DeleteProject DeleteWebhook ListBuilds ListBuildsForProject ListCuratedEnvironmentImages ListProjects StartBuild StopBuild UpdateProject / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild - Perl Interface to AWS AWS CodeBuild

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('CodeBuild');
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

AWS CodeBuild

AWS CodeBuild is a fully managed build service in the cloud. AWS
CodeBuild compiles your source code, runs unit tests, and produces
artifacts that are ready to deploy. AWS CodeBuild eliminates the need
to provision, manage, and scale your own build servers. It provides
prepackaged build environments for the most popular programming
languages and build tools, such as Apache Maven, Gradle, and more. You
can also fully customize build environments in AWS CodeBuild to use
your own build tools. AWS CodeBuild scales automatically to meet peak
build requests, and you pay only for the build time you consume. For
more information about AWS CodeBuild, see the I<AWS CodeBuild User
Guide>.

AWS CodeBuild supports these operations:

=over

=item *

C<BatchDeleteBuilds>: Deletes one or more builds.

=item *

C<BatchGetProjects>: Gets information about one or more build projects.
A I<build project> defines how AWS CodeBuild will run a build. This
includes information such as where to get the source code to build, the
build environment to use, the build commands to run, and where to store
the build output. A I<build environment> represents a combination of
operating system, programming language runtime, and tools that AWS
CodeBuild will use to run a build. Also, you can add tags to build
projects to help manage your resources and costs.

=item *

C<CreateProject>: Creates a build project.

=item *

C<CreateWebhook>: For an existing AWS CodeBuild build project that has
its source code stored in a GitHub repository, enables AWS CodeBuild to
begin automatically rebuilding the source code every time a code change
is pushed to the repository.

=item *

C<DeleteProject>: Deletes a build project.

=item *

C<DeleteWebhook>: For an existing AWS CodeBuild build project that has
its source code stored in a GitHub repository, stops AWS CodeBuild from
automatically rebuilding the source code every time a code change is
pushed to the repository.

=item *

C<ListProjects>: Gets a list of build project names, with each build
project name representing a single build project.

=item *

C<UpdateProject>: Changes the settings of an existing build project.

=item *

C<BatchGetBuilds>: Gets information about one or more builds.

=item *

C<ListBuilds>: Gets a list of build IDs, with each build ID
representing a single build.

=item *

C<ListBuildsForProject>: Gets a list of build IDs for the specified
build project, with each build ID representing a single build.

=item *

C<StartBuild>: Starts running a build.

=item *

C<StopBuild>: Attempts to stop running a build.

=item *

C<ListCuratedEnvironmentImages>: Gets information about Docker images
that are managed by AWS CodeBuild.

=back


=head1 METHODS

=head2 BatchDeleteBuilds(Ids => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::CodeBuild::BatchDeleteBuilds>

Returns: a L<Paws::CodeBuild::BatchDeleteBuildsOutput> instance

  Deletes one or more builds.


=head2 BatchGetBuilds(Ids => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::CodeBuild::BatchGetBuilds>

Returns: a L<Paws::CodeBuild::BatchGetBuildsOutput> instance

  Gets information about builds.


=head2 BatchGetProjects(Names => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::CodeBuild::BatchGetProjects>

Returns: a L<Paws::CodeBuild::BatchGetProjectsOutput> instance

  Gets information about build projects.


=head2 CreateProject(Artifacts => L<Paws::CodeBuild::ProjectArtifacts>, Environment => L<Paws::CodeBuild::ProjectEnvironment>, Name => Str, Source => L<Paws::CodeBuild::ProjectSource>, [Description => Str, EncryptionKey => Str, ServiceRole => Str, Tags => ArrayRef[L<Paws::CodeBuild::Tag>], TimeoutInMinutes => Int])

Each argument is described in detail in: L<Paws::CodeBuild::CreateProject>

Returns: a L<Paws::CodeBuild::CreateProjectOutput> instance

  Creates a build project.


=head2 CreateWebhook(ProjectName => Str)

Each argument is described in detail in: L<Paws::CodeBuild::CreateWebhook>

Returns: a L<Paws::CodeBuild::CreateWebhookOutput> instance

  For an existing AWS CodeBuild build project that has its source code
stored in a GitHub repository, enables AWS CodeBuild to begin
automatically rebuilding the source code every time a code change is
pushed to the repository.

If you enable webhooks for an AWS CodeBuild project, and the project is
used as a build step in AWS CodePipeline, then two identical builds
will be created for each commit. One build is triggered through
webhooks, and one through AWS CodePipeline. Because billing is on a
per-build basis, you will be billed for both builds. Therefore, if you
are using AWS CodePipeline, we recommend that you disable webhooks in
CodeBuild. In the AWS CodeBuild console, clear the Webhook box. For
more information, see step 9 in Change a Build ProjectE<rsquo>s
Settings.


=head2 DeleteProject(Name => Str)

Each argument is described in detail in: L<Paws::CodeBuild::DeleteProject>

Returns: a L<Paws::CodeBuild::DeleteProjectOutput> instance

  Deletes a build project.


=head2 DeleteWebhook(ProjectName => Str)

Each argument is described in detail in: L<Paws::CodeBuild::DeleteWebhook>

Returns: a L<Paws::CodeBuild::DeleteWebhookOutput> instance

  For an existing AWS CodeBuild build project that has its source code
stored in a GitHub repository, stops AWS CodeBuild from automatically
rebuilding the source code every time a code change is pushed to the
repository.


=head2 ListBuilds([NextToken => Str, SortOrder => Str])

Each argument is described in detail in: L<Paws::CodeBuild::ListBuilds>

Returns: a L<Paws::CodeBuild::ListBuildsOutput> instance

  Gets a list of build IDs, with each build ID representing a single
build.


=head2 ListBuildsForProject(ProjectName => Str, [NextToken => Str, SortOrder => Str])

Each argument is described in detail in: L<Paws::CodeBuild::ListBuildsForProject>

Returns: a L<Paws::CodeBuild::ListBuildsForProjectOutput> instance

  Gets a list of build IDs for the specified build project, with each
build ID representing a single build.


=head2 ListCuratedEnvironmentImages()

Each argument is described in detail in: L<Paws::CodeBuild::ListCuratedEnvironmentImages>

Returns: a L<Paws::CodeBuild::ListCuratedEnvironmentImagesOutput> instance

  Gets information about Docker images that are managed by AWS CodeBuild.


=head2 ListProjects([NextToken => Str, SortBy => Str, SortOrder => Str])

Each argument is described in detail in: L<Paws::CodeBuild::ListProjects>

Returns: a L<Paws::CodeBuild::ListProjectsOutput> instance

  Gets a list of build project names, with each build project name
representing a single build project.


=head2 StartBuild(ProjectName => Str, [ArtifactsOverride => L<Paws::CodeBuild::ProjectArtifacts>, BuildspecOverride => Str, EnvironmentVariablesOverride => ArrayRef[L<Paws::CodeBuild::EnvironmentVariable>], SourceVersion => Str, TimeoutInMinutesOverride => Int])

Each argument is described in detail in: L<Paws::CodeBuild::StartBuild>

Returns: a L<Paws::CodeBuild::StartBuildOutput> instance

  Starts running a build.


=head2 StopBuild(Id => Str)

Each argument is described in detail in: L<Paws::CodeBuild::StopBuild>

Returns: a L<Paws::CodeBuild::StopBuildOutput> instance

  Attempts to stop running a build.


=head2 UpdateProject(Name => Str, [Artifacts => L<Paws::CodeBuild::ProjectArtifacts>, Description => Str, EncryptionKey => Str, Environment => L<Paws::CodeBuild::ProjectEnvironment>, ServiceRole => Str, Source => L<Paws::CodeBuild::ProjectSource>, Tags => ArrayRef[L<Paws::CodeBuild::Tag>], TimeoutInMinutes => Int])

Each argument is described in detail in: L<Paws::CodeBuild::UpdateProject>

Returns: a L<Paws::CodeBuild::UpdateProjectOutput> instance

  Changes the settings of a build project.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

