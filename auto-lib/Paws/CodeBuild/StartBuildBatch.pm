
package Paws::CodeBuild::StartBuildBatch;
  use Moose;
  has ArtifactsOverride => (is => 'ro', isa => 'Paws::CodeBuild::ProjectArtifacts', traits => ['NameInRequest'], request_name => 'artifactsOverride' );
  has BuildBatchConfigOverride => (is => 'ro', isa => 'Paws::CodeBuild::ProjectBuildBatchConfig', traits => ['NameInRequest'], request_name => 'buildBatchConfigOverride' );
  has BuildspecOverride => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'buildspecOverride' );
  has BuildTimeoutInMinutesOverride => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'buildTimeoutInMinutesOverride' );
  has CacheOverride => (is => 'ro', isa => 'Paws::CodeBuild::ProjectCache', traits => ['NameInRequest'], request_name => 'cacheOverride' );
  has CertificateOverride => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateOverride' );
  has ComputeTypeOverride => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'computeTypeOverride' );
  has DebugSessionEnabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'debugSessionEnabled' );
  has EncryptionKeyOverride => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'encryptionKeyOverride' );
  has EnvironmentTypeOverride => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentTypeOverride' );
  has EnvironmentVariablesOverride => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::EnvironmentVariable]', traits => ['NameInRequest'], request_name => 'environmentVariablesOverride' );
  has GitCloneDepthOverride => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'gitCloneDepthOverride' );
  has GitSubmodulesConfigOverride => (is => 'ro', isa => 'Paws::CodeBuild::GitSubmodulesConfig', traits => ['NameInRequest'], request_name => 'gitSubmodulesConfigOverride' );
  has IdempotencyToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'idempotencyToken' );
  has ImageOverride => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imageOverride' );
  has ImagePullCredentialsTypeOverride => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imagePullCredentialsTypeOverride' );
  has InsecureSslOverride => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'insecureSslOverride' );
  has LogsConfigOverride => (is => 'ro', isa => 'Paws::CodeBuild::LogsConfig', traits => ['NameInRequest'], request_name => 'logsConfigOverride' );
  has PrivilegedModeOverride => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'privilegedModeOverride' );
  has ProjectName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectName' , required => 1);
  has QueuedTimeoutInMinutesOverride => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'queuedTimeoutInMinutesOverride' );
  has RegistryCredentialOverride => (is => 'ro', isa => 'Paws::CodeBuild::RegistryCredential', traits => ['NameInRequest'], request_name => 'registryCredentialOverride' );
  has ReportBuildBatchStatusOverride => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'reportBuildBatchStatusOverride' );
  has SecondaryArtifactsOverride => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::ProjectArtifacts]', traits => ['NameInRequest'], request_name => 'secondaryArtifactsOverride' );
  has SecondarySourcesOverride => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::ProjectSource]', traits => ['NameInRequest'], request_name => 'secondarySourcesOverride' );
  has SecondarySourcesVersionOverride => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::ProjectSourceVersion]', traits => ['NameInRequest'], request_name => 'secondarySourcesVersionOverride' );
  has ServiceRoleOverride => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceRoleOverride' );
  has SourceAuthOverride => (is => 'ro', isa => 'Paws::CodeBuild::SourceAuth', traits => ['NameInRequest'], request_name => 'sourceAuthOverride' );
  has SourceLocationOverride => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceLocationOverride' );
  has SourceTypeOverride => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceTypeOverride' );
  has SourceVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceVersion' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartBuildBatch');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeBuild::StartBuildBatchOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::StartBuildBatch - Arguments for method StartBuildBatch on L<Paws::CodeBuild>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartBuildBatch on the
L<AWS CodeBuild|Paws::CodeBuild> service. Use the attributes of this class
as arguments to method StartBuildBatch.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartBuildBatch.

=head1 SYNOPSIS

    my $codebuild = Paws->service('CodeBuild');
    my $StartBuildBatchOutput = $codebuild->StartBuildBatch(
      ProjectName       => 'MyNonEmptyString',
      ArtifactsOverride => {
        Type => 'CODEPIPELINE',        # values: CODEPIPELINE, S3, NO_ARTIFACTS
        ArtifactIdentifier => 'MyString',    # OPTIONAL
        BucketOwnerAccess  => 'NONE',  # values: NONE, READ_ONLY, FULL; OPTIONAL
        EncryptionDisabled => 1,       # OPTIONAL
        Location             => 'MyString',   # OPTIONAL
        Name                 => 'MyString',   # OPTIONAL
        NamespaceType        => 'NONE',       # values: NONE, BUILD_ID; OPTIONAL
        OverrideArtifactName => 1,            # OPTIONAL
        Packaging            => 'NONE',       # values: NONE, ZIP; OPTIONAL
        Path                 => 'MyString',   # OPTIONAL
      },    # OPTIONAL
      BuildBatchConfigOverride => {
        CombineArtifacts => 1,    # OPTIONAL
        Restrictions     => {
          ComputeTypesAllowed => [
            'MyNonEmptyString', ...    # min: 1
          ],    # OPTIONAL
          MaximumBuildsAllowed => 1,    # OPTIONAL
        },    # OPTIONAL
        ServiceRole   => 'MyNonEmptyString',    # min: 1
        TimeoutInMins => 1,                     # OPTIONAL
      },    # OPTIONAL
      BuildTimeoutInMinutesOverride => 1,             # OPTIONAL
      BuildspecOverride             => 'MyString',    # OPTIONAL
      CacheOverride                 => {
        Type     => 'NO_CACHE',    # values: NO_CACHE, S3, LOCAL
        Location => 'MyString',    # OPTIONAL
        Modes    => [
          'LOCAL_DOCKER_LAYER_CACHE',
          ... # values: LOCAL_DOCKER_LAYER_CACHE, LOCAL_SOURCE_CACHE, LOCAL_CUSTOM_CACHE
        ],    # OPTIONAL
      },    # OPTIONAL
      CertificateOverride          => 'MyString',                # OPTIONAL
      ComputeTypeOverride          => 'BUILD_GENERAL1_SMALL',    # OPTIONAL
      DebugSessionEnabled          => 1,                         # OPTIONAL
      EncryptionKeyOverride        => 'MyNonEmptyString',        # OPTIONAL
      EnvironmentTypeOverride      => 'WINDOWS_CONTAINER',       # OPTIONAL
      EnvironmentVariablesOverride => [
        {
          Name  => 'MyNonEmptyString',    # min: 1
          Value => 'MyString',            # OPTIONAL
          Type  => 'PLAINTEXT'
          ,    # values: PLAINTEXT, PARAMETER_STORE, SECRETS_MANAGER; OPTIONAL
        },
        ...
      ],    # OPTIONAL
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
          Status            => 'ENABLED',      # values: ENABLED, DISABLED
          BucketOwnerAccess => 'NONE', # values: NONE, READ_ONLY, FULL; OPTIONAL
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
      ReportBuildBatchStatusOverride => 1,    # OPTIONAL
      SecondaryArtifactsOverride     => [
        {
          Type => 'CODEPIPELINE',      # values: CODEPIPELINE, S3, NO_ARTIFACTS
          ArtifactIdentifier => 'MyString',    # OPTIONAL
          BucketOwnerAccess => 'NONE', # values: NONE, READ_ONLY, FULL; OPTIONAL
          EncryptionDisabled   => 1,          # OPTIONAL
          Location             => 'MyString', # OPTIONAL
          Name                 => 'MyString', # OPTIONAL
          NamespaceType        => 'NONE',     # values: NONE, BUILD_ID; OPTIONAL
          OverrideArtifactName => 1,          # OPTIONAL
          Packaging            => 'NONE',     # values: NONE, ZIP; OPTIONAL
          Path                 => 'MyString', # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      SecondarySourcesOverride => [
        {
          Type => 'CODECOMMIT'
          , # values: CODECOMMIT, CODEPIPELINE, GITHUB, S3, BITBUCKET, GITHUB_ENTERPRISE, NO_SOURCE
          Auth => {
            Type     => 'OAUTH',       # values: OAUTH
            Resource => 'MyString',    # OPTIONAL
          },    # OPTIONAL
          BuildStatusConfig => {
            Context   => 'MyString',    # OPTIONAL
            TargetUrl => 'MyString',    # OPTIONAL
          },    # OPTIONAL
          Buildspec           => 'MyString',    # OPTIONAL
          GitCloneDepth       => 1,
          GitSubmodulesConfig => {
            FetchSubmodules => 1,               # OPTIONAL

          },
          InsecureSsl       => 1,             # OPTIONAL
          Location          => 'MyString',    # OPTIONAL
          ReportBuildStatus => 1,             # OPTIONAL
          SourceIdentifier  => 'MyString',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      SecondarySourcesVersionOverride => [
        {
          SourceIdentifier => 'MyString',    # OPTIONAL
          SourceVersion    => 'MyString',    # OPTIONAL

        },
        ...
      ],    # OPTIONAL
      ServiceRoleOverride => 'MyNonEmptyString',    # OPTIONAL
      SourceAuthOverride  => {
        Type     => 'OAUTH',                        # values: OAUTH
        Resource => 'MyString',                     # OPTIONAL
      },    # OPTIONAL
      SourceLocationOverride => 'MyString',      # OPTIONAL
      SourceTypeOverride     => 'CODECOMMIT',    # OPTIONAL
      SourceVersion          => 'MyString',      # OPTIONAL
    );

    # Results:
    my $BuildBatch = $StartBuildBatchOutput->BuildBatch;

    # Returns a L<Paws::CodeBuild::StartBuildBatchOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codebuild/StartBuildBatch>

=head1 ATTRIBUTES


=head2 ArtifactsOverride => L<Paws::CodeBuild::ProjectArtifacts>

An array of C<ProjectArtifacts> objects that contains information about
the build output artifact overrides for the build project.



=head2 BuildBatchConfigOverride => L<Paws::CodeBuild::ProjectBuildBatchConfig>

A C<BuildBatchConfigOverride> object that contains batch build
configuration overrides.



=head2 BuildspecOverride => Str

A buildspec file declaration that overrides, for this build only, the
latest one already defined in the build project.

If this value is set, it can be either an inline buildspec definition,
the path to an alternate buildspec file relative to the value of the
built-in C<CODEBUILD_SRC_DIR> environment variable, or the path to an
S3 bucket. The bucket must be in the same AWS Region as the build
project. Specify the buildspec file using its ARN (for example,
C<arn:aws:s3:::my-codebuild-sample2/buildspec.yml>). If this value is
not provided or is set to an empty string, the source code must contain
a buildspec file in its root directory. For more information, see
Buildspec File Name and Storage Location
(https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#build-spec-ref-name-storage).



=head2 BuildTimeoutInMinutesOverride => Int

Overrides the build timeout specified in the batch build project.



=head2 CacheOverride => L<Paws::CodeBuild::ProjectCache>

A C<ProjectCache> object that specifies cache overrides.



=head2 CertificateOverride => Str

The name of a certificate for this batch build that overrides the one
specified in the batch build project.



=head2 ComputeTypeOverride => Str

The name of a compute type for this batch build that overrides the one
specified in the batch build project.

Valid values are: C<"BUILD_GENERAL1_SMALL">, C<"BUILD_GENERAL1_MEDIUM">, C<"BUILD_GENERAL1_LARGE">, C<"BUILD_GENERAL1_2XLARGE">

=head2 DebugSessionEnabled => Bool

Specifies if session debugging is enabled for this batch build. For
more information, see Viewing a running build in Session Manager
(https://docs.aws.amazon.com/codebuild/latest/userguide/session-manager.html).
Batch session debugging is not supported for matrix batch builds.



=head2 EncryptionKeyOverride => Str

The AWS Key Management Service (AWS KMS) customer master key (CMK) that
overrides the one specified in the batch build project. The CMK key
encrypts the build output artifacts.

You can use a cross-account KMS key to encrypt the build output
artifacts if your service role has permission to that key.

You can specify either the Amazon Resource Name (ARN) of the CMK or, if
available, the CMK's alias (using the format
C<alias/E<lt>alias-nameE<gt>>).



=head2 EnvironmentTypeOverride => Str

A container type for this batch build that overrides the one specified
in the batch build project.

Valid values are: C<"WINDOWS_CONTAINER">, C<"LINUX_CONTAINER">, C<"LINUX_GPU_CONTAINER">, C<"ARM_CONTAINER">, C<"WINDOWS_SERVER_2019_CONTAINER">

=head2 EnvironmentVariablesOverride => ArrayRef[L<Paws::CodeBuild::EnvironmentVariable>]

An array of C<EnvironmentVariable> objects that override, or add to,
the environment variables defined in the batch build project.



=head2 GitCloneDepthOverride => Int

The user-defined depth of history, with a minimum value of 0, that
overrides, for this batch build only, any previous depth of history
defined in the batch build project.



=head2 GitSubmodulesConfigOverride => L<Paws::CodeBuild::GitSubmodulesConfig>

A C<GitSubmodulesConfig> object that overrides the Git submodules
configuration for this batch build.



=head2 IdempotencyToken => Str

A unique, case sensitive identifier you provide to ensure the
idempotency of the C<StartBuildBatch> request. The token is included in
the C<StartBuildBatch> request and is valid for five minutes. If you
repeat the C<StartBuildBatch> request with the same token, but change a
parameter, AWS CodeBuild returns a parameter mismatch error.



=head2 ImageOverride => Str

The name of an image for this batch build that overrides the one
specified in the batch build project.



=head2 ImagePullCredentialsTypeOverride => Str

The type of credentials AWS CodeBuild uses to pull images in your batch
build. There are two valid values:

=over

=item CODEBUILD

Specifies that AWS CodeBuild uses its own credentials. This requires
that you modify your ECR repository policy to trust AWS CodeBuild's
service principal.

=item SERVICE_ROLE

Specifies that AWS CodeBuild uses your build project's service role.

=back

When using a cross-account or private registry image, you must use
C<SERVICE_ROLE> credentials. When using an AWS CodeBuild curated image,
you must use C<CODEBUILD> credentials.

Valid values are: C<"CODEBUILD">, C<"SERVICE_ROLE">

=head2 InsecureSslOverride => Bool

Enable this flag to override the insecure SSL setting that is specified
in the batch build project. The insecure SSL setting determines whether
to ignore SSL warnings while connecting to the project source code.
This override applies only if the build's source is GitHub Enterprise.



=head2 LogsConfigOverride => L<Paws::CodeBuild::LogsConfig>

A C<LogsConfig> object that override the log settings defined in the
batch build project.



=head2 PrivilegedModeOverride => Bool

Enable this flag to override privileged mode in the batch build
project.



=head2 B<REQUIRED> ProjectName => Str

The name of the project.



=head2 QueuedTimeoutInMinutesOverride => Int

The number of minutes a batch build is allowed to be queued before it
times out.



=head2 RegistryCredentialOverride => L<Paws::CodeBuild::RegistryCredential>

A C<RegistryCredential> object that overrides credentials for access to
a private registry.



=head2 ReportBuildBatchStatusOverride => Bool

Set to C<true> to report to your source provider the status of a batch
build's start and completion. If you use this option with a source
provider other than GitHub, GitHub Enterprise, or Bitbucket, an
C<invalidInputException> is thrown.

The status of a build triggered by a webhook is always reported to your
source provider.



=head2 SecondaryArtifactsOverride => ArrayRef[L<Paws::CodeBuild::ProjectArtifacts>]

An array of C<ProjectArtifacts> objects that override the secondary
artifacts defined in the batch build project.



=head2 SecondarySourcesOverride => ArrayRef[L<Paws::CodeBuild::ProjectSource>]

An array of C<ProjectSource> objects that override the secondary
sources defined in the batch build project.



=head2 SecondarySourcesVersionOverride => ArrayRef[L<Paws::CodeBuild::ProjectSourceVersion>]

An array of C<ProjectSourceVersion> objects that override the secondary
source versions in the batch build project.



=head2 ServiceRoleOverride => Str

The name of a service role for this batch build that overrides the one
specified in the batch build project.



=head2 SourceAuthOverride => L<Paws::CodeBuild::SourceAuth>

A C<SourceAuth> object that overrides the one defined in the batch
build project. This override applies only if the build project's source
is BitBucket or GitHub.



=head2 SourceLocationOverride => Str

A location that overrides, for this batch build, the source location
defined in the batch build project.



=head2 SourceTypeOverride => Str

The source input type that overrides the source input defined in the
batch build project.

Valid values are: C<"CODECOMMIT">, C<"CODEPIPELINE">, C<"GITHUB">, C<"S3">, C<"BITBUCKET">, C<"GITHUB_ENTERPRISE">, C<"NO_SOURCE">

=head2 SourceVersion => Str

The version of the batch build input to be built, for this build only.
If not specified, the latest version is used. If specified, the
contents depends on the source provider:

=over

=item AWS CodeCommit

The commit ID, branch, or Git tag to use.

=item GitHub

The commit ID, pull request ID, branch name, or tag name that
corresponds to the version of the source code you want to build. If a
pull request ID is specified, it must use the format
C<pr/pull-request-ID> (for example C<pr/25>). If a branch name is
specified, the branch's HEAD commit ID is used. If not specified, the
default branch's HEAD commit ID is used.

=item Bitbucket

The commit ID, branch name, or tag name that corresponds to the version
of the source code you want to build. If a branch name is specified,
the branch's HEAD commit ID is used. If not specified, the default
branch's HEAD commit ID is used.

=item Amazon S3

The version ID of the object that represents the build input ZIP file
to use.

=back

If C<sourceVersion> is specified at the project level, then this
C<sourceVersion> (at the build level) takes precedence.

For more information, see Source Version Sample with CodeBuild
(https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html)
in the I<AWS CodeBuild User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartBuildBatch in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

