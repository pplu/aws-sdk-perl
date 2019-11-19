# Generated from json/callargs_class.tt

package Paws::CodeBuild::StartBuild;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int Bool/;
  use Paws::CodeBuild::Types qw/CodeBuild_ProjectSourceVersion CodeBuild_GitSubmodulesConfig CodeBuild_LogsConfig CodeBuild_ProjectCache CodeBuild_RegistryCredential CodeBuild_SourceAuth CodeBuild_ProjectSource CodeBuild_EnvironmentVariable CodeBuild_ProjectArtifacts/;
  has ArtifactsOverride => (is => 'ro', isa => CodeBuild_ProjectArtifacts, predicate => 1);
  has BuildspecOverride => (is => 'ro', isa => Str, predicate => 1);
  has CacheOverride => (is => 'ro', isa => CodeBuild_ProjectCache, predicate => 1);
  has CertificateOverride => (is => 'ro', isa => Str, predicate => 1);
  has ComputeTypeOverride => (is => 'ro', isa => Str, predicate => 1);
  has EnvironmentTypeOverride => (is => 'ro', isa => Str, predicate => 1);
  has EnvironmentVariablesOverride => (is => 'ro', isa => ArrayRef[CodeBuild_EnvironmentVariable], predicate => 1);
  has GitCloneDepthOverride => (is => 'ro', isa => Int, predicate => 1);
  has GitSubmodulesConfigOverride => (is => 'ro', isa => CodeBuild_GitSubmodulesConfig, predicate => 1);
  has IdempotencyToken => (is => 'ro', isa => Str, predicate => 1);
  has ImageOverride => (is => 'ro', isa => Str, predicate => 1);
  has ImagePullCredentialsTypeOverride => (is => 'ro', isa => Str, predicate => 1);
  has InsecureSslOverride => (is => 'ro', isa => Bool, predicate => 1);
  has LogsConfigOverride => (is => 'ro', isa => CodeBuild_LogsConfig, predicate => 1);
  has PrivilegedModeOverride => (is => 'ro', isa => Bool, predicate => 1);
  has ProjectName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has QueuedTimeoutInMinutesOverride => (is => 'ro', isa => Int, predicate => 1);
  has RegistryCredentialOverride => (is => 'ro', isa => CodeBuild_RegistryCredential, predicate => 1);
  has ReportBuildStatusOverride => (is => 'ro', isa => Bool, predicate => 1);
  has SecondaryArtifactsOverride => (is => 'ro', isa => ArrayRef[CodeBuild_ProjectArtifacts], predicate => 1);
  has SecondarySourcesOverride => (is => 'ro', isa => ArrayRef[CodeBuild_ProjectSource], predicate => 1);
  has SecondarySourcesVersionOverride => (is => 'ro', isa => ArrayRef[CodeBuild_ProjectSourceVersion], predicate => 1);
  has ServiceRoleOverride => (is => 'ro', isa => Str, predicate => 1);
  has SourceAuthOverride => (is => 'ro', isa => CodeBuild_SourceAuth, predicate => 1);
  has SourceLocationOverride => (is => 'ro', isa => Str, predicate => 1);
  has SourceTypeOverride => (is => 'ro', isa => Str, predicate => 1);
  has SourceVersion => (is => 'ro', isa => Str, predicate => 1);
  has TimeoutInMinutesOverride => (is => 'ro', isa => Int, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'StartBuild');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CodeBuild::StartBuildOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'GitSubmodulesConfigOverride' => {
                                                  'type' => 'CodeBuild_GitSubmodulesConfig',
                                                  'class' => 'Paws::CodeBuild::GitSubmodulesConfig'
                                                },
               'PrivilegedModeOverride' => {
                                             'type' => 'Bool'
                                           },
               'SecondaryArtifactsOverride' => {
                                                 'class' => 'Paws::CodeBuild::ProjectArtifacts',
                                                 'type' => 'ArrayRef[CodeBuild_ProjectArtifacts]'
                                               },
               'EnvironmentTypeOverride' => {
                                              'type' => 'Str'
                                            },
               'InsecureSslOverride' => {
                                          'type' => 'Bool'
                                        },
               'CertificateOverride' => {
                                          'type' => 'Str'
                                        },
               'SourceAuthOverride' => {
                                         'class' => 'Paws::CodeBuild::SourceAuth',
                                         'type' => 'CodeBuild_SourceAuth'
                                       },
               'LogsConfigOverride' => {
                                         'type' => 'CodeBuild_LogsConfig',
                                         'class' => 'Paws::CodeBuild::LogsConfig'
                                       },
               'TimeoutInMinutesOverride' => {
                                               'type' => 'Int'
                                             },
               'ImagePullCredentialsTypeOverride' => {
                                                       'type' => 'Str'
                                                     },
               'ProjectName' => {
                                  'type' => 'Str'
                                },
               'ArtifactsOverride' => {
                                        'class' => 'Paws::CodeBuild::ProjectArtifacts',
                                        'type' => 'CodeBuild_ProjectArtifacts'
                                      },
               'BuildspecOverride' => {
                                        'type' => 'Str'
                                      },
               'SecondarySourcesVersionOverride' => {
                                                      'type' => 'ArrayRef[CodeBuild_ProjectSourceVersion]',
                                                      'class' => 'Paws::CodeBuild::ProjectSourceVersion'
                                                    },
               'SourceLocationOverride' => {
                                             'type' => 'Str'
                                           },
               'SourceVersion' => {
                                    'type' => 'Str'
                                  },
               'RegistryCredentialOverride' => {
                                                 'class' => 'Paws::CodeBuild::RegistryCredential',
                                                 'type' => 'CodeBuild_RegistryCredential'
                                               },
               'QueuedTimeoutInMinutesOverride' => {
                                                     'type' => 'Int'
                                                   },
               'ReportBuildStatusOverride' => {
                                                'type' => 'Bool'
                                              },
               'GitCloneDepthOverride' => {
                                            'type' => 'Int'
                                          },
               'ServiceRoleOverride' => {
                                          'type' => 'Str'
                                        },
               'SecondarySourcesOverride' => {
                                               'type' => 'ArrayRef[CodeBuild_ProjectSource]',
                                               'class' => 'Paws::CodeBuild::ProjectSource'
                                             },
               'SourceTypeOverride' => {
                                         'type' => 'Str'
                                       },
               'CacheOverride' => {
                                    'type' => 'CodeBuild_ProjectCache',
                                    'class' => 'Paws::CodeBuild::ProjectCache'
                                  },
               'IdempotencyToken' => {
                                       'type' => 'Str'
                                     },
               'EnvironmentVariablesOverride' => {
                                                   'class' => 'Paws::CodeBuild::EnvironmentVariable',
                                                   'type' => 'ArrayRef[CodeBuild_EnvironmentVariable]'
                                                 },
               'ImageOverride' => {
                                    'type' => 'Str'
                                  },
               'ComputeTypeOverride' => {
                                          'type' => 'Str'
                                        }
             },
  'IsRequired' => {
                    'ProjectName' => 1
                  },
  'NameInRequest' => {
                       'QueuedTimeoutInMinutesOverride' => 'queuedTimeoutInMinutesOverride',
                       'ReportBuildStatusOverride' => 'reportBuildStatusOverride',
                       'GitCloneDepthOverride' => 'gitCloneDepthOverride',
                       'ServiceRoleOverride' => 'serviceRoleOverride',
                       'SecondarySourcesOverride' => 'secondarySourcesOverride',
                       'RegistryCredentialOverride' => 'registryCredentialOverride',
                       'EnvironmentVariablesOverride' => 'environmentVariablesOverride',
                       'ImageOverride' => 'imageOverride',
                       'ComputeTypeOverride' => 'computeTypeOverride',
                       'SourceTypeOverride' => 'sourceTypeOverride',
                       'CacheOverride' => 'cacheOverride',
                       'IdempotencyToken' => 'idempotencyToken',
                       'PrivilegedModeOverride' => 'privilegedModeOverride',
                       'SecondaryArtifactsOverride' => 'secondaryArtifactsOverride',
                       'EnvironmentTypeOverride' => 'environmentTypeOverride',
                       'InsecureSslOverride' => 'insecureSslOverride',
                       'SourceAuthOverride' => 'sourceAuthOverride',
                       'CertificateOverride' => 'certificateOverride',
                       'LogsConfigOverride' => 'logsConfigOverride',
                       'GitSubmodulesConfigOverride' => 'gitSubmodulesConfigOverride',
                       'BuildspecOverride' => 'buildspecOverride',
                       'SecondarySourcesVersionOverride' => 'secondarySourcesVersionOverride',
                       'SourceLocationOverride' => 'sourceLocationOverride',
                       'SourceVersion' => 'sourceVersion',
                       'TimeoutInMinutesOverride' => 'timeoutInMinutesOverride',
                       'ImagePullCredentialsTypeOverride' => 'imagePullCredentialsTypeOverride',
                       'ArtifactsOverride' => 'artifactsOverride',
                       'ProjectName' => 'projectName'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::StartBuild - Arguments for method StartBuild on L<Paws::CodeBuild>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartBuild on the
L<AWS CodeBuild|Paws::CodeBuild> service. Use the attributes of this class
as arguments to method StartBuild.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartBuild.

=head1 SYNOPSIS

    my $codebuild = Paws->service('CodeBuild');
    my $StartBuildOutput = $codebuild->StartBuild(
      ProjectName       => 'MyNonEmptyString',
      ArtifactsOverride => {
        Type => 'CODEPIPELINE',    # values: CODEPIPELINE, S3, NO_ARTIFACTS
        ArtifactIdentifier   => 'MyString',   # OPTIONAL
        EncryptionDisabled   => 1,            # OPTIONAL
        Location             => 'MyString',   # OPTIONAL
        Name                 => 'MyString',   # OPTIONAL
        NamespaceType        => 'NONE',       # values: NONE, BUILD_ID; OPTIONAL
        OverrideArtifactName => 1,            # OPTIONAL
        Packaging            => 'NONE',       # values: NONE, ZIP; OPTIONAL
        Path                 => 'MyString',   # OPTIONAL
      },    # OPTIONAL
      BuildspecOverride => 'MyString',    # OPTIONAL
      CacheOverride     => {
        Type     => 'NO_CACHE',           # values: NO_CACHE, S3, LOCAL
        Location => 'MyString',           # OPTIONAL
        Modes    => [
          'LOCAL_DOCKER_LAYER_CACHE',
          ... # values: LOCAL_DOCKER_LAYER_CACHE, LOCAL_SOURCE_CACHE, LOCAL_CUSTOM_CACHE
        ],    # OPTIONAL
      },    # OPTIONAL
      CertificateOverride          => 'MyString',                # OPTIONAL
      ComputeTypeOverride          => 'BUILD_GENERAL1_SMALL',    # OPTIONAL
      EnvironmentTypeOverride      => 'WINDOWS_CONTAINER',       # OPTIONAL
      EnvironmentVariablesOverride => [
        {
          Name  => 'MyNonEmptyString',                           # min: 1
          Value => 'MyString',                                   # OPTIONAL
          Type  => 'PLAINTEXT'
          ,    # values: PLAINTEXT, PARAMETER_STORE, SECRETS_MANAGER; OPTIONAL
        },
        ...
      ],       # OPTIONAL
      GitCloneDepthOverride       => 1,    # OPTIONAL
      GitSubmodulesConfigOverride => {
        FetchSubmodules => 1,              # OPTIONAL

      },    # OPTIONAL
      IdempotencyToken                 => 'MyString',            # OPTIONAL
      ImageOverride                    => 'MyNonEmptyString',    # OPTIONAL
      ImagePullCredentialsTypeOverride => 'CODEBUILD',           # OPTIONAL
      InsecureSslOverride              => 1,                     # OPTIONAL
      LogsConfigOverride               => {
        CloudWatchLogs => {
          Status     => 'ENABLED',     # values: ENABLED, DISABLED
          GroupName  => 'MyString',    # OPTIONAL
          StreamName => 'MyString',    # OPTIONAL
        },    # OPTIONAL
        S3Logs => {
          Status             => 'ENABLED',     # values: ENABLED, DISABLED
          EncryptionDisabled => 1,             # OPTIONAL
          Location           => 'MyString',    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      PrivilegedModeOverride         => 1,    # OPTIONAL
      QueuedTimeoutInMinutesOverride => 1,    # OPTIONAL
      RegistryCredentialOverride     => {
        Credential         => 'MyNonEmptyString',    # min: 1
        CredentialProvider => 'SECRETS_MANAGER',     # values: SECRETS_MANAGER

      },    # OPTIONAL
      ReportBuildStatusOverride  => 1,    # OPTIONAL
      SecondaryArtifactsOverride => [
        {
          Type => 'CODEPIPELINE',    # values: CODEPIPELINE, S3, NO_ARTIFACTS
          ArtifactIdentifier   => 'MyString', # OPTIONAL
          EncryptionDisabled   => 1,          # OPTIONAL
          Location             => 'MyString', # OPTIONAL
          Name                 => 'MyString', # OPTIONAL
          NamespaceType        => 'NONE',     # values: NONE, BUILD_ID; OPTIONAL
          OverrideArtifactName => 1,          # OPTIONAL
          Packaging            => 'NONE',     # values: NONE, ZIP; OPTIONAL
          Path                 => 'MyString', # OPTIONAL
        },
        ...
      ],                                      # OPTIONAL
      SecondarySourcesOverride => [
        {
          Type => 'CODECOMMIT'
          , # values: CODECOMMIT, CODEPIPELINE, GITHUB, S3, BITBUCKET, GITHUB_ENTERPRISE, NO_SOURCE
          Auth => {
            Type     => 'OAUTH',       # values: OAUTH
            Resource => 'MyString',    # OPTIONAL
          },    # OPTIONAL
          Buildspec           => 'MyString',    # OPTIONAL
          GitCloneDepth       => 1,
          GitSubmodulesConfig => {
            FetchSubmodules => 1,               # OPTIONAL

          },
          InsecureSsl       => 1,               # OPTIONAL
          Location          => 'MyString',      # OPTIONAL
          ReportBuildStatus => 1,               # OPTIONAL
          SourceIdentifier  => 'MyString',      # OPTIONAL
        },
        ...
      ],                                        # OPTIONAL
      SecondarySourcesVersionOverride => [
        {
          SourceIdentifier => 'MyString',       # OPTIONAL
          SourceVersion    => 'MyString',       # OPTIONAL

        },
        ...
      ],                                        # OPTIONAL
      ServiceRoleOverride => 'MyNonEmptyString',    # OPTIONAL
      SourceAuthOverride  => {
        Type     => 'OAUTH',                        # values: OAUTH
        Resource => 'MyString',                     # OPTIONAL
      },    # OPTIONAL
      SourceLocationOverride   => 'MyString',      # OPTIONAL
      SourceTypeOverride       => 'CODECOMMIT',    # OPTIONAL
      SourceVersion            => 'MyString',      # OPTIONAL
      TimeoutInMinutesOverride => 1,               # OPTIONAL
    );

    # Results:
    my $Build = $StartBuildOutput->Build;

    # Returns a L<Paws::CodeBuild::StartBuildOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codebuild/StartBuild>

=head1 ATTRIBUTES


=head2 ArtifactsOverride => CodeBuild_ProjectArtifacts

Build output artifact settings that override, for this build only, the
latest ones already defined in the build project.



=head2 BuildspecOverride => Str

A build spec declaration that overrides, for this build only, the
latest one already defined in the build project.



=head2 CacheOverride => CodeBuild_ProjectCache

A ProjectCache object specified for this build that overrides the one
defined in the build project.



=head2 CertificateOverride => Str

The name of a certificate for this build that overrides the one
specified in the build project.



=head2 ComputeTypeOverride => Str

The name of a compute type for this build that overrides the one
specified in the build project.

Valid values are: C<"BUILD_GENERAL1_SMALL">, C<"BUILD_GENERAL1_MEDIUM">, C<"BUILD_GENERAL1_LARGE">, C<"BUILD_GENERAL1_2XLARGE">

=head2 EnvironmentTypeOverride => Str

A container type for this build that overrides the one specified in the
build project.

Valid values are: C<"WINDOWS_CONTAINER">, C<"LINUX_CONTAINER">, C<"LINUX_GPU_CONTAINER">, C<"ARM_CONTAINER">

=head2 EnvironmentVariablesOverride => ArrayRef[CodeBuild_EnvironmentVariable]

A set of environment variables that overrides, for this build only, the
latest ones already defined in the build project.



=head2 GitCloneDepthOverride => Int

The user-defined depth of history, with a minimum value of 0, that
overrides, for this build only, any previous depth of history defined
in the build project.



=head2 GitSubmodulesConfigOverride => CodeBuild_GitSubmodulesConfig

Information about the Git submodules configuration for this build of an
AWS CodeBuild build project.



=head2 IdempotencyToken => Str

A unique, case sensitive identifier you provide to ensure the
idempotency of the StartBuild request. The token is included in the
StartBuild request and is valid for 12 hours. If you repeat the
StartBuild request with the same token, but change a parameter, AWS
CodeBuild returns a parameter mismatch error.



=head2 ImageOverride => Str

The name of an image for this build that overrides the one specified in
the build project.



=head2 ImagePullCredentialsTypeOverride => Str

The type of credentials AWS CodeBuild uses to pull images in your
build. There are two valid values:

=over

=item *

C<CODEBUILD> specifies that AWS CodeBuild uses its own credentials.
This requires that you modify your ECR repository policy to trust AWS
CodeBuild's service principal.

=item *

C<SERVICE_ROLE> specifies that AWS CodeBuild uses your build project's
service role.

=back

When using a cross-account or private registry image, you must use
SERVICE_ROLE credentials. When using an AWS CodeBuild curated image,
you must use CODEBUILD credentials.

Valid values are: C<"CODEBUILD">, C<"SERVICE_ROLE">

=head2 InsecureSslOverride => Bool

Enable this flag to override the insecure SSL setting that is specified
in the build project. The insecure SSL setting determines whether to
ignore SSL warnings while connecting to the project source code. This
override applies only if the build's source is GitHub Enterprise.



=head2 LogsConfigOverride => CodeBuild_LogsConfig

Log settings for this build that override the log settings defined in
the build project.



=head2 PrivilegedModeOverride => Bool

Enable this flag to override privileged mode in the build project.



=head2 B<REQUIRED> ProjectName => Str

The name of the AWS CodeBuild build project to start running a build.



=head2 QueuedTimeoutInMinutesOverride => Int

The number of minutes a build is allowed to be queued before it times
out.



=head2 RegistryCredentialOverride => CodeBuild_RegistryCredential

The credentials for access to a private registry.



=head2 ReportBuildStatusOverride => Bool

Set to true to report to your source provider the status of a build's
start and completion. If you use this option with a source provider
other than GitHub, GitHub Enterprise, or Bitbucket, an
invalidInputException is thrown.

The status of a build triggered by a webhook is always reported to your
source provider.



=head2 SecondaryArtifactsOverride => ArrayRef[CodeBuild_ProjectArtifacts]

An array of C<ProjectArtifacts> objects.



=head2 SecondarySourcesOverride => ArrayRef[CodeBuild_ProjectSource]

An array of C<ProjectSource> objects.



=head2 SecondarySourcesVersionOverride => ArrayRef[CodeBuild_ProjectSourceVersion]

An array of C<ProjectSourceVersion> objects that specify one or more
versions of the project's secondary sources to be used for this build
only.



=head2 ServiceRoleOverride => Str

The name of a service role for this build that overrides the one
specified in the build project.



=head2 SourceAuthOverride => CodeBuild_SourceAuth

An authorization type for this build that overrides the one defined in
the build project. This override applies only if the build project's
source is BitBucket or GitHub.



=head2 SourceLocationOverride => Str

A location that overrides, for this build, the source location for the
one defined in the build project.



=head2 SourceTypeOverride => Str

A source input type, for this build, that overrides the source input
defined in the build project.

Valid values are: C<"CODECOMMIT">, C<"CODEPIPELINE">, C<"GITHUB">, C<"S3">, C<"BITBUCKET">, C<"GITHUB_ENTERPRISE">, C<"NO_SOURCE">

=head2 SourceVersion => Str

A version of the build input to be built, for this build only. If not
specified, the latest version is used. If specified, must be one of:

=over

=item *

For AWS CodeCommit: the commit ID to use.

=item *

For GitHub: the commit ID, pull request ID, branch name, or tag name
that corresponds to the version of the source code you want to build.
If a pull request ID is specified, it must use the format
C<pr/pull-request-ID> (for example C<pr/25>). If a branch name is
specified, the branch's HEAD commit ID is used. If not specified, the
default branch's HEAD commit ID is used.

=item *

For Bitbucket: the commit ID, branch name, or tag name that corresponds
to the version of the source code you want to build. If a branch name
is specified, the branch's HEAD commit ID is used. If not specified,
the default branch's HEAD commit ID is used.

=item *

For Amazon Simple Storage Service (Amazon S3): the version ID of the
object that represents the build input ZIP file to use.

=back

If C<sourceVersion> is specified at the project level, then this
C<sourceVersion> (at the build level) takes precedence.

For more information, see Source Version Sample with CodeBuild
(https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html)
in the I<AWS CodeBuild User Guide>.



=head2 TimeoutInMinutesOverride => Int

The number of build timeout minutes, from 5 to 480 (8 hours), that
overrides, for this build only, the latest setting already defined in
the build project.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartBuild in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

