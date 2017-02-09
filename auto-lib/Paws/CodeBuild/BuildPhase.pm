package Paws::CodeBuild::BuildPhase;
  use Moose;
  has Contexts => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::PhaseContext]', request_name => 'contexts', traits => ['NameInRequest']);
  has DurationInSeconds => (is => 'ro', isa => 'Int', request_name => 'durationInSeconds', traits => ['NameInRequest']);
  has EndTime => (is => 'ro', isa => 'Str', request_name => 'endTime', traits => ['NameInRequest']);
  has PhaseStatus => (is => 'ro', isa => 'Str', request_name => 'phaseStatus', traits => ['NameInRequest']);
  has PhaseType => (is => 'ro', isa => 'Str', request_name => 'phaseType', traits => ['NameInRequest']);
  has StartTime => (is => 'ro', isa => 'Str', request_name => 'startTime', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::BuildPhase

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeBuild::BuildPhase object:

  $service_obj->Method(Att1 => { Contexts => $value, ..., StartTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeBuild::BuildPhase object:

  $result = $service_obj->Method(...);
  $result->Att1->Contexts

=head1 DESCRIPTION

Information about a stage for a build.

=head1 ATTRIBUTES


=head2 Contexts => ArrayRef[L<Paws::CodeBuild::PhaseContext>]

  Additional information about a build phase, especially to help
troubleshoot a failed build.


=head2 DurationInSeconds => Int

  How long, in seconds, between the starting and ending times of the
build's phase.


=head2 EndTime => Str

  When the build phase ended, expressed in Unix time format.


=head2 PhaseStatus => Str

  The current status of the build phase. Valid values include:

=over

=item *

C<FAILED>: The build phase failed.

=item *

C<FAULT>: The build phase faulted.

=item *

C<IN_PROGRESS>: The build phase is still in progress.

=item *

C<STOPPED>: The build phase stopped.

=item *

C<SUCCEEDED>: The build phase succeeded.

=item *

C<TIMED_OUT>: The build phase timed out.

=back



=head2 PhaseType => Str

  The name of the build phase. Valid values include:

=over

=item *

C<BUILD>: Core build activities typically occur in this build phase.

=item *

C<COMPLETED>: The build has been completed.

=item *

C<DOWNLOAD_SOURCE>: Source code is being downloaded in this build
phase.

=item *

C<FINALIZING>: The build process is completing in this build phase.

=item *

C<INSTALL>: Installation activities typically occur in this build
phase.

=item *

C<POST_BUILD>: Post-build activities typically occur in this build
phase.

=item *

C<PRE_BUILD>: Pre-build activities typically occur in this build phase.

=item *

C<PROVISIONING>: The build environment is being set up.

=item *

C<SUBMITTED>: The build has been submitted.

=item *

C<UPLOAD_ARTIFACTS>: Build output artifacts are being uploaded to the
output location.

=back



=head2 StartTime => Str

  When the build phase started, expressed in Unix time format.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

