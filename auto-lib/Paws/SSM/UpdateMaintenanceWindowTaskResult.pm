# Generated from json/callresult_class.tt

package Paws::SSM::UpdateMaintenanceWindowTaskResult;
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

Paws::SSM::UpdateMaintenanceWindowTaskResult

=head1 ATTRIBUTES


=head2 Description => Str

The updated task description.


=head2 LoggingInfo => SSM_LoggingInfo

The updated logging information in Amazon S3.

C<LoggingInfo> has been deprecated. To specify an S3 bucket to contain
logs, instead use the C<OutputS3BucketName> and C<OutputS3KeyPrefix>
options in the C<TaskInvocationParameters> structure. For information
about how Systems Manager handles these options for the supported
maintenance window task types, see
MaintenanceWindowTaskInvocationParameters.


=head2 MaxConcurrency => Str

The updated MaxConcurrency value.


=head2 MaxErrors => Str

The updated MaxErrors value.


=head2 Name => Str

The updated task name.


=head2 Priority => Int

The updated priority value.


=head2 ServiceRoleArn => Str

The ARN of the IAM service role to use to publish Amazon Simple
Notification Service (Amazon SNS) notifications for maintenance window
Run Command tasks.


=head2 Targets => ArrayRef[SSM_Target]

The updated target values.


=head2 TaskArn => Str

The updated task ARN value.


=head2 TaskInvocationParameters => SSM_MaintenanceWindowTaskInvocationParameters

The updated parameter values.


=head2 TaskParameters => SSM_MaintenanceWindowTaskParameters

The updated parameter values.

C<TaskParameters> has been deprecated. To specify parameters to pass to
a task when it runs, instead use the C<Parameters> option in the
C<TaskInvocationParameters> structure. For information about how
Systems Manager handles these options for the supported maintenance
window task types, see MaintenanceWindowTaskInvocationParameters.


=head2 WindowId => Str

The ID of the maintenance window that was updated.


=head2 WindowTaskId => Str

The task ID of the maintenance window that was updated.


=head2 _request_id => Str


=cut

1;