package Paws::Glue::JobRun;
  use Moose;
  has AllocatedCapacity => (is => 'ro', isa => 'Int');
  has Arguments => (is => 'ro', isa => 'Paws::Glue::GenericMap');
  has Attempt => (is => 'ro', isa => 'Int');
  has CompletedOn => (is => 'ro', isa => 'Str');
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has JobName => (is => 'ro', isa => 'Str');
  has JobRunState => (is => 'ro', isa => 'Str');
  has LastModifiedOn => (is => 'ro', isa => 'Str');
  has PredecessorRuns => (is => 'ro', isa => 'ArrayRef[Paws::Glue::Predecessor]');
  has PreviousRunId => (is => 'ro', isa => 'Str');
  has StartedOn => (is => 'ro', isa => 'Str');
  has TriggerName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::JobRun

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::JobRun object:

  $service_obj->Method(Att1 => { AllocatedCapacity => $value, ..., TriggerName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::JobRun object:

  $result = $service_obj->Method(...);
  $result->Att1->AllocatedCapacity

=head1 DESCRIPTION

Contains information about a job run.

=head1 ATTRIBUTES


=head2 AllocatedCapacity => Int

  The amount of infrastructure capacity allocated to this job run.


=head2 Arguments => L<Paws::Glue::GenericMap>

  The job arguments associated with this run.


=head2 Attempt => Int

  The number or the attempt to run this job.


=head2 CompletedOn => Str

  The date and time this job run completed.


=head2 ErrorMessage => Str

  An error message associated with this job run.


=head2 Id => Str

  The ID of this job run.


=head2 JobName => Str

  The name of the job being run.


=head2 JobRunState => Str

  The current state of the job run.


=head2 LastModifiedOn => Str

  The last time this job run was modified.


=head2 PredecessorRuns => ArrayRef[L<Paws::Glue::Predecessor>]

  A list of predecessors to this job run.


=head2 PreviousRunId => Str

  The ID of the previous run of this job.


=head2 StartedOn => Str

  The date and time at which this job run was started.


=head2 TriggerName => Str

  The name of the trigger for this job run.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

