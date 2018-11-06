
package Paws::IoTJobsData::StartNextPendingJobExecution;
  use Moose;
  has StatusDetails => (is => 'ro', isa => 'Paws::IoTJobsData::DetailsMap', traits => ['NameInRequest'], request_name => 'statusDetails');
  has StepTimeoutInMinutes => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'stepTimeoutInMinutes');
  has ThingName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'thingName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartNextPendingJobExecution');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/things/{thingName}/jobs/$next');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTJobsData::StartNextPendingJobExecutionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTJobsData::StartNextPendingJobExecution - Arguments for method StartNextPendingJobExecution on L<Paws::IoTJobsData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartNextPendingJobExecution on the
L<AWS IoT Jobs Data Plane|Paws::IoTJobsData> service. Use the attributes of this class
as arguments to method StartNextPendingJobExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartNextPendingJobExecution.

=head1 SYNOPSIS

    my $data.jobs.iot = Paws->service('IoTJobsData');
    my $StartNextPendingJobExecutionResponse =
      $data . jobs . iot->StartNextPendingJobExecution(
      ThingName     => 'MyThingName',
      StatusDetails => {
        'MyDetailsKey' =>
          'MyDetailsValue',    # key: min: 1, max: 128, value: min: 1, max: 1024
      },    # OPTIONAL
      StepTimeoutInMinutes => 1,    # OPTIONAL
      );

    # Results:
    my $Execution = $StartNextPendingJobExecutionResponse->Execution;

  # Returns a L<Paws::IoTJobsData::StartNextPendingJobExecutionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/data.jobs.iot/StartNextPendingJobExecution>

=head1 ATTRIBUTES


=head2 StatusDetails => L<Paws::IoTJobsData::DetailsMap>

A collection of name/value pairs that describe the status of the job
execution. If not specified, the statusDetails are unchanged.



=head2 StepTimeoutInMinutes => Int

Specifies the amount of time this device has to finish execution of
this job. If the job execution status is not set to a terminal state
before this timer expires, or before the timer is reset (by calling
C<UpdateJobExecution>, setting the status to C<IN_PROGRESS> and
specifying a new timeout value in field C<stepTimeoutInMinutes>) the
job execution status will be automatically set to C<TIMED_OUT>. Note
that setting this timeout has no effect on that job execution timeout
which may have been specified when the job was created (C<CreateJob>
using field C<timeoutConfig>).



=head2 B<REQUIRED> ThingName => Str

The name of the thing associated with the device.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartNextPendingJobExecution in L<Paws::IoTJobsData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

