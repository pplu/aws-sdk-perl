package Paws::Robomaker::ProgressDetail;
  use Moose;
  has CurrentProgress => (is => 'ro', isa => 'Str', request_name => 'currentProgress', traits => ['NameInRequest']);
  has EstimatedTimeRemainingSeconds => (is => 'ro', isa => 'Int', request_name => 'estimatedTimeRemainingSeconds', traits => ['NameInRequest']);
  has PercentDone => (is => 'ro', isa => 'Num', request_name => 'percentDone', traits => ['NameInRequest']);
  has TargetResource => (is => 'ro', isa => 'Str', request_name => 'targetResource', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::ProgressDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Robomaker::ProgressDetail object:

  $service_obj->Method(Att1 => { CurrentProgress => $value, ..., TargetResource => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Robomaker::ProgressDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->CurrentProgress

=head1 DESCRIPTION

Information about the progress of a deployment job.

=head1 ATTRIBUTES


=head2 CurrentProgress => Str

  The current progress status.

=over

=item Validating

Validating the deployment.

=item Downloading/Extracting

Downloading and extracting the bundle on the robot.

=item Executing pre-launch script(s)

Executing pre-launch script(s) if provided.

=item Launching

Launching the robot application.

=item Executing post-launch script(s)

Executing post-launch script(s) if provided.

=item Finished

Deployment is complete.

=back



=head2 EstimatedTimeRemainingSeconds => Int

  Estimated amount of time in seconds remaining in the step. This
currently only applies to the C<Downloading/Extracting> step of the
deployment. It is empty for other steps.


=head2 PercentDone => Num

  Precentage of the step that is done. This currently only applies to the
C<Downloading/Extracting> step of the deployment. It is empty for other
steps.


=head2 TargetResource => Str

  The Amazon Resource Name (ARN) of the deployment job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

