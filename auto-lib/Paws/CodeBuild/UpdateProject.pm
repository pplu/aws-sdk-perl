# Generated from json/callargs_class.tt

package Paws::CodeBuild::UpdateProject;
  use Moo;
  use Types::Standard qw/Str Bool Int ArrayRef/;
  use Paws::CodeBuild::Types qw/CodeBuild_ProjectSourceVersion CodeBuild_ProjectEnvironment CodeBuild_Tag CodeBuild_VpcConfig CodeBuild_ProjectCache CodeBuild_LogsConfig CodeBuild_ProjectSource CodeBuild_ProjectArtifacts/;
  has Artifacts => (is => 'ro', isa => CodeBuild_ProjectArtifacts, predicate => 1);
  has BadgeEnabled => (is => 'ro', isa => Bool, predicate => 1);
  has Cache => (is => 'ro', isa => CodeBuild_ProjectCache, predicate => 1);
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has EncryptionKey => (is => 'ro', isa => Str, predicate => 1);
  has Environment => (is => 'ro', isa => CodeBuild_ProjectEnvironment, predicate => 1);
  has LogsConfig => (is => 'ro', isa => CodeBuild_LogsConfig, predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has QueuedTimeoutInMinutes => (is => 'ro', isa => Int, predicate => 1);
  has SecondaryArtifacts => (is => 'ro', isa => ArrayRef[CodeBuild_ProjectArtifacts], predicate => 1);
  has SecondarySources => (is => 'ro', isa => ArrayRef[CodeBuild_ProjectSource], predicate => 1);
  has SecondarySourceVersions => (is => 'ro', isa => ArrayRef[CodeBuild_ProjectSourceVersion], predicate => 1);
  has ServiceRole => (is => 'ro', isa => Str, predicate => 1);
  has Source => (is => 'ro', isa => CodeBuild_ProjectSource, predicate => 1);
  has SourceVersion => (is => 'ro', isa => Str, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[CodeBuild_Tag], predicate => 1);
  has TimeoutInMinutes => (is => 'ro', isa => Int, predicate => 1);
  has VpcConfig => (is => 'ro', isa => CodeBuild_VpcConfig, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateProject');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CodeBuild::UpdateProjectOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SecondarySourceVersions' => {
                                              'class' => 'Paws::CodeBuild::ProjectSourceVersion',
                                              'type' => 'ArrayRef[CodeBuild_ProjectSourceVersion]'
                                            },
               'VpcConfig' => {
                                'type' => 'CodeBuild_VpcConfig',
                                'class' => 'Paws::CodeBuild::VpcConfig'
                              },
               'Description' => {
                                  'type' => 'Str'
                                },
               'ServiceRole' => {
                                  'type' => 'Str'
                                },
               'TimeoutInMinutes' => {
                                       'type' => 'Int'
                                     },
               'QueuedTimeoutInMinutes' => {
                                             'type' => 'Int'
                                           },
               'Source' => {
                             'type' => 'CodeBuild_ProjectSource',
                             'class' => 'Paws::CodeBuild::ProjectSource'
                           },
               'Tags' => {
                           'class' => 'Paws::CodeBuild::Tag',
                           'type' => 'ArrayRef[CodeBuild_Tag]'
                         },
               'LogsConfig' => {
                                 'class' => 'Paws::CodeBuild::LogsConfig',
                                 'type' => 'CodeBuild_LogsConfig'
                               },
               'Cache' => {
                            'type' => 'CodeBuild_ProjectCache',
                            'class' => 'Paws::CodeBuild::ProjectCache'
                          },
               'SecondaryArtifacts' => {
                                         'class' => 'Paws::CodeBuild::ProjectArtifacts',
                                         'type' => 'ArrayRef[CodeBuild_ProjectArtifacts]'
                                       },
               'Environment' => {
                                  'type' => 'CodeBuild_ProjectEnvironment',
                                  'class' => 'Paws::CodeBuild::ProjectEnvironment'
                                },
               'SecondarySources' => {
                                       'type' => 'ArrayRef[CodeBuild_ProjectSource]',
                                       'class' => 'Paws::CodeBuild::ProjectSource'
                                     },
               'EncryptionKey' => {
                                    'type' => 'Str'
                                  },
               'BadgeEnabled' => {
                                   'type' => 'Bool'
                                 },
               'SourceVersion' => {
                                    'type' => 'Str'
                                  },
               'Name' => {
                           'type' => 'Str'
                         },
               'Artifacts' => {
                                'type' => 'CodeBuild_ProjectArtifacts',
                                'class' => 'Paws::CodeBuild::ProjectArtifacts'
                              }
             },
  'NameInRequest' => {
                       'Description' => 'description',
                       'SecondarySourceVersions' => 'secondarySourceVersions',
                       'VpcConfig' => 'vpcConfig',
                       'QueuedTimeoutInMinutes' => 'queuedTimeoutInMinutes',
                       'ServiceRole' => 'serviceRole',
                       'TimeoutInMinutes' => 'timeoutInMinutes',
                       'Tags' => 'tags',
                       'Source' => 'source',
                       'LogsConfig' => 'logsConfig',
                       'SecondaryArtifacts' => 'secondaryArtifacts',
                       'Environment' => 'environment',
                       'Cache' => 'cache',
                       'BadgeEnabled' => 'badgeEnabled',
                       'EncryptionKey' => 'encryptionKey',
                       'SecondarySources' => 'secondarySources',
                       'Artifacts' => 'artifacts',
                       'SourceVersion' => 'sourceVersion',
                       'Name' => 'name'
                     },
  'IsRequired' => {
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::UpdateProject - Arguments for method UpdateProject on L<Paws::CodeBuild>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateProject on the
L<AWS CodeBuild|Paws::CodeBuild> service. Use the attributes of this class
as arguments to method UpdateProject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateProject.

=head1 SYNOPSIS

    my $codebuild = Paws->service('CodeBuild');
    my $UpdateProjectOutput = $codebuild->UpdateProject(
      Name      => 'MyNonEmptyString',
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
      },    # OPTIONAL
      BadgeEnabled => 1,    # OPTIONAL
      Cache        => {
        Type     => 'NO_CACHE',    # values: NO_CACHE, S3, LOCAL
        Location => 'MyString',    # OPTIONAL
        Modes    => [
          'LOCAL_DOCKER_LAYER_CACHE',
          ... # values: LOCAL_DOCKER_LAYER_CACHE, LOCAL_SOURCE_CACHE, LOCAL_CUSTOM_CACHE
        ],    # OPTIONAL
      },    # OPTIONAL
      Description   => 'MyProjectDescription',    # OPTIONAL
      EncryptionKey => 'MyNonEmptyString',        # OPTIONAL
      Environment   => {
        ComputeType => 'BUILD_GENERAL1_SMALL'
        , # values: BUILD_GENERAL1_SMALL, BUILD_GENERAL1_MEDIUM, BUILD_GENERAL1_LARGE, BUILD_GENERAL1_2XLARGE
        Image => 'MyNonEmptyString',    # min: 1
        Type  => 'WINDOWS_CONTAINER'
        , # values: WINDOWS_CONTAINER, LINUX_CONTAINER, LINUX_GPU_CONTAINER, ARM_CONTAINER
        Certificate          => 'MyString',    # OPTIONAL
        EnvironmentVariables => [
          {
            Name  => 'MyNonEmptyString',       # min: 1
            Value => 'MyString',               # OPTIONAL
            Type  => 'PLAINTEXT'
            ,    # values: PLAINTEXT, PARAMETER_STORE, SECRETS_MANAGER; OPTIONAL
          },
          ...
        ],       # OPTIONAL
        ImagePullCredentialsType =>
          'CODEBUILD',    # values: CODEBUILD, SERVICE_ROLE; OPTIONAL
        PrivilegedMode     => 1,    # OPTIONAL
        RegistryCredential => {
          Credential         => 'MyNonEmptyString',    # min: 1
          CredentialProvider => 'SECRETS_MANAGER',     # values: SECRETS_MANAGER

        },    # OPTIONAL
      },    # OPTIONAL
      LogsConfig => {
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
      SecondarySourceVersions => [
        {
          SourceIdentifier => 'MyString',     # OPTIONAL
          SourceVersion    => 'MyString',     # OPTIONAL

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
          Buildspec           => 'MyString',    # OPTIONAL
          GitCloneDepth       => 1,             # OPTIONAL
          GitSubmodulesConfig => {
            FetchSubmodules => 1,               # OPTIONAL

          },    # OPTIONAL
          InsecureSsl       => 1,             # OPTIONAL
          Location          => 'MyString',    # OPTIONAL
          ReportBuildStatus => 1,             # OPTIONAL
          SourceIdentifier  => 'MyString',    # OPTIONAL
        },
        ...
      ],                                      # OPTIONAL
      ServiceRole => 'MyNonEmptyString',      # OPTIONAL
      Source      => {
        Type => 'CODECOMMIT'
        , # values: CODECOMMIT, CODEPIPELINE, GITHUB, S3, BITBUCKET, GITHUB_ENTERPRISE, NO_SOURCE
        Auth => {
          Type     => 'OAUTH',       # values: OAUTH
          Resource => 'MyString',    # OPTIONAL
        },    # OPTIONAL
        Buildspec           => 'MyString',    # OPTIONAL
        GitCloneDepth       => 1,             # OPTIONAL
        GitSubmodulesConfig => {
          FetchSubmodules => 1,               # OPTIONAL

        },    # OPTIONAL
        InsecureSsl       => 1,             # OPTIONAL
        Location          => 'MyString',    # OPTIONAL
        ReportBuildStatus => 1,             # OPTIONAL
        SourceIdentifier  => 'MyString',    # OPTIONAL
      },    # OPTIONAL
      SourceVersion => 'MyString',    # OPTIONAL
      Tags          => [
        {
          Key   => 'MyKeyInput',      # min: 1, max: 127; OPTIONAL
          Value => 'MyValueInput',    # min: 1, max: 255; OPTIONAL
        },
        ...
      ],                              # OPTIONAL
      TimeoutInMinutes => 1,          # OPTIONAL
      VpcConfig        => {
        SecurityGroupIds => [
          'MyNonEmptyString', ...     # min: 1
        ],                            # max: 5; OPTIONAL
        Subnets => [
          'MyNonEmptyString', ...     # min: 1
        ],                            # max: 16; OPTIONAL
        VpcId => 'MyNonEmptyString',  # min: 1
      },    # OPTIONAL
    );

    # Results:
    my $Project = $UpdateProjectOutput->Project;

    # Returns a L<Paws::CodeBuild::UpdateProjectOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codebuild/UpdateProject>

=head1 ATTRIBUTES


=head2 Artifacts => CodeBuild_ProjectArtifacts

Information to be changed about the build output artifacts for the
build project.



=head2 BadgeEnabled => Bool

Set this to true to generate a publicly accessible URL for your
project's build badge.



=head2 Cache => CodeBuild_ProjectCache

Stores recently used information so that it can be quickly accessed at
a later time.



=head2 Description => Str

A new or replacement description of the build project.



=head2 EncryptionKey => Str

The AWS Key Management Service (AWS KMS) customer master key (CMK) to
be used for encrypting the build output artifacts.

You can use a cross-account KMS key to encrypt the build output
artifacts if your service role has permission to that key.

You can specify either the Amazon Resource Name (ARN) of the CMK or, if
available, the CMK's alias (using the format C<alias/I<alias-name> >).



=head2 Environment => CodeBuild_ProjectEnvironment

Information to be changed about the build environment for the build
project.



=head2 LogsConfig => CodeBuild_LogsConfig

Information about logs for the build project. A project can create logs
in Amazon CloudWatch Logs, logs in an S3 bucket, or both.



=head2 B<REQUIRED> Name => Str

The name of the build project.

You cannot change a build project's name.



=head2 QueuedTimeoutInMinutes => Int

The number of minutes a build is allowed to be queued before it times
out.



=head2 SecondaryArtifacts => ArrayRef[CodeBuild_ProjectArtifacts]

An array of C<ProjectSource> objects.



=head2 SecondarySources => ArrayRef[CodeBuild_ProjectSource]

An array of C<ProjectSource> objects.



=head2 SecondarySourceVersions => ArrayRef[CodeBuild_ProjectSourceVersion]

An array of C<ProjectSourceVersion> objects. If
C<secondarySourceVersions> is specified at the build level, then they
take over these C<secondarySourceVersions> (at the project level).



=head2 ServiceRole => Str

The replacement ARN of the AWS Identity and Access Management (IAM)
role that enables AWS CodeBuild to interact with dependent AWS services
on behalf of the AWS account.



=head2 Source => CodeBuild_ProjectSource

Information to be changed about the build input source code for the
build project.



=head2 SourceVersion => Str

A version of the build input to be built for this project. If not
specified, the latest version is used. If specified, it must be one of:

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

If C<sourceVersion> is specified at the build level, then that version
takes precedence over this C<sourceVersion> (at the project level).

For more information, see Source Version Sample with CodeBuild
(https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html)
in the I<AWS CodeBuild User Guide>.



=head2 Tags => ArrayRef[CodeBuild_Tag]

The replacement set of tags for this build project.

These tags are available for use by AWS services that support AWS
CodeBuild build project tags.



=head2 TimeoutInMinutes => Int

The replacement value in minutes, from 5 to 480 (8 hours), for AWS
CodeBuild to wait before timing out any related build that did not get
marked as completed.



=head2 VpcConfig => CodeBuild_VpcConfig

VpcConfig enables AWS CodeBuild to access resources in an Amazon VPC.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateProject in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

