
package Paws::CodeBuild::StartBuild;
  use Moose;
  has ArtifactsOverride => (is => 'ro', isa => 'Paws::CodeBuild::ProjectArtifacts', traits => ['NameInRequest'], request_name => 'artifactsOverride' );
  has BuildspecOverride => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'buildspecOverride' );
  has CacheOverride => (is => 'ro', isa => 'Paws::CodeBuild::ProjectCache', traits => ['NameInRequest'], request_name => 'cacheOverride' );
  has CertificateOverride => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateOverride' );
  has ComputeTypeOverride => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'computeTypeOverride' );
  has EnvironmentTypeOverride => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentTypeOverride' );
  has EnvironmentVariablesOverride => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::EnvironmentVariable]', traits => ['NameInRequest'], request_name => 'environmentVariablesOverride' );
  has GitCloneDepthOverride => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'gitCloneDepthOverride' );
  has IdempotencyToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'idempotencyToken' );
  has ImageOverride => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imageOverride' );
  has InsecureSslOverride => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'insecureSslOverride' );
  has PrivilegedModeOverride => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'privilegedModeOverride' );
  has ProjectName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectName' , required => 1);
  has ReportBuildStatusOverride => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'reportBuildStatusOverride' );
  has ServiceRoleOverride => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceRoleOverride' );
  has SourceAuthOverride => (is => 'ro', isa => 'Paws::CodeBuild::SourceAuth', traits => ['NameInRequest'], request_name => 'sourceAuthOverride' );
  has SourceLocationOverride => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceLocationOverride' );
  has SourceTypeOverride => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceTypeOverride' );
  has SourceVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceVersion' );
  has TimeoutInMinutesOverride => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'timeoutInMinutesOverride' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartBuild');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeBuild::StartBuildOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
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
        Type     => 'CODEPIPELINE',    # values: CODEPIPELINE, S3, NO_ARTIFACTS
        Location => 'MyString',        # OPTIONAL
        Name     => 'MyString',        # OPTIONAL
        NamespaceType => 'NONE',       # values: NONE, BUILD_ID; OPTIONAL
        Packaging     => 'NONE',       # values: NONE, ZIP; OPTIONAL
        Path          => 'MyString',   # OPTIONAL
      },    # OPTIONAL
      BuildspecOverride => 'MyString',    # OPTIONAL
      CacheOverride     => {
        Type     => 'NO_CACHE',           # values: NO_CACHE, S3
        Location => 'MyString',           # OPTIONAL
      },    # OPTIONAL
      CertificateOverride          => 'MyString',                # OPTIONAL
      ComputeTypeOverride          => 'BUILD_GENERAL1_SMALL',    # OPTIONAL
      EnvironmentTypeOverride      => 'WINDOWS_CONTAINER',       # OPTIONAL
      EnvironmentVariablesOverride => [
        {
          Name  => 'MyNonEmptyString',                           # min: 1
          Value => 'MyString',                                   # OPTIONAL
          Type => 'PLAINTEXT',    # values: PLAINTEXT, PARAMETER_STORE; OPTIONAL
        },
        ...
      ],                          # OPTIONAL
      GitCloneDepthOverride     => 1,                     # OPTIONAL
      IdempotencyToken          => 'MyString',            # OPTIONAL
      ImageOverride             => 'MyNonEmptyString',    # OPTIONAL
      InsecureSslOverride       => 1,                     # OPTIONAL
      PrivilegedModeOverride    => 1,                     # OPTIONAL
      ReportBuildStatusOverride => 1,                     # OPTIONAL
      ServiceRoleOverride       => 'MyNonEmptyString',    # OPTIONAL
      SourceAuthOverride        => {
        Type     => 'OAUTH',                              # values: OAUTH
        Resource => 'MyString',                           # OPTIONAL
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


=head2 ArtifactsOverride => L<Paws::CodeBuild::ProjectArtifacts>

Build output artifact settings that override, for this build only, the
latest ones already defined in the build project.



=head2 BuildspecOverride => Str

A build spec declaration that overrides, for this build only, the
latest one already defined in the build project.



=head2 CacheOverride => L<Paws::CodeBuild::ProjectCache>

A ProjectCache object specified for this build that overrides the one
defined in the build project.



=head2 CertificateOverride => Str

The name of a certificate for this build that overrides the one
specified in the build project.



=head2 ComputeTypeOverride => Str

The name of a compute type for this build that overrides the one
specified in the build project.

Valid values are: C<"BUILD_GENERAL1_SMALL">, C<"BUILD_GENERAL1_MEDIUM">, C<"BUILD_GENERAL1_LARGE">

=head2 EnvironmentTypeOverride => Str

A container type for this build that overrides the one specified in the
build project.

Valid values are: C<"WINDOWS_CONTAINER">, C<"LINUX_CONTAINER">

=head2 EnvironmentVariablesOverride => ArrayRef[L<Paws::CodeBuild::EnvironmentVariable>]

A set of environment variables that overrides, for this build only, the
latest ones already defined in the build project.



=head2 GitCloneDepthOverride => Int

The user-defined depth of history, with a minimum value of 0, that
overrides, for this build only, any previous depth of history defined
in the build project.



=head2 IdempotencyToken => Str

A unique, case sensitive identifier you provide to ensure the
idempotency of the StartBuild request. The token is included in the
StartBuild request and is valid for 12 hours. If you repeat the
StartBuild request with the same token, but change a parameter, AWS
CodeBuild returns a parameter mismatch error.



=head2 ImageOverride => Str

The name of an image for this build that overrides the one specified in
the build project.



=head2 InsecureSslOverride => Bool

Enable this flag to override the insecure SSL setting that is specified
in the build project. The insecure SSL setting determines whether to
ignore SSL warnings while connecting to the project source code. This
override applies only if the build's source is GitHub Enterprise.



=head2 PrivilegedModeOverride => Bool

Enable this flag to override privileged mode in the build project.



=head2 B<REQUIRED> ProjectName => Str

The name of the AWS CodeBuild build project to start running a build.



=head2 ReportBuildStatusOverride => Bool

Set to true to report to your source provider the status of a build's
start and completion. If you use this option with a source provider
other than GitHub, an invalidInputException is thrown.



=head2 ServiceRoleOverride => Str

The name of a service role for this build that overrides the one
specified in the build project.



=head2 SourceAuthOverride => L<Paws::CodeBuild::SourceAuth>

An authorization type for this build that overrides the one defined in
the build project. This override applies only if the build project's
source is BitBucket or GitHub.



=head2 SourceLocationOverride => Str

A location that overrides for this build the source location for the
one defined in the build project.



=head2 SourceTypeOverride => Str

A source input type for this build that overrides the source input
defined in the build project

Valid values are: C<"CODECOMMIT">, C<"CODEPIPELINE">, C<"GITHUB">, C<"S3">, C<"BITBUCKET">, C<"GITHUB_ENTERPRISE">

=head2 SourceVersion => Str

A version of the build input to be built, for this build only. If not
specified, the latest version will be used. If specified, must be one
of:

=over

=item *

For AWS CodeCommit: the commit ID to use.

=item *

For GitHub: the commit ID, pull request ID, branch name, or tag name
that corresponds to the version of the source code you want to build.
If a pull request ID is specified, it must use the format
C<pr/pull-request-ID> (for example C<pr/25>). If a branch name is
specified, the branch's HEAD commit ID will be used. If not specified,
the default branch's HEAD commit ID will be used.

=item *

For Bitbucket: the commit ID, branch name, or tag name that corresponds
to the version of the source code you want to build. If a branch name
is specified, the branch's HEAD commit ID will be used. If not
specified, the default branch's HEAD commit ID will be used.

=item *

For Amazon Simple Storage Service (Amazon S3): the version ID of the
object representing the build input ZIP file to use.

=back




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

