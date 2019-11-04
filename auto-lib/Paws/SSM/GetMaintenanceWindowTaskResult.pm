# Generated from json/callresult_class.tt

package Paws::SSM::GetMaintenanceWindowTaskResult;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::SSM::Types qw/SSM_Target SSM_LoggingInfo SSM_MaintenanceWindowTaskInvocationParameters SSM_MaintenanceWindowTaskParameters/;
  has Description => (is => 'ro', isa => Str);
  has LoggingInfo => (is => 'ro', isa => SSM_LoggingInfo);
  has MaxConcurrency => (is => 'ro', isa => Str);
  has MaxErrors => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has Priority => (is => 'ro', isa => Int);
  has ServiceRoleArn => (is => 'ro', isa => Str);
  has Targets => (is => 'ro', isa => ArrayRef[SSM_Target]);
  has TaskArn => (is => 'ro', isa => Str);
  has TaskInvocationParameters => (is => 'ro', isa => SSM_MaintenanceWindowTaskInvocationParameters);
  has TaskParameters => (is => 'ro', isa => SSM_MaintenanceWindowTaskParameters);
  has TaskType => (is => 'ro', isa => Str);
  has WindowId => (is => 'ro', isa => Str);
  has WindowTaskId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ServiceRoleArn' => {
                                     'type' => 'Str'
                                   },
               'LoggingInfo' => {
                                  'class' => 'Paws::SSM::LoggingInfo',
                                  'type' => 'SSM_LoggingInfo'
                                },
               'TaskArn' => {
                              'type' => 'Str'
                            },
               'WindowId' => {
                               'type' => 'Str'
                             },
               'WindowTaskId' => {
                                   'type' => 'Str'
                                 },
               'TaskParameters' => {
                                     'class' => 'Paws::SSM::MaintenanceWindowTaskParameters',
                                     'type' => 'SSM_MaintenanceWindowTaskParameters'
                                   },
               'TaskType' => {
                               'type' => 'Str'
                             },
               'MaxErrors' => {
                                'type' => 'Str'
                              },
               'Targets' => {
                              'class' => 'Paws::SSM::Target',
                              'type' => 'ArrayRef[SSM_Target]'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TaskInvocationParameters' => {
                                               'class' => 'Paws::SSM::MaintenanceWindowTaskInvocationParameters',
                                               'type' => 'SSM_MaintenanceWindowTaskInvocationParameters'
                                             },
               'Priority' => {
                               'type' => 'Int'
                             },
               'Description' => {
                                  'type' => 'Str'
                                },
               'Name' => {
                           'type' => 'Str'
                         },
               'MaxConcurrency' => {
                                     'type' => 'Str'
                                   }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetMaintenanceWindowTaskResult

=head1 ATTRIBUTES


=head2 Description => Str

The retrieved task description.


=head2 LoggingInfo => SSM_LoggingInfo

The location in Amazon S3 where the task results are logged.

C<LoggingInfo> has been deprecated. To specify an S3 bucket to contain
logs, instead use the C<OutputS3BucketName> and C<OutputS3KeyPrefix>
options in the C<TaskInvocationParameters> structure. For information
about how Systems Manager handles these options for the supported
maintenance window task types, see
MaintenanceWindowTaskInvocationParameters.


=head2 MaxConcurrency => Str

The maximum number of targets allowed to run this task in parallel.


=head2 MaxErrors => Str

The maximum number of errors allowed before the task stops being
scheduled.


=head2 Name => Str

The retrieved task name.


=head2 Priority => Int

The priority of the task when it runs. The lower the number, the higher
the priority. Tasks that have the same priority are scheduled in
parallel.


=head2 ServiceRoleArn => Str

The ARN of the IAM service role to use to publish Amazon Simple
Notification Service (Amazon SNS) notifications for maintenance window
Run Command tasks.


=head2 Targets => ArrayRef[SSM_Target]

The targets where the task should run.


=head2 TaskArn => Str

The resource that the task used during execution. For RUN_COMMAND and
AUTOMATION task types, the TaskArn is the Systems Manager Document
name/ARN. For LAMBDA tasks, the value is the function name/ARN. For
STEP_FUNCTIONS tasks, the value is the state machine ARN.


=head2 TaskInvocationParameters => SSM_MaintenanceWindowTaskInvocationParameters

The parameters to pass to the task when it runs.


=head2 TaskParameters => SSM_MaintenanceWindowTaskParameters

The parameters to pass to the task when it runs.

C<TaskParameters> has been deprecated. To specify parameters to pass to
a task when it runs, instead use the C<Parameters> option in the
C<TaskInvocationParameters> structure. For information about how
Systems Manager handles these options for the supported maintenance
window task types, see MaintenanceWindowTaskInvocationParameters.


=head2 TaskType => Str

The type of task to run.

Valid values are: C<"RUN_COMMAND">, C<"AUTOMATION">, C<"STEP_FUNCTIONS">, C<"LAMBDA">
=head2 WindowId => Str

The retrieved maintenance window ID.


=head2 WindowTaskId => Str

The retrieved maintenance window task ID.


=head2 _request_id => Str


=cut

1;