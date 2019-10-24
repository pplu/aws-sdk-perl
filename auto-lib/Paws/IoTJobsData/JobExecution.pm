# Generated from default/object.tt
package Paws::IoTJobsData::JobExecution;
  use Moo;
  use Types::Standard qw/Int Str/;
  use Paws::IoTJobsData::Types qw/IoTJobsData_DetailsMap/;
  has ApproximateSecondsBeforeTimedOut => (is => 'ro', isa => Int);
  has ExecutionNumber => (is => 'ro', isa => Int);
  has JobDocument => (is => 'ro', isa => Str);
  has JobId => (is => 'ro', isa => Str);
  has LastUpdatedAt => (is => 'ro', isa => Int);
  has QueuedAt => (is => 'ro', isa => Int);
  has StartedAt => (is => 'ro', isa => Int);
  has Status => (is => 'ro', isa => Str);
  has StatusDetails => (is => 'ro', isa => IoTJobsData_DetailsMap);
  has ThingName => (is => 'ro', isa => Str);
  has VersionNumber => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ApproximateSecondsBeforeTimedOut' => {
                                                       'type' => 'Int'
                                                     },
               'Status' => {
                             'type' => 'Str'
                           },
               'StartedAt' => {
                                'type' => 'Int'
                              },
               'ExecutionNumber' => {
                                      'type' => 'Int'
                                    },
               'StatusDetails' => {
                                    'class' => 'Paws::IoTJobsData::DetailsMap',
                                    'type' => 'IoTJobsData_DetailsMap'
                                  },
               'QueuedAt' => {
                               'type' => 'Int'
                             },
               'VersionNumber' => {
                                    'type' => 'Int'
                                  },
               'ThingName' => {
                                'type' => 'Str'
                              },
               'JobDocument' => {
                                  'type' => 'Str'
                                },
               'LastUpdatedAt' => {
                                    'type' => 'Int'
                                  },
               'JobId' => {
                            'type' => 'Str'
                          }
             },
  'NameInRequest' => {
                       'ApproximateSecondsBeforeTimedOut' => 'approximateSecondsBeforeTimedOut',
                       'Status' => 'status',
                       'StartedAt' => 'startedAt',
                       'ExecutionNumber' => 'executionNumber',
                       'StatusDetails' => 'statusDetails',
                       'QueuedAt' => 'queuedAt',
                       'VersionNumber' => 'versionNumber',
                       'ThingName' => 'thingName',
                       'JobDocument' => 'jobDocument',
                       'LastUpdatedAt' => 'lastUpdatedAt',
                       'JobId' => 'jobId'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTJobsData::JobExecution

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTJobsData::JobExecution object:

  $service_obj->Method(Att1 => { ApproximateSecondsBeforeTimedOut => $value, ..., VersionNumber => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTJobsData::JobExecution object:

  $result = $service_obj->Method(...);
  $result->Att1->ApproximateSecondsBeforeTimedOut

=head1 DESCRIPTION

Contains data about a job execution.

=head1 ATTRIBUTES


=head2 ApproximateSecondsBeforeTimedOut => Int

  The estimated number of seconds that remain before the job execution
status will be changed to C<TIMED_OUT>.


=head2 ExecutionNumber => Int

  A number that identifies a particular job execution on a particular
device. It can be used later in commands that return or update job
execution information.


=head2 JobDocument => Str

  The content of the job document.


=head2 JobId => Str

  The unique identifier you assigned to this job when it was created.


=head2 LastUpdatedAt => Int

  The time, in milliseconds since the epoch, when the job execution was
last updated.


=head2 QueuedAt => Int

  The time, in milliseconds since the epoch, when the job execution was
enqueued.


=head2 StartedAt => Int

  The time, in milliseconds since the epoch, when the job execution was
started.


=head2 Status => Str

  The status of the job execution. Can be one of: "QUEUED",
"IN_PROGRESS", "FAILED", "SUCCESS", "CANCELED", "REJECTED", or
"REMOVED".


=head2 StatusDetails => IoTJobsData_DetailsMap

  A collection of name/value pairs that describe the status of the job
execution.


=head2 ThingName => Str

  The name of the thing that is executing the job.


=head2 VersionNumber => Int

  The version of the job execution. Job execution versions are
incremented each time they are updated by a device.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTJobsData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

