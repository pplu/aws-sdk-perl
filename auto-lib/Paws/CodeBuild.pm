package Paws::CodeBuild;
  use Moose;
  sub service { 'codebuild' }
  sub signing_name { 'codebuild' }
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
  sub DeleteSourceCredentials {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::DeleteSourceCredentials', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWebhook {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::DeleteWebhook', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportSourceCredentials {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::ImportSourceCredentials', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub InvalidateProjectCache {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::InvalidateProjectCache', @_);
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
  sub ListSourceCredentials {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::ListSourceCredentials', @_);
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
  sub UpdateWebhook {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeBuild::UpdateWebhook', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllBuilds {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListBuilds(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListBuilds(@_, nextToken => $next_result->nextToken);
        push @{ $result->ids }, @{ $next_result->ids };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'ids') foreach (@{ $result->ids });
        $result = $self->ListBuilds(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'ids') foreach (@{ $result->ids });
    }

    return undef
  }
  sub ListAllBuildsForProject {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListBuildsForProject(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListBuildsForProject(@_, nextToken => $next_result->nextToken);
        push @{ $result->ids }, @{ $next_result->ids };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'ids') foreach (@{ $result->ids });
        $result = $self->ListBuildsForProject(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'ids') foreach (@{ $result->ids });
    }

    return undef
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


  sub operations { qw/BatchDeleteBuilds BatchGetBuilds BatchGetProjects CreateProject CreateWebhook DeleteProject DeleteSourceCredentials DeleteWebhook ImportSourceCredentials InvalidateProjectCache ListBuilds ListBuildsForProject ListCuratedEnvironmentImages ListProjects ListSourceCredentials StartBuild StopBuild UpdateProject UpdateWebhook / }

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
build requests. You pay only for the build time you consume. For more
information about AWS CodeBuild, see the I<AWS CodeBuild User Guide>.

AWS CodeBuild supports these operations:

=over

=item *

C<BatchDeleteBuilds>: Deletes one or more builds.

=item *

C<BatchGetProjects>: Gets information about one or more build projects.
A I<build project> defines how AWS CodeBuild runs a build. This
includes information such as where to get the source code to build, the
build environment to use, the build commands to run, and where to store
the build output. A I<build environment> is a representation of
operating system, programming language runtime, and tools that AWS
CodeBuild uses to run a build. You can add tags to build projects to
help manage your resources and costs.

=item *

C<CreateProject>: Creates a build project.

=item *

C<CreateWebhook>: For an existing AWS CodeBuild build project that has
its source code stored in a GitHub or Bitbucket repository, enables AWS
CodeBuild to start rebuilding the source code every time a code change
is pushed to the repository.

=item *

C<UpdateWebhook>: Changes the settings of an existing webhook.

=item *

C<DeleteProject>: Deletes a build project.

=item *

C<DeleteWebhook>: For an existing AWS CodeBuild build project that has
its source code stored in a GitHub or Bitbucket repository, stops AWS
CodeBuild from rebuilding the source code every time a code change is
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

=item *

C<DeleteSourceCredentials>: Deletes a set of GitHub, GitHub Enterprise,
or Bitbucket source credentials.

=item *

C<ImportSourceCredentials>: Imports the source repository credentials
for an AWS CodeBuild project that has its source code stored in a
GitHub, GitHub Enterprise, or Bitbucket repository.

=item *

C<ListSourceCredentials>: Returns a list of C<SourceCredentialsInfo>
objects. Each C<SourceCredentialsInfo> object includes the
authentication type, token ARN, and type of source provider for one set
of credentials.

=back


For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06>


=head1 METHODS

=head2 BatchDeleteBuilds

=over

=item Ids => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CodeBuild::BatchDeleteBuilds>

Returns: a L<Paws::CodeBuild::BatchDeleteBuildsOutput> instance

Deletes one or more builds.


=head2 BatchGetBuilds

=over

=item Ids => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CodeBuild::BatchGetBuilds>

Returns: a L<Paws::CodeBuild::BatchGetBuildsOutput> instance

Gets information about builds.


=head2 BatchGetProjects

=over

=item Names => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CodeBuild::BatchGetProjects>

Returns: a L<Paws::CodeBuild::BatchGetProjectsOutput> instance

Gets information about build projects.


=head2 CreateProject

=over

=item Artifacts => L<Paws::CodeBuild::ProjectArtifacts>

=item Environment => L<Paws::CodeBuild::ProjectEnvironment>

=item Name => Str

=item ServiceRole => Str

=item Source => L<Paws::CodeBuild::ProjectSource>

=item [BadgeEnabled => Bool]

=item [Cache => L<Paws::CodeBuild::ProjectCache>]

=item [Description => Str]

=item [EncryptionKey => Str]

=item [LogsConfig => L<Paws::CodeBuild::LogsConfig>]

=item [QueuedTimeoutInMinutes => Int]

=item [SecondaryArtifacts => ArrayRef[L<Paws::CodeBuild::ProjectArtifacts>]]

=item [SecondarySources => ArrayRef[L<Paws::CodeBuild::ProjectSource>]]

=item [Tags => ArrayRef[L<Paws::CodeBuild::Tag>]]

=item [TimeoutInMinutes => Int]

=item [VpcConfig => L<Paws::CodeBuild::VpcConfig>]


=back

Each argument is described in detail in: L<Paws::CodeBuild::CreateProject>

Returns: a L<Paws::CodeBuild::CreateProjectOutput> instance

Creates a build project.


=head2 CreateWebhook

=over

=item ProjectName => Str

=item [BranchFilter => Str]


=back

Each argument is described in detail in: L<Paws::CodeBuild::CreateWebhook>

Returns: a L<Paws::CodeBuild::CreateWebhookOutput> instance

For an existing AWS CodeBuild build project that has its source code
stored in a GitHub or Bitbucket repository, enables AWS CodeBuild to
start rebuilding the source code every time a code change is pushed to
the repository.

If you enable webhooks for an AWS CodeBuild project, and the project is
used as a build step in AWS CodePipeline, then two identical builds are
created for each commit. One build is triggered through webhooks, and
one through AWS CodePipeline. Because billing is on a per-build basis,
you are billed for both builds. Therefore, if you are using AWS
CodePipeline, we recommend that you disable webhooks in AWS CodeBuild.
In the AWS CodeBuild console, clear the Webhook box. For more
information, see step 5 in Change a Build Project's Settings
(http://docs.aws.amazon.com/codebuild/latest/userguide/change-project.html#change-project-console).


=head2 DeleteProject

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::CodeBuild::DeleteProject>

Returns: a L<Paws::CodeBuild::DeleteProjectOutput> instance

Deletes a build project.


=head2 DeleteSourceCredentials

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::CodeBuild::DeleteSourceCredentials>

Returns: a L<Paws::CodeBuild::DeleteSourceCredentialsOutput> instance

Deletes a set of GitHub, GitHub Enterprise, or Bitbucket source
credentials.


=head2 DeleteWebhook

=over

=item ProjectName => Str


=back

Each argument is described in detail in: L<Paws::CodeBuild::DeleteWebhook>

Returns: a L<Paws::CodeBuild::DeleteWebhookOutput> instance

For an existing AWS CodeBuild build project that has its source code
stored in a GitHub or Bitbucket repository, stops AWS CodeBuild from
rebuilding the source code every time a code change is pushed to the
repository.


=head2 ImportSourceCredentials

=over

=item AuthType => Str

=item ServerType => Str

=item Token => Str

=item [Username => Str]


=back

Each argument is described in detail in: L<Paws::CodeBuild::ImportSourceCredentials>

Returns: a L<Paws::CodeBuild::ImportSourceCredentialsOutput> instance

Imports the source repository credentials for an AWS CodeBuild project
that has its source code stored in a GitHub, GitHub Enterprise, or
Bitbucket repository.


=head2 InvalidateProjectCache

=over

=item ProjectName => Str


=back

Each argument is described in detail in: L<Paws::CodeBuild::InvalidateProjectCache>

Returns: a L<Paws::CodeBuild::InvalidateProjectCacheOutput> instance

Resets the cache for a project.


=head2 ListBuilds

=over

=item [NextToken => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::CodeBuild::ListBuilds>

Returns: a L<Paws::CodeBuild::ListBuildsOutput> instance

Gets a list of build IDs, with each build ID representing a single
build.


=head2 ListBuildsForProject

=over

=item ProjectName => Str

=item [NextToken => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::CodeBuild::ListBuildsForProject>

Returns: a L<Paws::CodeBuild::ListBuildsForProjectOutput> instance

Gets a list of build IDs for the specified build project, with each
build ID representing a single build.


=head2 ListCuratedEnvironmentImages






Each argument is described in detail in: L<Paws::CodeBuild::ListCuratedEnvironmentImages>

Returns: a L<Paws::CodeBuild::ListCuratedEnvironmentImagesOutput> instance

Gets information about Docker images that are managed by AWS CodeBuild.


=head2 ListProjects

=over

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::CodeBuild::ListProjects>

Returns: a L<Paws::CodeBuild::ListProjectsOutput> instance

Gets a list of build project names, with each build project name
representing a single build project.


=head2 ListSourceCredentials






Each argument is described in detail in: L<Paws::CodeBuild::ListSourceCredentials>

Returns: a L<Paws::CodeBuild::ListSourceCredentialsOutput> instance

Returns a list of C<SourceCredentialsInfo> objects.


=head2 StartBuild

=over

=item ProjectName => Str

=item [ArtifactsOverride => L<Paws::CodeBuild::ProjectArtifacts>]

=item [BuildspecOverride => Str]

=item [CacheOverride => L<Paws::CodeBuild::ProjectCache>]

=item [CertificateOverride => Str]

=item [ComputeTypeOverride => Str]

=item [EnvironmentTypeOverride => Str]

=item [EnvironmentVariablesOverride => ArrayRef[L<Paws::CodeBuild::EnvironmentVariable>]]

=item [GitCloneDepthOverride => Int]

=item [IdempotencyToken => Str]

=item [ImageOverride => Str]

=item [ImagePullCredentialsTypeOverride => Str]

=item [InsecureSslOverride => Bool]

=item [LogsConfigOverride => L<Paws::CodeBuild::LogsConfig>]

=item [PrivilegedModeOverride => Bool]

=item [QueuedTimeoutInMinutesOverride => Int]

=item [RegistryCredentialOverride => L<Paws::CodeBuild::RegistryCredential>]

=item [ReportBuildStatusOverride => Bool]

=item [SecondaryArtifactsOverride => ArrayRef[L<Paws::CodeBuild::ProjectArtifacts>]]

=item [SecondarySourcesOverride => ArrayRef[L<Paws::CodeBuild::ProjectSource>]]

=item [SecondarySourcesVersionOverride => ArrayRef[L<Paws::CodeBuild::ProjectSourceVersion>]]

=item [ServiceRoleOverride => Str]

=item [SourceAuthOverride => L<Paws::CodeBuild::SourceAuth>]

=item [SourceLocationOverride => Str]

=item [SourceTypeOverride => Str]

=item [SourceVersion => Str]

=item [TimeoutInMinutesOverride => Int]


=back

Each argument is described in detail in: L<Paws::CodeBuild::StartBuild>

Returns: a L<Paws::CodeBuild::StartBuildOutput> instance

Starts running a build.


=head2 StopBuild

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::CodeBuild::StopBuild>

Returns: a L<Paws::CodeBuild::StopBuildOutput> instance

Attempts to stop running a build.


=head2 UpdateProject

=over

=item Name => Str

=item [Artifacts => L<Paws::CodeBuild::ProjectArtifacts>]

=item [BadgeEnabled => Bool]

=item [Cache => L<Paws::CodeBuild::ProjectCache>]

=item [Description => Str]

=item [EncryptionKey => Str]

=item [Environment => L<Paws::CodeBuild::ProjectEnvironment>]

=item [LogsConfig => L<Paws::CodeBuild::LogsConfig>]

=item [QueuedTimeoutInMinutes => Int]

=item [SecondaryArtifacts => ArrayRef[L<Paws::CodeBuild::ProjectArtifacts>]]

=item [SecondarySources => ArrayRef[L<Paws::CodeBuild::ProjectSource>]]

=item [ServiceRole => Str]

=item [Source => L<Paws::CodeBuild::ProjectSource>]

=item [Tags => ArrayRef[L<Paws::CodeBuild::Tag>]]

=item [TimeoutInMinutes => Int]

=item [VpcConfig => L<Paws::CodeBuild::VpcConfig>]


=back

Each argument is described in detail in: L<Paws::CodeBuild::UpdateProject>

Returns: a L<Paws::CodeBuild::UpdateProjectOutput> instance

Changes the settings of a build project.


=head2 UpdateWebhook

=over

=item ProjectName => Str

=item [BranchFilter => Str]

=item [RotateSecret => Bool]


=back

Each argument is described in detail in: L<Paws::CodeBuild::UpdateWebhook>

Returns: a L<Paws::CodeBuild::UpdateWebhookOutput> instance

Updates the webhook associated with an AWS CodeBuild build project.

If you use Bitbucket for your repository, C<rotateSecret> is ignored.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllBuilds(sub { },[NextToken => Str, SortOrder => Str])

=head2 ListAllBuilds([NextToken => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ids, passing the object as the first parameter, and the string 'ids' as the second parameter 

If not, it will return a a L<Paws::CodeBuild::ListBuildsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllBuildsForProject(sub { },ProjectName => Str, [NextToken => Str, SortOrder => Str])

=head2 ListAllBuildsForProject(ProjectName => Str, [NextToken => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ids, passing the object as the first parameter, and the string 'ids' as the second parameter 

If not, it will return a a L<Paws::CodeBuild::ListBuildsForProjectOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllProjects(sub { },[NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllProjects([NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - projects, passing the object as the first parameter, and the string 'projects' as the second parameter 

If not, it will return a a L<Paws::CodeBuild::ListProjectsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

