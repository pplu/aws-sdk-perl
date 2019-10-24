# Generated from default/object.tt
package Paws::StepFunctions::HistoryEvent;
  use Moo;
  use Types::Standard qw/Int Str/;
  use Paws::StepFunctions::Types qw/StepFunctions_ActivityFailedEventDetails StepFunctions_TaskSubmittedEventDetails StepFunctions_TaskSubmitFailedEventDetails StepFunctions_LambdaFunctionTimedOutEventDetails StepFunctions_ActivitySucceededEventDetails StepFunctions_LambdaFunctionSucceededEventDetails StepFunctions_LambdaFunctionScheduleFailedEventDetails StepFunctions_ExecutionSucceededEventDetails StepFunctions_StateExitedEventDetails StepFunctions_LambdaFunctionStartFailedEventDetails StepFunctions_LambdaFunctionScheduledEventDetails StepFunctions_ExecutionStartedEventDetails StepFunctions_ActivityTimedOutEventDetails StepFunctions_TaskScheduledEventDetails StepFunctions_ActivityStartedEventDetails StepFunctions_TaskSucceededEventDetails StepFunctions_TaskFailedEventDetails StepFunctions_ActivityScheduleFailedEventDetails StepFunctions_TaskStartFailedEventDetails StepFunctions_StateEnteredEventDetails StepFunctions_TaskStartedEventDetails StepFunctions_ExecutionAbortedEventDetails StepFunctions_ActivityScheduledEventDetails StepFunctions_ExecutionFailedEventDetails StepFunctions_LambdaFunctionFailedEventDetails StepFunctions_TaskTimedOutEventDetails StepFunctions_ExecutionTimedOutEventDetails/;
  has ActivityFailedEventDetails => (is => 'ro', isa => StepFunctions_ActivityFailedEventDetails);
  has ActivityScheduledEventDetails => (is => 'ro', isa => StepFunctions_ActivityScheduledEventDetails);
  has ActivityScheduleFailedEventDetails => (is => 'ro', isa => StepFunctions_ActivityScheduleFailedEventDetails);
  has ActivityStartedEventDetails => (is => 'ro', isa => StepFunctions_ActivityStartedEventDetails);
  has ActivitySucceededEventDetails => (is => 'ro', isa => StepFunctions_ActivitySucceededEventDetails);
  has ActivityTimedOutEventDetails => (is => 'ro', isa => StepFunctions_ActivityTimedOutEventDetails);
  has ExecutionAbortedEventDetails => (is => 'ro', isa => StepFunctions_ExecutionAbortedEventDetails);
  has ExecutionFailedEventDetails => (is => 'ro', isa => StepFunctions_ExecutionFailedEventDetails);
  has ExecutionStartedEventDetails => (is => 'ro', isa => StepFunctions_ExecutionStartedEventDetails);
  has ExecutionSucceededEventDetails => (is => 'ro', isa => StepFunctions_ExecutionSucceededEventDetails);
  has ExecutionTimedOutEventDetails => (is => 'ro', isa => StepFunctions_ExecutionTimedOutEventDetails);
  has Id => (is => 'ro', isa => Int, required => 1);
  has LambdaFunctionFailedEventDetails => (is => 'ro', isa => StepFunctions_LambdaFunctionFailedEventDetails);
  has LambdaFunctionScheduledEventDetails => (is => 'ro', isa => StepFunctions_LambdaFunctionScheduledEventDetails);
  has LambdaFunctionScheduleFailedEventDetails => (is => 'ro', isa => StepFunctions_LambdaFunctionScheduleFailedEventDetails);
  has LambdaFunctionStartFailedEventDetails => (is => 'ro', isa => StepFunctions_LambdaFunctionStartFailedEventDetails);
  has LambdaFunctionSucceededEventDetails => (is => 'ro', isa => StepFunctions_LambdaFunctionSucceededEventDetails);
  has LambdaFunctionTimedOutEventDetails => (is => 'ro', isa => StepFunctions_LambdaFunctionTimedOutEventDetails);
  has PreviousEventId => (is => 'ro', isa => Int);
  has StateEnteredEventDetails => (is => 'ro', isa => StepFunctions_StateEnteredEventDetails);
  has StateExitedEventDetails => (is => 'ro', isa => StepFunctions_StateExitedEventDetails);
  has TaskFailedEventDetails => (is => 'ro', isa => StepFunctions_TaskFailedEventDetails);
  has TaskScheduledEventDetails => (is => 'ro', isa => StepFunctions_TaskScheduledEventDetails);
  has TaskStartedEventDetails => (is => 'ro', isa => StepFunctions_TaskStartedEventDetails);
  has TaskStartFailedEventDetails => (is => 'ro', isa => StepFunctions_TaskStartFailedEventDetails);
  has TaskSubmitFailedEventDetails => (is => 'ro', isa => StepFunctions_TaskSubmitFailedEventDetails);
  has TaskSubmittedEventDetails => (is => 'ro', isa => StepFunctions_TaskSubmittedEventDetails);
  has TaskSucceededEventDetails => (is => 'ro', isa => StepFunctions_TaskSucceededEventDetails);
  has TaskTimedOutEventDetails => (is => 'ro', isa => StepFunctions_TaskTimedOutEventDetails);
  has Timestamp => (is => 'ro', isa => Str, required => 1);
  has Type => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TaskSubmitFailedEventDetails' => {
                                                   'class' => 'Paws::StepFunctions::TaskSubmitFailedEventDetails',
                                                   'type' => 'StepFunctions_TaskSubmitFailedEventDetails'
                                                 },
               'LambdaFunctionSucceededEventDetails' => {
                                                          'class' => 'Paws::StepFunctions::LambdaFunctionSucceededEventDetails',
                                                          'type' => 'StepFunctions_LambdaFunctionSucceededEventDetails'
                                                        },
               'ActivityStartedEventDetails' => {
                                                  'class' => 'Paws::StepFunctions::ActivityStartedEventDetails',
                                                  'type' => 'StepFunctions_ActivityStartedEventDetails'
                                                },
               'PreviousEventId' => {
                                      'type' => 'Int'
                                    },
               'ExecutionSucceededEventDetails' => {
                                                     'class' => 'Paws::StepFunctions::ExecutionSucceededEventDetails',
                                                     'type' => 'StepFunctions_ExecutionSucceededEventDetails'
                                                   },
               'ExecutionStartedEventDetails' => {
                                                   'class' => 'Paws::StepFunctions::ExecutionStartedEventDetails',
                                                   'type' => 'StepFunctions_ExecutionStartedEventDetails'
                                                 },
               'Type' => {
                           'type' => 'Str'
                         },
               'TaskTimedOutEventDetails' => {
                                               'class' => 'Paws::StepFunctions::TaskTimedOutEventDetails',
                                               'type' => 'StepFunctions_TaskTimedOutEventDetails'
                                             },
               'TaskStartFailedEventDetails' => {
                                                  'class' => 'Paws::StepFunctions::TaskStartFailedEventDetails',
                                                  'type' => 'StepFunctions_TaskStartFailedEventDetails'
                                                },
               'TaskStartedEventDetails' => {
                                              'class' => 'Paws::StepFunctions::TaskStartedEventDetails',
                                              'type' => 'StepFunctions_TaskStartedEventDetails'
                                            },
               'ActivityScheduledEventDetails' => {
                                                    'class' => 'Paws::StepFunctions::ActivityScheduledEventDetails',
                                                    'type' => 'StepFunctions_ActivityScheduledEventDetails'
                                                  },
               'ActivityFailedEventDetails' => {
                                                 'class' => 'Paws::StepFunctions::ActivityFailedEventDetails',
                                                 'type' => 'StepFunctions_ActivityFailedEventDetails'
                                               },
               'TaskFailedEventDetails' => {
                                             'class' => 'Paws::StepFunctions::TaskFailedEventDetails',
                                             'type' => 'StepFunctions_TaskFailedEventDetails'
                                           },
               'ExecutionFailedEventDetails' => {
                                                  'class' => 'Paws::StepFunctions::ExecutionFailedEventDetails',
                                                  'type' => 'StepFunctions_ExecutionFailedEventDetails'
                                                },
               'Id' => {
                         'type' => 'Int'
                       },
               'StateExitedEventDetails' => {
                                              'class' => 'Paws::StepFunctions::StateExitedEventDetails',
                                              'type' => 'StepFunctions_StateExitedEventDetails'
                                            },
               'LambdaFunctionScheduledEventDetails' => {
                                                          'class' => 'Paws::StepFunctions::LambdaFunctionScheduledEventDetails',
                                                          'type' => 'StepFunctions_LambdaFunctionScheduledEventDetails'
                                                        },
               'LambdaFunctionFailedEventDetails' => {
                                                       'class' => 'Paws::StepFunctions::LambdaFunctionFailedEventDetails',
                                                       'type' => 'StepFunctions_LambdaFunctionFailedEventDetails'
                                                     },
               'TaskSucceededEventDetails' => {
                                                'class' => 'Paws::StepFunctions::TaskSucceededEventDetails',
                                                'type' => 'StepFunctions_TaskSucceededEventDetails'
                                              },
               'ExecutionTimedOutEventDetails' => {
                                                    'class' => 'Paws::StepFunctions::ExecutionTimedOutEventDetails',
                                                    'type' => 'StepFunctions_ExecutionTimedOutEventDetails'
                                                  },
               'StateEnteredEventDetails' => {
                                               'class' => 'Paws::StepFunctions::StateEnteredEventDetails',
                                               'type' => 'StepFunctions_StateEnteredEventDetails'
                                             },
               'ActivitySucceededEventDetails' => {
                                                    'class' => 'Paws::StepFunctions::ActivitySucceededEventDetails',
                                                    'type' => 'StepFunctions_ActivitySucceededEventDetails'
                                                  },
               'ActivityScheduleFailedEventDetails' => {
                                                         'class' => 'Paws::StepFunctions::ActivityScheduleFailedEventDetails',
                                                         'type' => 'StepFunctions_ActivityScheduleFailedEventDetails'
                                                       },
               'Timestamp' => {
                                'type' => 'Str'
                              },
               'LambdaFunctionStartFailedEventDetails' => {
                                                            'class' => 'Paws::StepFunctions::LambdaFunctionStartFailedEventDetails',
                                                            'type' => 'StepFunctions_LambdaFunctionStartFailedEventDetails'
                                                          },
               'TaskSubmittedEventDetails' => {
                                                'class' => 'Paws::StepFunctions::TaskSubmittedEventDetails',
                                                'type' => 'StepFunctions_TaskSubmittedEventDetails'
                                              },
               'LambdaFunctionScheduleFailedEventDetails' => {
                                                               'class' => 'Paws::StepFunctions::LambdaFunctionScheduleFailedEventDetails',
                                                               'type' => 'StepFunctions_LambdaFunctionScheduleFailedEventDetails'
                                                             },
               'TaskScheduledEventDetails' => {
                                                'class' => 'Paws::StepFunctions::TaskScheduledEventDetails',
                                                'type' => 'StepFunctions_TaskScheduledEventDetails'
                                              },
               'ExecutionAbortedEventDetails' => {
                                                   'class' => 'Paws::StepFunctions::ExecutionAbortedEventDetails',
                                                   'type' => 'StepFunctions_ExecutionAbortedEventDetails'
                                                 },
               'ActivityTimedOutEventDetails' => {
                                                   'class' => 'Paws::StepFunctions::ActivityTimedOutEventDetails',
                                                   'type' => 'StepFunctions_ActivityTimedOutEventDetails'
                                                 },
               'LambdaFunctionTimedOutEventDetails' => {
                                                         'class' => 'Paws::StepFunctions::LambdaFunctionTimedOutEventDetails',
                                                         'type' => 'StepFunctions_LambdaFunctionTimedOutEventDetails'
                                                       }
             },
  'NameInRequest' => {
                       'TaskSubmitFailedEventDetails' => 'taskSubmitFailedEventDetails',
                       'LambdaFunctionSucceededEventDetails' => 'lambdaFunctionSucceededEventDetails',
                       'ActivityStartedEventDetails' => 'activityStartedEventDetails',
                       'PreviousEventId' => 'previousEventId',
                       'ExecutionSucceededEventDetails' => 'executionSucceededEventDetails',
                       'ExecutionStartedEventDetails' => 'executionStartedEventDetails',
                       'Type' => 'type',
                       'TaskTimedOutEventDetails' => 'taskTimedOutEventDetails',
                       'TaskStartFailedEventDetails' => 'taskStartFailedEventDetails',
                       'TaskStartedEventDetails' => 'taskStartedEventDetails',
                       'ActivityScheduledEventDetails' => 'activityScheduledEventDetails',
                       'ActivityFailedEventDetails' => 'activityFailedEventDetails',
                       'TaskFailedEventDetails' => 'taskFailedEventDetails',
                       'ExecutionFailedEventDetails' => 'executionFailedEventDetails',
                       'Id' => 'id',
                       'StateExitedEventDetails' => 'stateExitedEventDetails',
                       'LambdaFunctionScheduledEventDetails' => 'lambdaFunctionScheduledEventDetails',
                       'LambdaFunctionFailedEventDetails' => 'lambdaFunctionFailedEventDetails',
                       'TaskSucceededEventDetails' => 'taskSucceededEventDetails',
                       'ExecutionTimedOutEventDetails' => 'executionTimedOutEventDetails',
                       'StateEnteredEventDetails' => 'stateEnteredEventDetails',
                       'ActivitySucceededEventDetails' => 'activitySucceededEventDetails',
                       'ActivityScheduleFailedEventDetails' => 'activityScheduleFailedEventDetails',
                       'Timestamp' => 'timestamp',
                       'LambdaFunctionStartFailedEventDetails' => 'lambdaFunctionStartFailedEventDetails',
                       'TaskSubmittedEventDetails' => 'taskSubmittedEventDetails',
                       'LambdaFunctionScheduleFailedEventDetails' => 'lambdaFunctionScheduleFailedEventDetails',
                       'TaskScheduledEventDetails' => 'taskScheduledEventDetails',
                       'ExecutionAbortedEventDetails' => 'executionAbortedEventDetails',
                       'ActivityTimedOutEventDetails' => 'activityTimedOutEventDetails',
                       'LambdaFunctionTimedOutEventDetails' => 'lambdaFunctionTimedOutEventDetails'
                     },
  'IsRequired' => {
                    'Type' => 1,
                    'Timestamp' => 1,
                    'Id' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::HistoryEvent

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::StepFunctions::HistoryEvent object:

  $service_obj->Method(Att1 => { ActivityFailedEventDetails => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::StepFunctions::HistoryEvent object:

  $result = $service_obj->Method(...);
  $result->Att1->ActivityFailedEventDetails

=head1 DESCRIPTION

Contains details about the events of an execution.

=head1 ATTRIBUTES


=head2 ActivityFailedEventDetails => StepFunctions_ActivityFailedEventDetails

  


=head2 ActivityScheduledEventDetails => StepFunctions_ActivityScheduledEventDetails

  


=head2 ActivityScheduleFailedEventDetails => StepFunctions_ActivityScheduleFailedEventDetails

  Contains details about an activity schedule event that failed during an
execution.


=head2 ActivityStartedEventDetails => StepFunctions_ActivityStartedEventDetails

  


=head2 ActivitySucceededEventDetails => StepFunctions_ActivitySucceededEventDetails

  


=head2 ActivityTimedOutEventDetails => StepFunctions_ActivityTimedOutEventDetails

  


=head2 ExecutionAbortedEventDetails => StepFunctions_ExecutionAbortedEventDetails

  


=head2 ExecutionFailedEventDetails => StepFunctions_ExecutionFailedEventDetails

  


=head2 ExecutionStartedEventDetails => StepFunctions_ExecutionStartedEventDetails

  


=head2 ExecutionSucceededEventDetails => StepFunctions_ExecutionSucceededEventDetails

  


=head2 ExecutionTimedOutEventDetails => StepFunctions_ExecutionTimedOutEventDetails

  


=head2 B<REQUIRED> Id => Int

  The id of the event. Events are numbered sequentially, starting at one.


=head2 LambdaFunctionFailedEventDetails => StepFunctions_LambdaFunctionFailedEventDetails

  


=head2 LambdaFunctionScheduledEventDetails => StepFunctions_LambdaFunctionScheduledEventDetails

  


=head2 LambdaFunctionScheduleFailedEventDetails => StepFunctions_LambdaFunctionScheduleFailedEventDetails

  


=head2 LambdaFunctionStartFailedEventDetails => StepFunctions_LambdaFunctionStartFailedEventDetails

  Contains details about a lambda function that failed to start during an
execution.


=head2 LambdaFunctionSucceededEventDetails => StepFunctions_LambdaFunctionSucceededEventDetails

  Contains details about a lambda function that terminated successfully
during an execution.


=head2 LambdaFunctionTimedOutEventDetails => StepFunctions_LambdaFunctionTimedOutEventDetails

  


=head2 PreviousEventId => Int

  The id of the previous event.


=head2 StateEnteredEventDetails => StepFunctions_StateEnteredEventDetails

  


=head2 StateExitedEventDetails => StepFunctions_StateExitedEventDetails

  


=head2 TaskFailedEventDetails => StepFunctions_TaskFailedEventDetails

  Contains details about the failure of a task.


=head2 TaskScheduledEventDetails => StepFunctions_TaskScheduledEventDetails

  Contains details about a task that was scheduled.


=head2 TaskStartedEventDetails => StepFunctions_TaskStartedEventDetails

  Contains details about a task that was started.


=head2 TaskStartFailedEventDetails => StepFunctions_TaskStartFailedEventDetails

  Contains details about a task that failed to start.


=head2 TaskSubmitFailedEventDetails => StepFunctions_TaskSubmitFailedEventDetails

  Contains details about a task that where the submit failed.


=head2 TaskSubmittedEventDetails => StepFunctions_TaskSubmittedEventDetails

  Contains details about a submitted task.


=head2 TaskSucceededEventDetails => StepFunctions_TaskSucceededEventDetails

  Contains details about a task that succeeded.


=head2 TaskTimedOutEventDetails => StepFunctions_TaskTimedOutEventDetails

  Contains details about a task that timed out.


=head2 B<REQUIRED> Timestamp => Str

  The date and time the event occurred.


=head2 B<REQUIRED> Type => Str

  The type of the event.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::StepFunctions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

