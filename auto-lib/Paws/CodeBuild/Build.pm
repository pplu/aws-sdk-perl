package Paws::CodeBuild::Build;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', xmlname => 'arn', request_name => 'arn', traits => ['Unwrapped','NameInRequest']);
  has Artifacts => (is => 'ro', isa => 'Paws::CodeBuild::BuildArtifacts', xmlname => 'artifacts', request_name => 'artifacts', traits => ['Unwrapped','NameInRequest']);
  has BuildComplete => (is => 'ro', isa => 'Bool', xmlname => 'buildComplete', request_name => 'buildComplete', traits => ['Unwrapped','NameInRequest']);
  has BuildStatus => (is => 'ro', isa => 'Str', xmlname => 'buildStatus', request_name => 'buildStatus', traits => ['Unwrapped','NameInRequest']);
  has CurrentPhase => (is => 'ro', isa => 'Str', xmlname => 'currentPhase', request_name => 'currentPhase', traits => ['Unwrapped','NameInRequest']);
  has EndTime => (is => 'ro', isa => 'Str', xmlname => 'endTime', request_name => 'endTime', traits => ['Unwrapped','NameInRequest']);
  has Environment => (is => 'ro', isa => 'Paws::CodeBuild::ProjectEnvironment', xmlname => 'environment', request_name => 'environment', traits => ['Unwrapped','NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', xmlname => 'id', request_name => 'id', traits => ['Unwrapped','NameInRequest']);
  has Initiator => (is => 'ro', isa => 'Str', xmlname => 'initiator', request_name => 'initiator', traits => ['Unwrapped','NameInRequest']);
  has Logs => (is => 'ro', isa => 'Paws::CodeBuild::LogsLocation', xmlname => 'logs', request_name => 'logs', traits => ['Unwrapped','NameInRequest']);
  has Phases => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::BuildPhase]', xmlname => 'phases', request_name => 'phases', traits => ['Unwrapped','NameInRequest']);
  has ProjectName => (is => 'ro', isa => 'Str', xmlname => 'projectName', request_name => 'projectName', traits => ['Unwrapped','NameInRequest']);
  has Source => (is => 'ro', isa => 'Paws::CodeBuild::ProjectSource', xmlname => 'source', request_name => 'source', traits => ['Unwrapped','NameInRequest']);
  has SourceVersion => (is => 'ro', isa => 'Str', xmlname => 'sourceVersion', request_name => 'sourceVersion', traits => ['Unwrapped','NameInRequest']);
  has StartTime => (is => 'ro', isa => 'Str', xmlname => 'startTime', request_name => 'startTime', traits => ['Unwrapped','NameInRequest']);
  has TimeoutInMinutes => (is => 'ro', isa => 'Int', xmlname => 'timeoutInMinutes', request_name => 'timeoutInMinutes', traits => ['Unwrapped','NameInRequest']);
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

  $service_obj->Method(Att1 => { Arn => $value, ..., TimeoutInMinutes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeBuild::Build object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Information about a build.

=head1 ATTRIBUTES


=head2 Arn => Str

  The build's Amazon Resource Name (ARN).


=head2 Artifacts => L<Paws::CodeBuild::BuildArtifacts>

  Information about the build's output artifacts.


=head2 BuildComplete => Bool

  Whether the build has finished. Valid values include true if completed;
otherwise, false.


=head2 BuildStatus => Str

  The build's current status. Valid values include:

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



=head2 CurrentPhase => Str

  The build's current build phase.


=head2 EndTime => Str

  When the build process ended, expressed in Unix time format.


=head2 Environment => L<Paws::CodeBuild::ProjectEnvironment>

  Information about the build environment for this build.


=head2 Id => Str

  The build's unique ID.


=head2 Initiator => Str

  The entity that started the build. Valid values include:

=over

=item *

If AWS CodePipeline started the build, the pipeline's name, for example
C<codepipeline/my-demo-pipeline>.

=item *

If an AWS Identity and Access Management (IAM) user started the build,
the user's name, for example C<MyUserName>.

=item *

If the Jenkins plugin for AWS CodeBuild started the build, the string
C<CodeBuild-Jenkins-Plugin>.

=back



=head2 Logs => L<Paws::CodeBuild::LogsLocation>

  Information about the build's logs in Amazon CloudWatch Logs.


=head2 Phases => ArrayRef[L<Paws::CodeBuild::BuildPhase>]

  Information about all previous build phases that have completed, and
information about any current build phase that has not yet completed.


=head2 ProjectName => Str

  The build project's name.


=head2 Source => L<Paws::CodeBuild::ProjectSource>

  Information about the source code to be built.


=head2 SourceVersion => Str

  Any version identifier for the version of the source code to be built.


=head2 StartTime => Str

  When the build process started, expressed in Unix time format.


=head2 TimeoutInMinutes => Int

  How long in minutes for AWS CodeBuild to wait to timeout this build if
it does not get marked as completed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

