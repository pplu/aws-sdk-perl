
package Paws::CodeBuild::UpdateProject;
  use Moose;
  has Artifacts => (is => 'ro', isa => 'Paws::CodeBuild::ProjectArtifacts', traits => ['NameInRequest'], request_name => 'artifacts' );
  has BadgeEnabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'badgeEnabled' );
  has Cache => (is => 'ro', isa => 'Paws::CodeBuild::ProjectCache', traits => ['NameInRequest'], request_name => 'cache' );
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has EncryptionKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'encryptionKey' );
  has Environment => (is => 'ro', isa => 'Paws::CodeBuild::ProjectEnvironment', traits => ['NameInRequest'], request_name => 'environment' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has ServiceRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceRole' );
  has Source => (is => 'ro', isa => 'Paws::CodeBuild::ProjectSource', traits => ['NameInRequest'], request_name => 'source' );
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::Tag]', traits => ['NameInRequest'], request_name => 'tags' );
  has TimeoutInMinutes => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'timeoutInMinutes' );
  has VpcConfig => (is => 'ro', isa => 'Paws::CodeBuild::VpcConfig', traits => ['NameInRequest'], request_name => 'vpcConfig' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateProject');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeBuild::UpdateProjectOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
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
        type     => 'CODEPIPELINE',    # values: CODEPIPELINE, S3, NO_ARTIFACTS
        location => 'MyString',        # OPTIONAL
        name     => 'MyString',        # OPTIONAL
        namespaceType => 'NONE',       # values: NONE, BUILD_ID; OPTIONAL
        packaging     => 'NONE',       # values: NONE, ZIP; OPTIONAL
        path          => 'MyString',   # OPTIONAL
      },    # OPTIONAL
      BadgeEnabled => 1,    # OPTIONAL
      Cache        => {
        type     => 'NO_CACHE',    # values: NO_CACHE, S3
        location => 'MyString',    # OPTIONAL
      },    # OPTIONAL
      Description   => 'MyProjectDescription',    # OPTIONAL
      EncryptionKey => 'MyNonEmptyString',        # OPTIONAL
      Environment   => {
        computeType => 'BUILD_GENERAL1_SMALL'
        , # values: BUILD_GENERAL1_SMALL, BUILD_GENERAL1_MEDIUM, BUILD_GENERAL1_LARGE
        image => 'MyNonEmptyString',    # min: 1
        type =>
          'WINDOWS_CONTAINER',    # values: WINDOWS_CONTAINER, LINUX_CONTAINER
        certificate          => 'MyString',    # OPTIONAL
        environmentVariables => [
          {
            name  => 'MyNonEmptyString',       # min: 1
            value => 'MyString',               # OPTIONAL
            type => 'PLAINTEXT',  # values: PLAINTEXT, PARAMETER_STORE; OPTIONAL
          },
          ...
        ],                        # OPTIONAL
        privilegedMode => 1,
      },    # OPTIONAL
      ServiceRole => 'MyNonEmptyString',    # OPTIONAL
      Source      => {
        type => 'CODECOMMIT'
        , # values: CODECOMMIT, CODEPIPELINE, GITHUB, S3, BITBUCKET, GITHUB_ENTERPRISE
        auth => {
          type     => 'OAUTH',       # values: OAUTH
          resource => 'MyString',    # OPTIONAL
        },    # OPTIONAL
        buildspec         => 'MyString',    # OPTIONAL
        gitCloneDepth     => 1,             # OPTIONAL
        insecureSsl       => 1,
        location          => 'MyString',    # OPTIONAL
        reportBuildStatus => 1,
      },    # OPTIONAL
      Tags => [
        {
          key   => 'MyKeyInput',      # min: 1, max: 127; OPTIONAL
          value => 'MyValueInput',    # min: 1, max: 255; OPTIONAL
        },
        ...
      ],                              # OPTIONAL
      TimeoutInMinutes => 1,          # OPTIONAL
      VpcConfig        => {
        securityGroupIds => [
          'MyNonEmptyString', ...     # min: 1
        ],                            # max: 5; OPTIONAL
        subnets => [
          'MyNonEmptyString', ...     # min: 1
        ],                            # max: 16; OPTIONAL
        vpcId => 'MyNonEmptyString',  # min: 1
      },    # OPTIONAL
    );

    # Results:
    my $Project = $UpdateProjectOutput->Project;

    # Returns a L<Paws::CodeBuild::UpdateProjectOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codebuild/UpdateProject>

=head1 ATTRIBUTES


=head2 Artifacts => L<Paws::CodeBuild::ProjectArtifacts>

Information to be changed about the build output artifacts for the
build project.



=head2 BadgeEnabled => Bool

Set this to true to generate a publicly-accessible URL for your
project's build badge.



=head2 Cache => L<Paws::CodeBuild::ProjectCache>

Stores recently used information so that it can be quickly accessed at
a later time.



=head2 Description => Str

A new or replacement description of the build project.



=head2 EncryptionKey => Str

The replacement AWS Key Management Service (AWS KMS) customer master
key (CMK) to be used for encrypting the build output artifacts.

You can specify either the CMK's Amazon Resource Name (ARN) or, if
available, the CMK's alias (using the format C<alias/I<alias-name> >).



=head2 Environment => L<Paws::CodeBuild::ProjectEnvironment>

Information to be changed about the build environment for the build
project.



=head2 B<REQUIRED> Name => Str

The name of the build project.

You cannot change a build project's name.



=head2 ServiceRole => Str

The replacement ARN of the AWS Identity and Access Management (IAM)
role that enables AWS CodeBuild to interact with dependent AWS services
on behalf of the AWS account.



=head2 Source => L<Paws::CodeBuild::ProjectSource>

Information to be changed about the build input source code for the
build project.



=head2 Tags => ArrayRef[L<Paws::CodeBuild::Tag>]

The replacement set of tags for this build project.

These tags are available for use by AWS services that support AWS
CodeBuild build project tags.



=head2 TimeoutInMinutes => Int

The replacement value in minutes, from 5 to 480 (8 hours), for AWS
CodeBuild to wait before timing out any related build that did not get
marked as completed.



=head2 VpcConfig => L<Paws::CodeBuild::VpcConfig>

VpcConfig enables AWS CodeBuild to access resources in an Amazon VPC.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateProject in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

