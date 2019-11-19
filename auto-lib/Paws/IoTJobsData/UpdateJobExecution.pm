
package Paws::IoTJobsData::UpdateJobExecution;
  use Moo;
  use Types::Standard qw/Str Int Bool/;
  use Paws::IoTJobsData::Types qw/IoTJobsData_DetailsMap/;
  has ExecutionNumber => (is => 'ro', isa => Int, predicate => 1);
  has ExpectedVersion => (is => 'ro', isa => Int, predicate => 1);
  has IncludeJobDocument => (is => 'ro', isa => Bool, predicate => 1);
  has IncludeJobExecutionState => (is => 'ro', isa => Bool, predicate => 1);
  has JobId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Status => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has StatusDetails => (is => 'ro', isa => IoTJobsData_DetailsMap, predicate => 1);
  has StepTimeoutInMinutes => (is => 'ro', isa => Int, predicate => 1);
  has ThingName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateJobExecution');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/things/{thingName}/jobs/{jobId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoTJobsData::UpdateJobExecutionResponse');

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'IncludeJobDocument' => 'includeJobDocument',
                       'Status' => 'status',
                       'ExecutionNumber' => 'executionNumber',
                       'IncludeJobExecutionState' => 'includeJobExecutionState',
                       'StepTimeoutInMinutes' => 'stepTimeoutInMinutes',
                       'StatusDetails' => 'statusDetails',
                       'ExpectedVersion' => 'expectedVersion'
                     },
  'IsRequired' => {
                    'Status' => 1,
                    'ThingName' => 1,
                    'JobId' => 1
                  },
  'types' => {
               'Status' => {
                             'type' => 'Str'
                           },
               'IncludeJobDocument' => {
                                         'type' => 'Bool'
                                       },
               'ThingName' => {
                                'type' => 'Str'
                              },
               'StatusDetails' => {
                                    'type' => 'IoTJobsData_DetailsMap',
                                    'class' => 'Paws::IoTJobsData::DetailsMap'
                                  },
               'ExecutionNumber' => {
                                      'type' => 'Int'
                                    },
               'IncludeJobExecutionState' => {
                                               'type' => 'Bool'
                                             },
               'StepTimeoutInMinutes' => {
                                           'type' => 'Int'
                                         },
               'ExpectedVersion' => {
                                      'type' => 'Int'
                                    },
               'JobId' => {
                            'type' => 'Str'
                          }
             },
  'ParamInURI' => {
                    'ThingName' => 'thingName',
                    'JobId' => 'jobId'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTJobsData::UpdateJobExecution - Arguments for method UpdateJobExecution on L<Paws::IoTJobsData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateJobExecution on the
L<AWS IoT Jobs Data Plane|Paws::IoTJobsData> service. Use the attributes of this class
as arguments to method UpdateJobExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateJobExecution.

=head1 SYNOPSIS

    my $data.jobs.iot = Paws->service('IoTJobsData');
    my $UpdateJobExecutionResponse = $data . jobs . iot->UpdateJobExecution(
      JobId                    => 'MyJobId',
      Status                   => 'QUEUED',
      ThingName                => 'MyThingName',
      ExecutionNumber          => 1,               # OPTIONAL
      ExpectedVersion          => 1,               # OPTIONAL
      IncludeJobDocument       => 1,               # OPTIONAL
      IncludeJobExecutionState => 1,               # OPTIONAL
      StatusDetails            => {
        'MyDetailsKey' =>
          'MyDetailsValue',    # key: min: 1, max: 128, value: min: 1, max: 1024
      },    # OPTIONAL
      StepTimeoutInMinutes => 1,    # OPTIONAL
    );

    # Results:
    my $ExecutionState = $UpdateJobExecutionResponse->ExecutionState;
    my $JobDocument    = $UpdateJobExecutionResponse->JobDocument;

    # Returns a L<Paws::IoTJobsData::UpdateJobExecutionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/data.jobs.iot/UpdateJobExecution>

=head1 ATTRIBUTES


=head2 ExecutionNumber => Int

Optional. A number that identifies a particular job execution on a
particular device.



=head2 ExpectedVersion => Int

Optional. The expected current version of the job execution. Each time
you update the job execution, its version is incremented. If the
version of the job execution stored in Jobs does not match, the update
is rejected with a VersionMismatch error, and an ErrorResponse that
contains the current job execution status data is returned. (This makes
it unnecessary to perform a separate DescribeJobExecution request in
order to obtain the job execution status data.)



=head2 IncludeJobDocument => Bool

Optional. When set to true, the response contains the job document. The
default is false.



=head2 IncludeJobExecutionState => Bool

Optional. When included and set to true, the response contains the
JobExecutionState data. The default is false.



=head2 B<REQUIRED> JobId => Str

The unique identifier assigned to this job when it was created.



=head2 B<REQUIRED> Status => Str

The new status for the job execution (IN_PROGRESS, FAILED, SUCCESS, or
REJECTED). This must be specified on every update.

Valid values are: C<"QUEUED">, C<"IN_PROGRESS">, C<"SUCCEEDED">, C<"FAILED">, C<"TIMED_OUT">, C<"REJECTED">, C<"REMOVED">, C<"CANCELED">

=head2 StatusDetails => IoTJobsData_DetailsMap

Optional. A collection of name/value pairs that describe the status of
the job execution. If not specified, the statusDetails are unchanged.



=head2 StepTimeoutInMinutes => Int

Specifies the amount of time this device has to finish execution of
this job. If the job execution status is not set to a terminal state
before this timer expires, or before the timer is reset (by again
calling C<UpdateJobExecution>, setting the status to C<IN_PROGRESS> and
specifying a new timeout value in this field) the job execution status
will be automatically set to C<TIMED_OUT>. Note that setting or
resetting this timeout has no effect on that job execution timeout
which may have been specified when the job was created (C<CreateJob>
using field C<timeoutConfig>).



=head2 B<REQUIRED> ThingName => Str

The name of the thing associated with the device.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateJobExecution in L<Paws::IoTJobsData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

