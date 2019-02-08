
package Paws::CodeBuild::CreateProject;
  use Moose;
  has Artifacts => (is => 'ro', isa => 'Paws::CodeBuild::ProjectArtifacts', traits => ['NameInRequest'], request_name => 'artifacts' , required => 1);
  has BadgeEnabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'badgeEnabled' );
  has Cache => (is => 'ro', isa => 'Paws::CodeBuild::ProjectCache', traits => ['NameInRequest'], request_name => 'cache' );
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has EncryptionKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'encryptionKey' );
  has Environment => (is => 'ro', isa => 'Paws::CodeBuild::ProjectEnvironment', traits => ['NameInRequest'], request_name => 'environment' , required => 1);
  has LogsConfig => (is => 'ro', isa => 'Paws::CodeBuild::LogsConfig', traits => ['NameInRequest'], request_name => 'logsConfig' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has QueuedTimeoutInMinutes => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'queuedTimeoutInMinutes' );
  has SecondaryArtifacts => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::ProjectArtifacts]', traits => ['NameInRequest'], request_name => 'secondaryArtifacts' );
  has SecondarySources => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::ProjectSource]', traits => ['NameInRequest'], request_name => 'secondarySources' );
  has ServiceRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceRole' , required => 1);
  has Source => (is => 'ro', isa => 'Paws::CodeBuild::ProjectSource', traits => ['NameInRequest'], request_name => 'source' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::Tag]', traits => ['NameInRequest'], request_name => 'tags' );
  has TimeoutInMinutes => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'timeoutInMinutes' );
  has VpcConfig => (is => 'ro', isa => 'Paws::CodeBuild::VpcConfig', traits => ['NameInRequest'], request_name => 'vpcConfig' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateProject');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeBuild::CreateProjectOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::CreateProject - Arguments for method CreateProject on L<Paws::CodeBuild>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateProject on the
L<AWS CodeBuild|Paws::CodeBuild> service. Use the attributes of this class
as arguments to method CreateProject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateProject.

=head1 SYNOPSIS

    my $codebuild = Paws->service('CodeBuild');
    my $CreateProjectOutput = $codebuild->CreateProject(
      Artifacts => {
        Type => 'CODEPIPELINE',    # values: CODEPIPELINE, S3, NO_ARTIFACTS
        ArtifactIdentifier   => 'MyString',   # OPTIONAL
        EncryptionDisabled   => 1,            # OPTIONAL
        Location             => 'MyString',   # OPTIONAL
        Name                 => 'MyString',   # OPTIONAL
        NamespaceType        => 'NONE',       # values: NONE, BUILD_ID; OPTIONAL
        OverrideArtifactName => 1,            # OPTIONAL
        Packaging            => 'NONE',       # values: NONE, ZIP; OPTIONAL
        Path                 => 'MyString',   # OPTIONAL
      },
      Environment => {
        ComputeType => 'BUILD_GENERAL1_SMALL'
        , # values: BUILD_GENERAL1_SMALL, BUILD_GENERAL1_MEDIUM, BUILD_GENERAL1_LARGE
        Image => 'MyNonEmptyString',    # min: 1
        Type =>
          'WINDOWS_CONTAINER',    # values: WINDOWS_CONTAINER, LINUX_CONTAINER
        Certificate          => 'MyString',    # OPTIONAL
        EnvironmentVariables => [
          {
            Name  => 'MyNonEmptyString',       # min: 1
            Value => 'MyString',               # OPTIONAL
            Type => 'PLAINTEXT',  # values: PLAINTEXT, PARAMETER_STORE; OPTIONAL
          },
          ...
        ],                        # OPTIONAL
        ImagePullCredentialsType =>
          'CODEBUILD',            # values: CODEBUILD, SERVICE_ROLE; OPTIONAL
        PrivilegedMode     => 1,  # OPTIONAL
        RegistryCredential => {
          Credential         => 'MyNonEmptyString',    # min: 1
          CredentialProvider => 'SECRETS_MANAGER',     # values: SECRETS_MANAGER

        },    # OPTIONAL
      },
      Name        => 'MyProjectName',
      ServiceRole => 'MyNonEmptyString',
      Source      => {
        Type => 'CODECOMMIT'
        , # values: CODECOMMIT, CODEPIPELINE, GITHUB, S3, BITBUCKET, GITHUB_ENTERPRISE, NO_SOURCE
        Auth => {
          Type     => 'OAUTH',       # values: OAUTH
          Resource => 'MyString',    # OPTIONAL
        },    # OPTIONAL
        Buildspec         => 'MyString',    # OPTIONAL
        GitCloneDepth     => 1,             # OPTIONAL
        InsecureSsl       => 1,             # OPTIONAL
        Location          => 'MyString',    # OPTIONAL
        ReportBuildStatus => 1,             # OPTIONAL
        SourceIdentifier  => 'MyString',    # OPTIONAL
      },
      BadgeEnabled => 1,                    # OPTIONAL
      Cache        => {
        Type     => 'NO_CACHE',             # values: NO_CACHE, S3
        Location => 'MyString',             # OPTIONAL
      },    # OPTIONAL
      Description   => 'MyProjectDescription',    # OPTIONAL
      EncryptionKey => 'MyNonEmptyString',        # OPTIONAL
      LogsConfig    => {
        CloudWatchLogs => {
          Status     => 'ENABLED',                # values: ENABLED, DISABLED
          GroupName  => 'MyString',               # OPTIONAL
          StreamName => 'MyString',               # OPTIONAL
        },    # OPTIONAL
        S3Logs => {
          Status   => 'ENABLED',     # values: ENABLED, DISABLED
          Location => 'MyString',    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      QueuedTimeoutInMinutes => 1,    # OPTIONAL
      SecondaryArtifacts     => [
        {
          Type => 'CODEPIPELINE',     # values: CODEPIPELINE, S3, NO_ARTIFACTS
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
      SecondarySources => [
        {
          Type => 'CODECOMMIT'
          , # values: CODECOMMIT, CODEPIPELINE, GITHUB, S3, BITBUCKET, GITHUB_ENTERPRISE, NO_SOURCE
          Auth => {
            Type     => 'OAUTH',       # values: OAUTH
            Resource => 'MyString',    # OPTIONAL
          },    # OPTIONAL
          Buildspec         => 'MyString',    # OPTIONAL
          GitCloneDepth     => 1,             # OPTIONAL
          InsecureSsl       => 1,             # OPTIONAL
          Location          => 'MyString',    # OPTIONAL
          ReportBuildStatus => 1,             # OPTIONAL
          SourceIdentifier  => 'MyString',    # OPTIONAL
        },
        ...
      ],                                      # OPTIONAL
      Tags => [
        {
          Key   => 'MyKeyInput',              # min: 1, max: 127; OPTIONAL
          Value => 'MyValueInput',            # min: 1, max: 255; OPTIONAL
        },
        ...
      ],                                      # OPTIONAL
      TimeoutInMinutes => 1,                  # OPTIONAL
      VpcConfig        => {
        SecurityGroupIds => [
          'MyNonEmptyString', ...             # min: 1
        ],                                    # max: 5; OPTIONAL
        Subnets => [
          'MyNonEmptyString', ...             # min: 1
        ],                                    # max: 16; OPTIONAL
        VpcId => 'MyNonEmptyString',          # min: 1
      },    # OPTIONAL
    );

    # Results:
    my $Project = $CreateProjectOutput->Project;

    # Returns a L<Paws::CodeBuild::CreateProjectOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codebuild/CreateProject>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Artifacts => L<Paws::CodeBuild::ProjectArtifacts>

Information about the build output artifacts for the build project.



=head2 BadgeEnabled => Bool

Set this to true to generate a publicly accessible URL for your
project's build badge.



=head2 Cache => L<Paws::CodeBuild::ProjectCache>

Stores recently used information so that it can be quickly accessed at
a later time.



=head2 Description => Str

A description that makes the build project easy to identify.



=head2 EncryptionKey => Str

The AWS Key Management Service (AWS KMS) customer master key (CMK) to
be used for encrypting the build output artifacts.

You can specify either the Amazon Resource Name (ARN) of the CMK or, if
available, the CMK's alias (using the format C<alias/I<alias-name> >).



=head2 B<REQUIRED> Environment => L<Paws::CodeBuild::ProjectEnvironment>

Information about the build environment for the build project.



=head2 LogsConfig => L<Paws::CodeBuild::LogsConfig>

Information about logs for the build project. These can be logs in
Amazon CloudWatch Logs, logs uploaded to a specified S3 bucket, or
both.



=head2 B<REQUIRED> Name => Str

The name of the build project.



=head2 QueuedTimeoutInMinutes => Int

The number of minutes a build is allowed to be queued before it times
out.



=head2 SecondaryArtifacts => ArrayRef[L<Paws::CodeBuild::ProjectArtifacts>]

An array of C<ProjectArtifacts> objects.



=head2 SecondarySources => ArrayRef[L<Paws::CodeBuild::ProjectSource>]

An array of C<ProjectSource> objects.



=head2 B<REQUIRED> ServiceRole => Str

The ARN of the AWS Identity and Access Management (IAM) role that
enables AWS CodeBuild to interact with dependent AWS services on behalf
of the AWS account.



=head2 B<REQUIRED> Source => L<Paws::CodeBuild::ProjectSource>

Information about the build input source code for the build project.



=head2 Tags => ArrayRef[L<Paws::CodeBuild::Tag>]

A set of tags for this build project.

These tags are available for use by AWS services that support AWS
CodeBuild build project tags.



=head2 TimeoutInMinutes => Int

How long, in minutes, from 5 to 480 (8 hours), for AWS CodeBuild to
wait before it times out any build that has not been marked as
completed. The default is 60 minutes.



=head2 VpcConfig => L<Paws::CodeBuild::VpcConfig>

VpcConfig enables AWS CodeBuild to access resources in an Amazon VPC.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateProject in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

