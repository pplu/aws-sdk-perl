package Paws::CodeBuild::Build;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has Artifacts => (is => 'ro', isa => 'Paws::CodeBuild::BuildArtifacts', request_name => 'artifacts', traits => ['NameInRequest']);
  has BuildComplete => (is => 'ro', isa => 'Bool', request_name => 'buildComplete', traits => ['NameInRequest']);
  has BuildStatus => (is => 'ro', isa => 'Str', request_name => 'buildStatus', traits => ['NameInRequest']);
  has Cache => (is => 'ro', isa => 'Paws::CodeBuild::ProjectCache', request_name => 'cache', traits => ['NameInRequest']);
  has CurrentPhase => (is => 'ro', isa => 'Str', request_name => 'currentPhase', traits => ['NameInRequest']);
  has EncryptionKey => (is => 'ro', isa => 'Str', request_name => 'encryptionKey', traits => ['NameInRequest']);
  has EndTime => (is => 'ro', isa => 'Str', request_name => 'endTime', traits => ['NameInRequest']);
  has Environment => (is => 'ro', isa => 'Paws::CodeBuild::ProjectEnvironment', request_name => 'environment', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest']);
  has Initiator => (is => 'ro', isa => 'Str', request_name => 'initiator', traits => ['NameInRequest']);
  has Logs => (is => 'ro', isa => 'Paws::CodeBuild::LogsLocation', request_name => 'logs', traits => ['NameInRequest']);
  has NetworkInterface => (is => 'ro', isa => 'Paws::CodeBuild::NetworkInterface', request_name => 'networkInterface', traits => ['NameInRequest']);
  has Phases => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::BuildPhase]', request_name => 'phases', traits => ['NameInRequest']);
  has ProjectName => (is => 'ro', isa => 'Str', request_name => 'projectName', traits => ['NameInRequest']);
  has QueuedTimeoutInMinutes => (is => 'ro', isa => 'Int', request_name => 'queuedTimeoutInMinutes', traits => ['NameInRequest']);
  has ResolvedSourceVersion => (is => 'ro', isa => 'Str', request_name => 'resolvedSourceVersion', traits => ['NameInRequest']);
  has SecondaryArtifacts => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::BuildArtifacts]', request_name => 'secondaryArtifacts', traits => ['NameInRequest']);
  has SecondarySources => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::ProjectSource]', request_name => 'secondarySources', traits => ['NameInRequest']);
  has SecondarySourceVersions => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::ProjectSourceVersion]', request_name => 'secondarySourceVersions', traits => ['NameInRequest']);
  has ServiceRole => (is => 'ro', isa => 'Str', request_name => 'serviceRole', traits => ['NameInRequest']);
  has Source => (is => 'ro', isa => 'Paws::CodeBuild::ProjectSource', request_name => 'source', traits => ['NameInRequest']);
  has SourceVersion => (is => 'ro', isa => 'Str', request_name => 'sourceVersion', traits => ['NameInRequest']);
  has StartTime => (is => 'ro', isa => 'Str', request_name => 'startTime', traits => ['NameInRequest']);
  has TimeoutInMinutes => (is => 'ro', isa => 'Int', request_name => 'timeoutInMinutes', traits => ['NameInRequest']);
  has VpcConfig => (is => 'ro', isa => 'Paws::CodeBuild::VpcConfig', request_name => 'vpcConfig', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::Build

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeBuild::Build object:

  $service_obj->Method(Att1 => { Arn => $value, ..., VpcConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeBuild::Build object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Information about a build.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the build.


=head2 Artifacts => L<Paws::CodeBuild::BuildArtifacts>

  Information about the output artifacts for the build.


=head2 BuildComplete => Bool

  Whether the build is complete. True if complete; otherwise, false.


=head2 BuildStatus => Str

  The current status of the build. Valid values include:

=over

=item *

C<FAILED>: The build failed.

=item *

C<FAULT>: The build faulted.

=item *

C<IN_PROGRESS>: The build is still in progress.

=item *

C<STOPPED>: The build stopped.

=item *

C<SUCCEEDED>: The build succeeded.

=item *

C<TIMED_OUT>: The build timed out.

=back



=head2 Cache => L<Paws::CodeBuild::ProjectCache>

  Information about the cache for the build.


=head2 CurrentPhase => Str

  The current build phase.


=head2 EncryptionKey => Str

  The AWS Key Management Service (AWS KMS) customer master key (CMK) to
be used for encrypting the build output artifacts.

This is expressed either as the Amazon Resource Name (ARN) of the CMK
or, if specified, the CMK's alias (using the format
C<alias/I<alias-name> >).


=head2 EndTime => Str

  When the build process ended, expressed in Unix time format.


=head2 Environment => L<Paws::CodeBuild::ProjectEnvironment>

  Information about the build environment for this build.


=head2 Id => Str

  The unique ID for the build.


=head2 Initiator => Str

  The entity that started the build. Valid values include:

=over

=item *

If AWS CodePipeline started the build, the pipeline's name (for
example, C<codepipeline/my-demo-pipeline>).

=item *

If an AWS Identity and Access Management (IAM) user started the build,
the user's name (for example, C<MyUserName>).

=item *

If the Jenkins plugin for AWS CodeBuild started the build, the string
C<CodeBuild-Jenkins-Plugin>.

=back



=head2 Logs => L<Paws::CodeBuild::LogsLocation>

  Information about the build's logs in Amazon CloudWatch Logs.


=head2 NetworkInterface => L<Paws::CodeBuild::NetworkInterface>

  Describes a network interface.


=head2 Phases => ArrayRef[L<Paws::CodeBuild::BuildPhase>]

  Information about all previous build phases that are complete and
information about any current build phase that is not yet complete.


=head2 ProjectName => Str

  The name of the AWS CodeBuild project.


=head2 QueuedTimeoutInMinutes => Int

  The number of minutes a build is allowed to be queued before it times
out.


=head2 ResolvedSourceVersion => Str

  An identifier for the version of this build's source code.

=over

=item *

For AWS CodeCommit, GitHub, GitHub Enterprise, and BitBucket, the
commit ID.

=item *

For AWS CodePipeline, the source revision provided by AWS CodePipeline.

=item *

For Amazon Simple Storage Service (Amazon S3), this does not apply.

=back



=head2 SecondaryArtifacts => ArrayRef[L<Paws::CodeBuild::BuildArtifacts>]

  An array of C<ProjectArtifacts> objects.


=head2 SecondarySources => ArrayRef[L<Paws::CodeBuild::ProjectSource>]

  An array of C<ProjectSource> objects.


=head2 SecondarySourceVersions => ArrayRef[L<Paws::CodeBuild::ProjectSourceVersion>]

  An array of C<ProjectSourceVersion> objects. Each
C<ProjectSourceVersion> must be one of:

=over

=item *

For AWS CodeCommit: the commit ID to use.

=item *

For GitHub: the commit ID, pull request ID, branch name, or tag name
that corresponds to the version of the source code you want to build.
If a pull request ID is specified, it must use the format
C<pr/pull-request-ID> (for example, C<pr/25>). If a branch name is
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



=head2 ServiceRole => Str

  The name of a service role used for this build.


=head2 Source => L<Paws::CodeBuild::ProjectSource>

  Information about the source code to be built.


=head2 SourceVersion => Str

  Any version identifier for the version of the source code to be built.


=head2 StartTime => Str

  When the build process started, expressed in Unix time format.


=head2 TimeoutInMinutes => Int

  How long, in minutes, for AWS CodeBuild to wait before timing out this
build if it does not get marked as completed.


=head2 VpcConfig => L<Paws::CodeBuild::VpcConfig>

  If your AWS CodeBuild project accesses resources in an Amazon VPC, you
provide this parameter that identifies the VPC ID and the list of
security group IDs and subnet IDs. The security groups and subnets must
belong to the same VPC. You must provide at least one security group
and one subnet ID.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

