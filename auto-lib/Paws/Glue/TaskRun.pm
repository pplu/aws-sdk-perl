package Paws::Glue::TaskRun;
  use Moose;
  has CompletedOn => (is => 'ro', isa => 'Str');
  has ErrorString => (is => 'ro', isa => 'Str');
  has ExecutionTime => (is => 'ro', isa => 'Int');
  has LastModifiedOn => (is => 'ro', isa => 'Str');
  has LogGroupName => (is => 'ro', isa => 'Str');
  has Properties => (is => 'ro', isa => 'Paws::Glue::TaskRunProperties');
  has StartedOn => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has TaskRunId => (is => 'ro', isa => 'Str');
  has TransformId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::TaskRun

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::TaskRun object:

  $service_obj->Method(Att1 => { CompletedOn => $value, ..., TransformId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::TaskRun object:

  $result = $service_obj->Method(...);
  $result->Att1->CompletedOn

=head1 DESCRIPTION

The sampling parameters that are associated with the machine learning
transform.

=head1 ATTRIBUTES


=head2 CompletedOn => Str

  The last point in time that the requested task run was completed.


=head2 ErrorString => Str

  The list of error strings associated with this task run.


=head2 ExecutionTime => Int

  The amount of time (in seconds) that the task run consumed resources.


=head2 LastModifiedOn => Str

  The last point in time that the requested task run was updated.


=head2 LogGroupName => Str

  The names of the log group for secure logging, associated with this
task run.


=head2 Properties => L<Paws::Glue::TaskRunProperties>

  Specifies configuration properties associated with this task run.


=head2 StartedOn => Str

  The date and time that this task run started.


=head2 Status => Str

  The current status of the requested task run.


=head2 TaskRunId => Str

  The unique identifier for this task run.


=head2 TransformId => Str

  The unique identifier for the transform.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

