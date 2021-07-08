
package Paws::Macie2::UpdateClassificationJob;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobId', required => 1);
  has JobStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobStatus', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateClassificationJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/jobs/{jobId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Macie2::UpdateClassificationJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::UpdateClassificationJob - Arguments for method UpdateClassificationJob on L<Paws::Macie2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateClassificationJob on the
L<Amazon Macie 2|Paws::Macie2> service. Use the attributes of this class
as arguments to method UpdateClassificationJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateClassificationJob.

=head1 SYNOPSIS

    my $macie2 = Paws->service('Macie2');
    my $UpdateClassificationJobResponse = $macie2->UpdateClassificationJob(
      JobId     => 'My__string',
      JobStatus => 'RUNNING',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie2/UpdateClassificationJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The unique identifier for the classification job.



=head2 B<REQUIRED> JobStatus => Str

The new status for the job. Valid values are:

=over

=item *

CANCELLED - Stops the job permanently and cancels it. This value is
valid only if the job's current status is IDLE, PAUSED, RUNNING, or
USER_PAUSED.

If you specify this value and the job's current status is RUNNING,
Amazon Macie immediately begins to stop all processing tasks for the
job. You can't resume or restart a job after you cancel it.

=item *

RUNNING - Resumes the job. This value is valid only if the job's
current status is USER_PAUSED.

If you paused the job while it was actively running and you specify
this value less than 30 days after you paused the job, Macie
immediately resumes processing from the point where you paused the job.
Otherwise, Macie resumes the job according to the schedule and other
settings for the job.

=item *

USER_PAUSED - Pauses the job temporarily. This value is valid only if
the job's current status is IDLE, PAUSED, or RUNNING. If you specify
this value and the job's current status is RUNNING, Macie immediately
begins to pause all processing tasks for the job.

If you pause a one-time job and you don't resume it within 30 days, the
job expires and Macie cancels the job. If you pause a recurring job
when its status is RUNNING and you don't resume it within 30 days, the
job run expires and Macie cancels the run. To check the expiration
date, refer to the UserPausedDetails.jobExpiresAt property.

=back


Valid values are: C<"RUNNING">, C<"PAUSED">, C<"CANCELLED">, C<"COMPLETE">, C<"IDLE">, C<"USER_PAUSED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateClassificationJob in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

