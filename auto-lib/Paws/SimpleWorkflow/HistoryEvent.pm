# Generated from default/object.tt
package Paws::SimpleWorkflow::HistoryEvent;
  use Moo;
  use Types::Standard qw/Int Str/;
  use Paws::SimpleWorkflow::Types qw/SimpleWorkflow_ContinueAsNewWorkflowExecutionFailedEventAttributes SimpleWorkflow_TimerStartedEventAttributes SimpleWorkflow_RequestCancelExternalWorkflowExecutionInitiatedEventAttributes SimpleWorkflow_MarkerRecordedEventAttributes SimpleWorkflow_ChildWorkflowExecutionCompletedEventAttributes SimpleWorkflow_ChildWorkflowExecutionFailedEventAttributes SimpleWorkflow_StartChildWorkflowExecutionFailedEventAttributes SimpleWorkflow_ActivityTaskStartedEventAttributes SimpleWorkflow_WorkflowExecutionContinuedAsNewEventAttributes SimpleWorkflow_WorkflowExecutionCompletedEventAttributes SimpleWorkflow_CancelWorkflowExecutionFailedEventAttributes SimpleWorkflow_SignalExternalWorkflowExecutionFailedEventAttributes SimpleWorkflow_LambdaFunctionFailedEventAttributes SimpleWorkflow_WorkflowExecutionTerminatedEventAttributes SimpleWorkflow_FailWorkflowExecutionFailedEventAttributes SimpleWorkflow_StartTimerFailedEventAttributes SimpleWorkflow_DecisionTaskScheduledEventAttributes SimpleWorkflow_WorkflowExecutionTimedOutEventAttributes SimpleWorkflow_DecisionTaskStartedEventAttributes SimpleWorkflow_ScheduleActivityTaskFailedEventAttributes SimpleWorkflow_TimerCanceledEventAttributes SimpleWorkflow_LambdaFunctionStartedEventAttributes SimpleWorkflow_RequestCancelExternalWorkflowExecutionFailedEventAttributes SimpleWorkflow_ScheduleLambdaFunctionFailedEventAttributes SimpleWorkflow_ChildWorkflowExecutionTimedOutEventAttributes SimpleWorkflow_ExternalWorkflowExecutionCancelRequestedEventAttributes SimpleWorkflow_WorkflowExecutionStartedEventAttributes SimpleWorkflow_WorkflowExecutionCanceledEventAttributes SimpleWorkflow_DecisionTaskTimedOutEventAttributes SimpleWorkflow_ChildWorkflowExecutionTerminatedEventAttributes SimpleWorkflow_WorkflowExecutionSignaledEventAttributes SimpleWorkflow_RequestCancelActivityTaskFailedEventAttributes SimpleWorkflow_WorkflowExecutionFailedEventAttributes SimpleWorkflow_LambdaFunctionScheduledEventAttributes SimpleWorkflow_ActivityTaskTimedOutEventAttributes SimpleWorkflow_TimerFiredEventAttributes SimpleWorkflow_RecordMarkerFailedEventAttributes SimpleWorkflow_StartLambdaFunctionFailedEventAttributes SimpleWorkflow_ActivityTaskScheduledEventAttributes SimpleWorkflow_ActivityTaskCanceledEventAttributes SimpleWorkflow_LambdaFunctionCompletedEventAttributes SimpleWorkflow_WorkflowExecutionCancelRequestedEventAttributes SimpleWorkflow_ChildWorkflowExecutionCanceledEventAttributes SimpleWorkflow_ChildWorkflowExecutionStartedEventAttributes SimpleWorkflow_SignalExternalWorkflowExecutionInitiatedEventAttributes SimpleWorkflow_LambdaFunctionTimedOutEventAttributes SimpleWorkflow_ActivityTaskFailedEventAttributes SimpleWorkflow_ActivityTaskCompletedEventAttributes SimpleWorkflow_CompleteWorkflowExecutionFailedEventAttributes SimpleWorkflow_ActivityTaskCancelRequestedEventAttributes SimpleWorkflow_DecisionTaskCompletedEventAttributes SimpleWorkflow_CancelTimerFailedEventAttributes SimpleWorkflow_StartChildWorkflowExecutionInitiatedEventAttributes SimpleWorkflow_ExternalWorkflowExecutionSignaledEventAttributes/;
  has ActivityTaskCanceledEventAttributes => (is => 'ro', isa => SimpleWorkflow_ActivityTaskCanceledEventAttributes);
  has ActivityTaskCancelRequestedEventAttributes => (is => 'ro', isa => SimpleWorkflow_ActivityTaskCancelRequestedEventAttributes);
  has ActivityTaskCompletedEventAttributes => (is => 'ro', isa => SimpleWorkflow_ActivityTaskCompletedEventAttributes);
  has ActivityTaskFailedEventAttributes => (is => 'ro', isa => SimpleWorkflow_ActivityTaskFailedEventAttributes);
  has ActivityTaskScheduledEventAttributes => (is => 'ro', isa => SimpleWorkflow_ActivityTaskScheduledEventAttributes);
  has ActivityTaskStartedEventAttributes => (is => 'ro', isa => SimpleWorkflow_ActivityTaskStartedEventAttributes);
  has ActivityTaskTimedOutEventAttributes => (is => 'ro', isa => SimpleWorkflow_ActivityTaskTimedOutEventAttributes);
  has CancelTimerFailedEventAttributes => (is => 'ro', isa => SimpleWorkflow_CancelTimerFailedEventAttributes);
  has CancelWorkflowExecutionFailedEventAttributes => (is => 'ro', isa => SimpleWorkflow_CancelWorkflowExecutionFailedEventAttributes);
  has ChildWorkflowExecutionCanceledEventAttributes => (is => 'ro', isa => SimpleWorkflow_ChildWorkflowExecutionCanceledEventAttributes);
  has ChildWorkflowExecutionCompletedEventAttributes => (is => 'ro', isa => SimpleWorkflow_ChildWorkflowExecutionCompletedEventAttributes);
  has ChildWorkflowExecutionFailedEventAttributes => (is => 'ro', isa => SimpleWorkflow_ChildWorkflowExecutionFailedEventAttributes);
  has ChildWorkflowExecutionStartedEventAttributes => (is => 'ro', isa => SimpleWorkflow_ChildWorkflowExecutionStartedEventAttributes);
  has ChildWorkflowExecutionTerminatedEventAttributes => (is => 'ro', isa => SimpleWorkflow_ChildWorkflowExecutionTerminatedEventAttributes);
  has ChildWorkflowExecutionTimedOutEventAttributes => (is => 'ro', isa => SimpleWorkflow_ChildWorkflowExecutionTimedOutEventAttributes);
  has CompleteWorkflowExecutionFailedEventAttributes => (is => 'ro', isa => SimpleWorkflow_CompleteWorkflowExecutionFailedEventAttributes);
  has ContinueAsNewWorkflowExecutionFailedEventAttributes => (is => 'ro', isa => SimpleWorkflow_ContinueAsNewWorkflowExecutionFailedEventAttributes);
  has DecisionTaskCompletedEventAttributes => (is => 'ro', isa => SimpleWorkflow_DecisionTaskCompletedEventAttributes);
  has DecisionTaskScheduledEventAttributes => (is => 'ro', isa => SimpleWorkflow_DecisionTaskScheduledEventAttributes);
  has DecisionTaskStartedEventAttributes => (is => 'ro', isa => SimpleWorkflow_DecisionTaskStartedEventAttributes);
  has DecisionTaskTimedOutEventAttributes => (is => 'ro', isa => SimpleWorkflow_DecisionTaskTimedOutEventAttributes);
  has EventId => (is => 'ro', isa => Int, required => 1);
  has EventTimestamp => (is => 'ro', isa => Str, required => 1);
  has EventType => (is => 'ro', isa => Str, required => 1);
  has ExternalWorkflowExecutionCancelRequestedEventAttributes => (is => 'ro', isa => SimpleWorkflow_ExternalWorkflowExecutionCancelRequestedEventAttributes);
  has ExternalWorkflowExecutionSignaledEventAttributes => (is => 'ro', isa => SimpleWorkflow_ExternalWorkflowExecutionSignaledEventAttributes);
  has FailWorkflowExecutionFailedEventAttributes => (is => 'ro', isa => SimpleWorkflow_FailWorkflowExecutionFailedEventAttributes);
  has LambdaFunctionCompletedEventAttributes => (is => 'ro', isa => SimpleWorkflow_LambdaFunctionCompletedEventAttributes);
  has LambdaFunctionFailedEventAttributes => (is => 'ro', isa => SimpleWorkflow_LambdaFunctionFailedEventAttributes);
  has LambdaFunctionScheduledEventAttributes => (is => 'ro', isa => SimpleWorkflow_LambdaFunctionScheduledEventAttributes);
  has LambdaFunctionStartedEventAttributes => (is => 'ro', isa => SimpleWorkflow_LambdaFunctionStartedEventAttributes);
  has LambdaFunctionTimedOutEventAttributes => (is => 'ro', isa => SimpleWorkflow_LambdaFunctionTimedOutEventAttributes);
  has MarkerRecordedEventAttributes => (is => 'ro', isa => SimpleWorkflow_MarkerRecordedEventAttributes);
  has RecordMarkerFailedEventAttributes => (is => 'ro', isa => SimpleWorkflow_RecordMarkerFailedEventAttributes);
  has RequestCancelActivityTaskFailedEventAttributes => (is => 'ro', isa => SimpleWorkflow_RequestCancelActivityTaskFailedEventAttributes);
  has RequestCancelExternalWorkflowExecutionFailedEventAttributes => (is => 'ro', isa => SimpleWorkflow_RequestCancelExternalWorkflowExecutionFailedEventAttributes);
  has RequestCancelExternalWorkflowExecutionInitiatedEventAttributes => (is => 'ro', isa => SimpleWorkflow_RequestCancelExternalWorkflowExecutionInitiatedEventAttributes);
  has ScheduleActivityTaskFailedEventAttributes => (is => 'ro', isa => SimpleWorkflow_ScheduleActivityTaskFailedEventAttributes);
  has ScheduleLambdaFunctionFailedEventAttributes => (is => 'ro', isa => SimpleWorkflow_ScheduleLambdaFunctionFailedEventAttributes);
  has SignalExternalWorkflowExecutionFailedEventAttributes => (is => 'ro', isa => SimpleWorkflow_SignalExternalWorkflowExecutionFailedEventAttributes);
  has SignalExternalWorkflowExecutionInitiatedEventAttributes => (is => 'ro', isa => SimpleWorkflow_SignalExternalWorkflowExecutionInitiatedEventAttributes);
  has StartChildWorkflowExecutionFailedEventAttributes => (is => 'ro', isa => SimpleWorkflow_StartChildWorkflowExecutionFailedEventAttributes);
  has StartChildWorkflowExecutionInitiatedEventAttributes => (is => 'ro', isa => SimpleWorkflow_StartChildWorkflowExecutionInitiatedEventAttributes);
  has StartLambdaFunctionFailedEventAttributes => (is => 'ro', isa => SimpleWorkflow_StartLambdaFunctionFailedEventAttributes);
  has StartTimerFailedEventAttributes => (is => 'ro', isa => SimpleWorkflow_StartTimerFailedEventAttributes);
  has TimerCanceledEventAttributes => (is => 'ro', isa => SimpleWorkflow_TimerCanceledEventAttributes);
  has TimerFiredEventAttributes => (is => 'ro', isa => SimpleWorkflow_TimerFiredEventAttributes);
  has TimerStartedEventAttributes => (is => 'ro', isa => SimpleWorkflow_TimerStartedEventAttributes);
  has WorkflowExecutionCanceledEventAttributes => (is => 'ro', isa => SimpleWorkflow_WorkflowExecutionCanceledEventAttributes);
  has WorkflowExecutionCancelRequestedEventAttributes => (is => 'ro', isa => SimpleWorkflow_WorkflowExecutionCancelRequestedEventAttributes);
  has WorkflowExecutionCompletedEventAttributes => (is => 'ro', isa => SimpleWorkflow_WorkflowExecutionCompletedEventAttributes);
  has WorkflowExecutionContinuedAsNewEventAttributes => (is => 'ro', isa => SimpleWorkflow_WorkflowExecutionContinuedAsNewEventAttributes);
  has WorkflowExecutionFailedEventAttributes => (is => 'ro', isa => SimpleWorkflow_WorkflowExecutionFailedEventAttributes);
  has WorkflowExecutionSignaledEventAttributes => (is => 'ro', isa => SimpleWorkflow_WorkflowExecutionSignaledEventAttributes);
  has WorkflowExecutionStartedEventAttributes => (is => 'ro', isa => SimpleWorkflow_WorkflowExecutionStartedEventAttributes);
  has WorkflowExecutionTerminatedEventAttributes => (is => 'ro', isa => SimpleWorkflow_WorkflowExecutionTerminatedEventAttributes);
  has WorkflowExecutionTimedOutEventAttributes => (is => 'ro', isa => SimpleWorkflow_WorkflowExecutionTimedOutEventAttributes);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SignalExternalWorkflowExecutionInitiatedEventAttributes' => {
                                                                              'type' => 'SimpleWorkflow_SignalExternalWorkflowExecutionInitiatedEventAttributes',
                                                                              'class' => 'Paws::SimpleWorkflow::SignalExternalWorkflowExecutionInitiatedEventAttributes'
                                                                            },
               'LambdaFunctionScheduledEventAttributes' => {
                                                             'class' => 'Paws::SimpleWorkflow::LambdaFunctionScheduledEventAttributes',
                                                             'type' => 'SimpleWorkflow_LambdaFunctionScheduledEventAttributes'
                                                           },
               'TimerFiredEventAttributes' => {
                                                'class' => 'Paws::SimpleWorkflow::TimerFiredEventAttributes',
                                                'type' => 'SimpleWorkflow_TimerFiredEventAttributes'
                                              },
               'ScheduleLambdaFunctionFailedEventAttributes' => {
                                                                  'type' => 'SimpleWorkflow_ScheduleLambdaFunctionFailedEventAttributes',
                                                                  'class' => 'Paws::SimpleWorkflow::ScheduleLambdaFunctionFailedEventAttributes'
                                                                },
               'EventId' => {
                              'type' => 'Int'
                            },
               'FailWorkflowExecutionFailedEventAttributes' => {
                                                                 'type' => 'SimpleWorkflow_FailWorkflowExecutionFailedEventAttributes',
                                                                 'class' => 'Paws::SimpleWorkflow::FailWorkflowExecutionFailedEventAttributes'
                                                               },
               'TimerCanceledEventAttributes' => {
                                                   'class' => 'Paws::SimpleWorkflow::TimerCanceledEventAttributes',
                                                   'type' => 'SimpleWorkflow_TimerCanceledEventAttributes'
                                                 },
               'LambdaFunctionTimedOutEventAttributes' => {
                                                            'type' => 'SimpleWorkflow_LambdaFunctionTimedOutEventAttributes',
                                                            'class' => 'Paws::SimpleWorkflow::LambdaFunctionTimedOutEventAttributes'
                                                          },
               'ChildWorkflowExecutionTerminatedEventAttributes' => {
                                                                      'class' => 'Paws::SimpleWorkflow::ChildWorkflowExecutionTerminatedEventAttributes',
                                                                      'type' => 'SimpleWorkflow_ChildWorkflowExecutionTerminatedEventAttributes'
                                                                    },
               'RequestCancelActivityTaskFailedEventAttributes' => {
                                                                     'type' => 'SimpleWorkflow_RequestCancelActivityTaskFailedEventAttributes',
                                                                     'class' => 'Paws::SimpleWorkflow::RequestCancelActivityTaskFailedEventAttributes'
                                                                   },
               'LambdaFunctionCompletedEventAttributes' => {
                                                             'class' => 'Paws::SimpleWorkflow::LambdaFunctionCompletedEventAttributes',
                                                             'type' => 'SimpleWorkflow_LambdaFunctionCompletedEventAttributes'
                                                           },
               'WorkflowExecutionCompletedEventAttributes' => {
                                                                'class' => 'Paws::SimpleWorkflow::WorkflowExecutionCompletedEventAttributes',
                                                                'type' => 'SimpleWorkflow_WorkflowExecutionCompletedEventAttributes'
                                                              },
               'StartTimerFailedEventAttributes' => {
                                                      'type' => 'SimpleWorkflow_StartTimerFailedEventAttributes',
                                                      'class' => 'Paws::SimpleWorkflow::StartTimerFailedEventAttributes'
                                                    },
               'CancelWorkflowExecutionFailedEventAttributes' => {
                                                                   'class' => 'Paws::SimpleWorkflow::CancelWorkflowExecutionFailedEventAttributes',
                                                                   'type' => 'SimpleWorkflow_CancelWorkflowExecutionFailedEventAttributes'
                                                                 },
               'ContinueAsNewWorkflowExecutionFailedEventAttributes' => {
                                                                          'type' => 'SimpleWorkflow_ContinueAsNewWorkflowExecutionFailedEventAttributes',
                                                                          'class' => 'Paws::SimpleWorkflow::ContinueAsNewWorkflowExecutionFailedEventAttributes'
                                                                        },
               'RecordMarkerFailedEventAttributes' => {
                                                        'class' => 'Paws::SimpleWorkflow::RecordMarkerFailedEventAttributes',
                                                        'type' => 'SimpleWorkflow_RecordMarkerFailedEventAttributes'
                                                      },
               'SignalExternalWorkflowExecutionFailedEventAttributes' => {
                                                                           'type' => 'SimpleWorkflow_SignalExternalWorkflowExecutionFailedEventAttributes',
                                                                           'class' => 'Paws::SimpleWorkflow::SignalExternalWorkflowExecutionFailedEventAttributes'
                                                                         },
               'DecisionTaskCompletedEventAttributes' => {
                                                           'type' => 'SimpleWorkflow_DecisionTaskCompletedEventAttributes',
                                                           'class' => 'Paws::SimpleWorkflow::DecisionTaskCompletedEventAttributes'
                                                         },
               'TimerStartedEventAttributes' => {
                                                  'class' => 'Paws::SimpleWorkflow::TimerStartedEventAttributes',
                                                  'type' => 'SimpleWorkflow_TimerStartedEventAttributes'
                                                },
               'CompleteWorkflowExecutionFailedEventAttributes' => {
                                                                     'type' => 'SimpleWorkflow_CompleteWorkflowExecutionFailedEventAttributes',
                                                                     'class' => 'Paws::SimpleWorkflow::CompleteWorkflowExecutionFailedEventAttributes'
                                                                   },
               'ActivityTaskCompletedEventAttributes' => {
                                                           'type' => 'SimpleWorkflow_ActivityTaskCompletedEventAttributes',
                                                           'class' => 'Paws::SimpleWorkflow::ActivityTaskCompletedEventAttributes'
                                                         },
               'ExternalWorkflowExecutionSignaledEventAttributes' => {
                                                                       'class' => 'Paws::SimpleWorkflow::ExternalWorkflowExecutionSignaledEventAttributes',
                                                                       'type' => 'SimpleWorkflow_ExternalWorkflowExecutionSignaledEventAttributes'
                                                                     },
               'WorkflowExecutionContinuedAsNewEventAttributes' => {
                                                                     'class' => 'Paws::SimpleWorkflow::WorkflowExecutionContinuedAsNewEventAttributes',
                                                                     'type' => 'SimpleWorkflow_WorkflowExecutionContinuedAsNewEventAttributes'
                                                                   },
               'DecisionTaskTimedOutEventAttributes' => {
                                                          'type' => 'SimpleWorkflow_DecisionTaskTimedOutEventAttributes',
                                                          'class' => 'Paws::SimpleWorkflow::DecisionTaskTimedOutEventAttributes'
                                                        },
               'WorkflowExecutionStartedEventAttributes' => {
                                                              'type' => 'SimpleWorkflow_WorkflowExecutionStartedEventAttributes',
                                                              'class' => 'Paws::SimpleWorkflow::WorkflowExecutionStartedEventAttributes'
                                                            },
               'EventType' => {
                                'type' => 'Str'
                              },
               'ActivityTaskTimedOutEventAttributes' => {
                                                          'class' => 'Paws::SimpleWorkflow::ActivityTaskTimedOutEventAttributes',
                                                          'type' => 'SimpleWorkflow_ActivityTaskTimedOutEventAttributes'
                                                        },
               'ScheduleActivityTaskFailedEventAttributes' => {
                                                                'class' => 'Paws::SimpleWorkflow::ScheduleActivityTaskFailedEventAttributes',
                                                                'type' => 'SimpleWorkflow_ScheduleActivityTaskFailedEventAttributes'
                                                              },
               'ChildWorkflowExecutionCanceledEventAttributes' => {
                                                                    'class' => 'Paws::SimpleWorkflow::ChildWorkflowExecutionCanceledEventAttributes',
                                                                    'type' => 'SimpleWorkflow_ChildWorkflowExecutionCanceledEventAttributes'
                                                                  },
               'LambdaFunctionFailedEventAttributes' => {
                                                          'type' => 'SimpleWorkflow_LambdaFunctionFailedEventAttributes',
                                                          'class' => 'Paws::SimpleWorkflow::LambdaFunctionFailedEventAttributes'
                                                        },
               'DecisionTaskStartedEventAttributes' => {
                                                         'class' => 'Paws::SimpleWorkflow::DecisionTaskStartedEventAttributes',
                                                         'type' => 'SimpleWorkflow_DecisionTaskStartedEventAttributes'
                                                       },
               'WorkflowExecutionSignaledEventAttributes' => {
                                                               'type' => 'SimpleWorkflow_WorkflowExecutionSignaledEventAttributes',
                                                               'class' => 'Paws::SimpleWorkflow::WorkflowExecutionSignaledEventAttributes'
                                                             },
               'ExternalWorkflowExecutionCancelRequestedEventAttributes' => {
                                                                              'type' => 'SimpleWorkflow_ExternalWorkflowExecutionCancelRequestedEventAttributes',
                                                                              'class' => 'Paws::SimpleWorkflow::ExternalWorkflowExecutionCancelRequestedEventAttributes'
                                                                            },
               'StartLambdaFunctionFailedEventAttributes' => {
                                                               'class' => 'Paws::SimpleWorkflow::StartLambdaFunctionFailedEventAttributes',
                                                               'type' => 'SimpleWorkflow_StartLambdaFunctionFailedEventAttributes'
                                                             },
               'WorkflowExecutionCanceledEventAttributes' => {
                                                               'class' => 'Paws::SimpleWorkflow::WorkflowExecutionCanceledEventAttributes',
                                                               'type' => 'SimpleWorkflow_WorkflowExecutionCanceledEventAttributes'
                                                             },
               'WorkflowExecutionCancelRequestedEventAttributes' => {
                                                                      'type' => 'SimpleWorkflow_WorkflowExecutionCancelRequestedEventAttributes',
                                                                      'class' => 'Paws::SimpleWorkflow::WorkflowExecutionCancelRequestedEventAttributes'
                                                                    },
               'RequestCancelExternalWorkflowExecutionInitiatedEventAttributes' => {
                                                                                     'type' => 'SimpleWorkflow_RequestCancelExternalWorkflowExecutionInitiatedEventAttributes',
                                                                                     'class' => 'Paws::SimpleWorkflow::RequestCancelExternalWorkflowExecutionInitiatedEventAttributes'
                                                                                   },
               'ActivityTaskFailedEventAttributes' => {
                                                        'type' => 'SimpleWorkflow_ActivityTaskFailedEventAttributes',
                                                        'class' => 'Paws::SimpleWorkflow::ActivityTaskFailedEventAttributes'
                                                      },
               'ChildWorkflowExecutionTimedOutEventAttributes' => {
                                                                    'type' => 'SimpleWorkflow_ChildWorkflowExecutionTimedOutEventAttributes',
                                                                    'class' => 'Paws::SimpleWorkflow::ChildWorkflowExecutionTimedOutEventAttributes'
                                                                  },
               'ChildWorkflowExecutionFailedEventAttributes' => {
                                                                  'class' => 'Paws::SimpleWorkflow::ChildWorkflowExecutionFailedEventAttributes',
                                                                  'type' => 'SimpleWorkflow_ChildWorkflowExecutionFailedEventAttributes'
                                                                },
               'DecisionTaskScheduledEventAttributes' => {
                                                           'type' => 'SimpleWorkflow_DecisionTaskScheduledEventAttributes',
                                                           'class' => 'Paws::SimpleWorkflow::DecisionTaskScheduledEventAttributes'
                                                         },
               'StartChildWorkflowExecutionInitiatedEventAttributes' => {
                                                                          'type' => 'SimpleWorkflow_StartChildWorkflowExecutionInitiatedEventAttributes',
                                                                          'class' => 'Paws::SimpleWorkflow::StartChildWorkflowExecutionInitiatedEventAttributes'
                                                                        },
               'MarkerRecordedEventAttributes' => {
                                                    'type' => 'SimpleWorkflow_MarkerRecordedEventAttributes',
                                                    'class' => 'Paws::SimpleWorkflow::MarkerRecordedEventAttributes'
                                                  },
               'ChildWorkflowExecutionCompletedEventAttributes' => {
                                                                     'class' => 'Paws::SimpleWorkflow::ChildWorkflowExecutionCompletedEventAttributes',
                                                                     'type' => 'SimpleWorkflow_ChildWorkflowExecutionCompletedEventAttributes'
                                                                   },
               'RequestCancelExternalWorkflowExecutionFailedEventAttributes' => {
                                                                                  'class' => 'Paws::SimpleWorkflow::RequestCancelExternalWorkflowExecutionFailedEventAttributes',
                                                                                  'type' => 'SimpleWorkflow_RequestCancelExternalWorkflowExecutionFailedEventAttributes'
                                                                                },
               'ActivityTaskStartedEventAttributes' => {
                                                         'class' => 'Paws::SimpleWorkflow::ActivityTaskStartedEventAttributes',
                                                         'type' => 'SimpleWorkflow_ActivityTaskStartedEventAttributes'
                                                       },
               'EventTimestamp' => {
                                     'type' => 'Str'
                                   },
               'WorkflowExecutionTerminatedEventAttributes' => {
                                                                 'type' => 'SimpleWorkflow_WorkflowExecutionTerminatedEventAttributes',
                                                                 'class' => 'Paws::SimpleWorkflow::WorkflowExecutionTerminatedEventAttributes'
                                                               },
               'WorkflowExecutionTimedOutEventAttributes' => {
                                                               'class' => 'Paws::SimpleWorkflow::WorkflowExecutionTimedOutEventAttributes',
                                                               'type' => 'SimpleWorkflow_WorkflowExecutionTimedOutEventAttributes'
                                                             },
               'ActivityTaskScheduledEventAttributes' => {
                                                           'class' => 'Paws::SimpleWorkflow::ActivityTaskScheduledEventAttributes',
                                                           'type' => 'SimpleWorkflow_ActivityTaskScheduledEventAttributes'
                                                         },
               'ActivityTaskCanceledEventAttributes' => {
                                                          'type' => 'SimpleWorkflow_ActivityTaskCanceledEventAttributes',
                                                          'class' => 'Paws::SimpleWorkflow::ActivityTaskCanceledEventAttributes'
                                                        },
               'StartChildWorkflowExecutionFailedEventAttributes' => {
                                                                       'class' => 'Paws::SimpleWorkflow::StartChildWorkflowExecutionFailedEventAttributes',
                                                                       'type' => 'SimpleWorkflow_StartChildWorkflowExecutionFailedEventAttributes'
                                                                     },
               'CancelTimerFailedEventAttributes' => {
                                                       'class' => 'Paws::SimpleWorkflow::CancelTimerFailedEventAttributes',
                                                       'type' => 'SimpleWorkflow_CancelTimerFailedEventAttributes'
                                                     },
               'LambdaFunctionStartedEventAttributes' => {
                                                           'type' => 'SimpleWorkflow_LambdaFunctionStartedEventAttributes',
                                                           'class' => 'Paws::SimpleWorkflow::LambdaFunctionStartedEventAttributes'
                                                         },
               'ChildWorkflowExecutionStartedEventAttributes' => {
                                                                   'type' => 'SimpleWorkflow_ChildWorkflowExecutionStartedEventAttributes',
                                                                   'class' => 'Paws::SimpleWorkflow::ChildWorkflowExecutionStartedEventAttributes'
                                                                 },
               'WorkflowExecutionFailedEventAttributes' => {
                                                             'type' => 'SimpleWorkflow_WorkflowExecutionFailedEventAttributes',
                                                             'class' => 'Paws::SimpleWorkflow::WorkflowExecutionFailedEventAttributes'
                                                           },
               'ActivityTaskCancelRequestedEventAttributes' => {
                                                                 'class' => 'Paws::SimpleWorkflow::ActivityTaskCancelRequestedEventAttributes',
                                                                 'type' => 'SimpleWorkflow_ActivityTaskCancelRequestedEventAttributes'
                                                               }
             },
  'IsRequired' => {
                    'EventId' => 1,
                    'EventType' => 1,
                    'EventTimestamp' => 1
                  },
  'NameInRequest' => {
                       'ExternalWorkflowExecutionSignaledEventAttributes' => 'externalWorkflowExecutionSignaledEventAttributes',
                       'ActivityTaskCompletedEventAttributes' => 'activityTaskCompletedEventAttributes',
                       'DecisionTaskTimedOutEventAttributes' => 'decisionTaskTimedOutEventAttributes',
                       'WorkflowExecutionContinuedAsNewEventAttributes' => 'workflowExecutionContinuedAsNewEventAttributes',
                       'WorkflowExecutionStartedEventAttributes' => 'workflowExecutionStartedEventAttributes',
                       'TimerStartedEventAttributes' => 'timerStartedEventAttributes',
                       'DecisionTaskCompletedEventAttributes' => 'decisionTaskCompletedEventAttributes',
                       'CompleteWorkflowExecutionFailedEventAttributes' => 'completeWorkflowExecutionFailedEventAttributes',
                       'SignalExternalWorkflowExecutionFailedEventAttributes' => 'signalExternalWorkflowExecutionFailedEventAttributes',
                       'CancelWorkflowExecutionFailedEventAttributes' => 'cancelWorkflowExecutionFailedEventAttributes',
                       'ContinueAsNewWorkflowExecutionFailedEventAttributes' => 'continueAsNewWorkflowExecutionFailedEventAttributes',
                       'RecordMarkerFailedEventAttributes' => 'recordMarkerFailedEventAttributes',
                       'LambdaFunctionCompletedEventAttributes' => 'lambdaFunctionCompletedEventAttributes',
                       'WorkflowExecutionCompletedEventAttributes' => 'workflowExecutionCompletedEventAttributes',
                       'StartTimerFailedEventAttributes' => 'startTimerFailedEventAttributes',
                       'TimerCanceledEventAttributes' => 'timerCanceledEventAttributes',
                       'LambdaFunctionTimedOutEventAttributes' => 'lambdaFunctionTimedOutEventAttributes',
                       'ChildWorkflowExecutionTerminatedEventAttributes' => 'childWorkflowExecutionTerminatedEventAttributes',
                       'RequestCancelActivityTaskFailedEventAttributes' => 'requestCancelActivityTaskFailedEventAttributes',
                       'FailWorkflowExecutionFailedEventAttributes' => 'failWorkflowExecutionFailedEventAttributes',
                       'SignalExternalWorkflowExecutionInitiatedEventAttributes' => 'signalExternalWorkflowExecutionInitiatedEventAttributes',
                       'TimerFiredEventAttributes' => 'timerFiredEventAttributes',
                       'LambdaFunctionScheduledEventAttributes' => 'lambdaFunctionScheduledEventAttributes',
                       'EventId' => 'eventId',
                       'ScheduleLambdaFunctionFailedEventAttributes' => 'scheduleLambdaFunctionFailedEventAttributes',
                       'ChildWorkflowExecutionStartedEventAttributes' => 'childWorkflowExecutionStartedEventAttributes',
                       'WorkflowExecutionFailedEventAttributes' => 'workflowExecutionFailedEventAttributes',
                       'ActivityTaskCancelRequestedEventAttributes' => 'activityTaskCancelRequestedEventAttributes',
                       'CancelTimerFailedEventAttributes' => 'cancelTimerFailedEventAttributes',
                       'StartChildWorkflowExecutionFailedEventAttributes' => 'startChildWorkflowExecutionFailedEventAttributes',
                       'LambdaFunctionStartedEventAttributes' => 'lambdaFunctionStartedEventAttributes',
                       'ActivityTaskStartedEventAttributes' => 'activityTaskStartedEventAttributes',
                       'RequestCancelExternalWorkflowExecutionFailedEventAttributes' => 'requestCancelExternalWorkflowExecutionFailedEventAttributes',
                       'WorkflowExecutionTimedOutEventAttributes' => 'workflowExecutionTimedOutEventAttributes',
                       'WorkflowExecutionTerminatedEventAttributes' => 'workflowExecutionTerminatedEventAttributes',
                       'EventTimestamp' => 'eventTimestamp',
                       'ActivityTaskCanceledEventAttributes' => 'activityTaskCanceledEventAttributes',
                       'ActivityTaskScheduledEventAttributes' => 'activityTaskScheduledEventAttributes',
                       'StartChildWorkflowExecutionInitiatedEventAttributes' => 'startChildWorkflowExecutionInitiatedEventAttributes',
                       'MarkerRecordedEventAttributes' => 'markerRecordedEventAttributes',
                       'ChildWorkflowExecutionCompletedEventAttributes' => 'childWorkflowExecutionCompletedEventAttributes',
                       'RequestCancelExternalWorkflowExecutionInitiatedEventAttributes' => 'requestCancelExternalWorkflowExecutionInitiatedEventAttributes',
                       'WorkflowExecutionCanceledEventAttributes' => 'workflowExecutionCanceledEventAttributes',
                       'WorkflowExecutionCancelRequestedEventAttributes' => 'workflowExecutionCancelRequestedEventAttributes',
                       'ActivityTaskFailedEventAttributes' => 'activityTaskFailedEventAttributes',
                       'ChildWorkflowExecutionFailedEventAttributes' => 'childWorkflowExecutionFailedEventAttributes',
                       'DecisionTaskScheduledEventAttributes' => 'decisionTaskScheduledEventAttributes',
                       'ChildWorkflowExecutionTimedOutEventAttributes' => 'childWorkflowExecutionTimedOutEventAttributes',
                       'DecisionTaskStartedEventAttributes' => 'decisionTaskStartedEventAttributes',
                       'WorkflowExecutionSignaledEventAttributes' => 'workflowExecutionSignaledEventAttributes',
                       'LambdaFunctionFailedEventAttributes' => 'lambdaFunctionFailedEventAttributes',
                       'ExternalWorkflowExecutionCancelRequestedEventAttributes' => 'externalWorkflowExecutionCancelRequestedEventAttributes',
                       'StartLambdaFunctionFailedEventAttributes' => 'startLambdaFunctionFailedEventAttributes',
                       'ActivityTaskTimedOutEventAttributes' => 'activityTaskTimedOutEventAttributes',
                       'ChildWorkflowExecutionCanceledEventAttributes' => 'childWorkflowExecutionCanceledEventAttributes',
                       'ScheduleActivityTaskFailedEventAttributes' => 'scheduleActivityTaskFailedEventAttributes',
                       'EventType' => 'eventType'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::HistoryEvent

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::HistoryEvent object:

  $service_obj->Method(Att1 => { ActivityTaskCanceledEventAttributes => $value, ..., WorkflowExecutionTimedOutEventAttributes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::HistoryEvent object:

  $result = $service_obj->Method(...);
  $result->Att1->ActivityTaskCanceledEventAttributes

=head1 DESCRIPTION

Event within a workflow execution. A history event can be one of these
types:

=over

=item *

C<ActivityTaskCancelRequested> E<ndash> A C<RequestCancelActivityTask>
decision was received by the system.

=item *

C<ActivityTaskCanceled> E<ndash> The activity task was successfully
canceled.

=item *

C<ActivityTaskCompleted> E<ndash> An activity worker successfully
completed an activity task by calling RespondActivityTaskCompleted.

=item *

C<ActivityTaskFailed> E<ndash> An activity worker failed an activity
task by calling RespondActivityTaskFailed.

=item *

C<ActivityTaskScheduled> E<ndash> An activity task was scheduled for
execution.

=item *

C<ActivityTaskStarted> E<ndash> The scheduled activity task was
dispatched to a worker.

=item *

C<ActivityTaskTimedOut> E<ndash> The activity task timed out.

=item *

C<CancelTimerFailed> E<ndash> Failed to process CancelTimer decision.
This happens when the decision isn't configured properly, for example
no timer exists with the specified timer Id.

=item *

C<CancelWorkflowExecutionFailed> E<ndash> A request to cancel a
workflow execution failed.

=item *

C<ChildWorkflowExecutionCanceled> E<ndash> A child workflow execution,
started by this workflow execution, was canceled and closed.

=item *

C<ChildWorkflowExecutionCompleted> E<ndash> A child workflow execution,
started by this workflow execution, completed successfully and was
closed.

=item *

C<ChildWorkflowExecutionFailed> E<ndash> A child workflow execution,
started by this workflow execution, failed to complete successfully and
was closed.

=item *

C<ChildWorkflowExecutionStarted> E<ndash> A child workflow execution
was successfully started.

=item *

C<ChildWorkflowExecutionTerminated> E<ndash> A child workflow
execution, started by this workflow execution, was terminated.

=item *

C<ChildWorkflowExecutionTimedOut> E<ndash> A child workflow execution,
started by this workflow execution, timed out and was closed.

=item *

C<CompleteWorkflowExecutionFailed> E<ndash> The workflow execution
failed to complete.

=item *

C<ContinueAsNewWorkflowExecutionFailed> E<ndash> The workflow execution
failed to complete after being continued as a new workflow execution.

=item *

C<DecisionTaskCompleted> E<ndash> The decider successfully completed a
decision task by calling RespondDecisionTaskCompleted.

=item *

C<DecisionTaskScheduled> E<ndash> A decision task was scheduled for the
workflow execution.

=item *

C<DecisionTaskStarted> E<ndash> The decision task was dispatched to a
decider.

=item *

C<DecisionTaskTimedOut> E<ndash> The decision task timed out.

=item *

C<ExternalWorkflowExecutionCancelRequested> E<ndash> Request to cancel
an external workflow execution was successfully delivered to the target
execution.

=item *

C<ExternalWorkflowExecutionSignaled> E<ndash> A signal, requested by
this workflow execution, was successfully delivered to the target
external workflow execution.

=item *

C<FailWorkflowExecutionFailed> E<ndash> A request to mark a workflow
execution as failed, itself failed.

=item *

C<MarkerRecorded> E<ndash> A marker was recorded in the workflow
history as the result of a C<RecordMarker> decision.

=item *

C<RecordMarkerFailed> E<ndash> A C<RecordMarker> decision was returned
as failed.

=item *

C<RequestCancelActivityTaskFailed> E<ndash> Failed to process
RequestCancelActivityTask decision. This happens when the decision
isn't configured properly.

=item *

C<RequestCancelExternalWorkflowExecutionFailed> E<ndash> Request to
cancel an external workflow execution failed.

=item *

C<RequestCancelExternalWorkflowExecutionInitiated> E<ndash> A request
was made to request the cancellation of an external workflow execution.

=item *

C<ScheduleActivityTaskFailed> E<ndash> Failed to process
ScheduleActivityTask decision. This happens when the decision isn't
configured properly, for example the activity type specified isn't
registered.

=item *

C<SignalExternalWorkflowExecutionFailed> E<ndash> The request to signal
an external workflow execution failed.

=item *

C<SignalExternalWorkflowExecutionInitiated> E<ndash> A request to
signal an external workflow was made.

=item *

C<StartActivityTaskFailed> E<ndash> A scheduled activity task failed to
start.

=item *

C<StartChildWorkflowExecutionFailed> E<ndash> Failed to process
StartChildWorkflowExecution decision. This happens when the decision
isn't configured properly, for example the workflow type specified
isn't registered.

=item *

C<StartChildWorkflowExecutionInitiated> E<ndash> A request was made to
start a child workflow execution.

=item *

C<StartTimerFailed> E<ndash> Failed to process StartTimer decision.
This happens when the decision isn't configured properly, for example a
timer already exists with the specified timer Id.

=item *

C<TimerCanceled> E<ndash> A timer, previously started for this workflow
execution, was successfully canceled.

=item *

C<TimerFired> E<ndash> A timer, previously started for this workflow
execution, fired.

=item *

C<TimerStarted> E<ndash> A timer was started for the workflow execution
due to a C<StartTimer> decision.

=item *

C<WorkflowExecutionCancelRequested> E<ndash> A request to cancel this
workflow execution was made.

=item *

C<WorkflowExecutionCanceled> E<ndash> The workflow execution was
successfully canceled and closed.

=item *

C<WorkflowExecutionCompleted> E<ndash> The workflow execution was
closed due to successful completion.

=item *

C<WorkflowExecutionContinuedAsNew> E<ndash> The workflow execution was
closed and a new execution of the same type was created with the same
workflowId.

=item *

C<WorkflowExecutionFailed> E<ndash> The workflow execution closed due
to a failure.

=item *

C<WorkflowExecutionSignaled> E<ndash> An external signal was received
for the workflow execution.

=item *

C<WorkflowExecutionStarted> E<ndash> The workflow execution was
started.

=item *

C<WorkflowExecutionTerminated> E<ndash> The workflow execution was
terminated.

=item *

C<WorkflowExecutionTimedOut> E<ndash> The workflow execution was closed
because a time out was exceeded.

=back


=head1 ATTRIBUTES


=head2 ActivityTaskCanceledEventAttributes => SimpleWorkflow_ActivityTaskCanceledEventAttributes

  If the event is of type C<ActivityTaskCanceled> then this member is set
and provides detailed information about the event. It isn't set for
other event types.


=head2 ActivityTaskCancelRequestedEventAttributes => SimpleWorkflow_ActivityTaskCancelRequestedEventAttributes

  If the event is of type C<ActivityTaskcancelRequested> then this member
is set and provides detailed information about the event. It isn't set
for other event types.


=head2 ActivityTaskCompletedEventAttributes => SimpleWorkflow_ActivityTaskCompletedEventAttributes

  If the event is of type C<ActivityTaskCompleted> then this member is
set and provides detailed information about the event. It isn't set for
other event types.


=head2 ActivityTaskFailedEventAttributes => SimpleWorkflow_ActivityTaskFailedEventAttributes

  If the event is of type C<ActivityTaskFailed> then this member is set
and provides detailed information about the event. It isn't set for
other event types.


=head2 ActivityTaskScheduledEventAttributes => SimpleWorkflow_ActivityTaskScheduledEventAttributes

  If the event is of type C<ActivityTaskScheduled> then this member is
set and provides detailed information about the event. It isn't set for
other event types.


=head2 ActivityTaskStartedEventAttributes => SimpleWorkflow_ActivityTaskStartedEventAttributes

  If the event is of type C<ActivityTaskStarted> then this member is set
and provides detailed information about the event. It isn't set for
other event types.


=head2 ActivityTaskTimedOutEventAttributes => SimpleWorkflow_ActivityTaskTimedOutEventAttributes

  If the event is of type C<ActivityTaskTimedOut> then this member is set
and provides detailed information about the event. It isn't set for
other event types.


=head2 CancelTimerFailedEventAttributes => SimpleWorkflow_CancelTimerFailedEventAttributes

  If the event is of type C<CancelTimerFailed> then this member is set
and provides detailed information about the event. It isn't set for
other event types.


=head2 CancelWorkflowExecutionFailedEventAttributes => SimpleWorkflow_CancelWorkflowExecutionFailedEventAttributes

  If the event is of type C<CancelWorkflowExecutionFailed> then this
member is set and provides detailed information about the event. It
isn't set for other event types.


=head2 ChildWorkflowExecutionCanceledEventAttributes => SimpleWorkflow_ChildWorkflowExecutionCanceledEventAttributes

  If the event is of type C<ChildWorkflowExecutionCanceled> then this
member is set and provides detailed information about the event. It
isn't set for other event types.


=head2 ChildWorkflowExecutionCompletedEventAttributes => SimpleWorkflow_ChildWorkflowExecutionCompletedEventAttributes

  If the event is of type C<ChildWorkflowExecutionCompleted> then this
member is set and provides detailed information about the event. It
isn't set for other event types.


=head2 ChildWorkflowExecutionFailedEventAttributes => SimpleWorkflow_ChildWorkflowExecutionFailedEventAttributes

  If the event is of type C<ChildWorkflowExecutionFailed> then this
member is set and provides detailed information about the event. It
isn't set for other event types.


=head2 ChildWorkflowExecutionStartedEventAttributes => SimpleWorkflow_ChildWorkflowExecutionStartedEventAttributes

  If the event is of type C<ChildWorkflowExecutionStarted> then this
member is set and provides detailed information about the event. It
isn't set for other event types.


=head2 ChildWorkflowExecutionTerminatedEventAttributes => SimpleWorkflow_ChildWorkflowExecutionTerminatedEventAttributes

  If the event is of type C<ChildWorkflowExecutionTerminated> then this
member is set and provides detailed information about the event. It
isn't set for other event types.


=head2 ChildWorkflowExecutionTimedOutEventAttributes => SimpleWorkflow_ChildWorkflowExecutionTimedOutEventAttributes

  If the event is of type C<ChildWorkflowExecutionTimedOut> then this
member is set and provides detailed information about the event. It
isn't set for other event types.


=head2 CompleteWorkflowExecutionFailedEventAttributes => SimpleWorkflow_CompleteWorkflowExecutionFailedEventAttributes

  If the event is of type C<CompleteWorkflowExecutionFailed> then this
member is set and provides detailed information about the event. It
isn't set for other event types.


=head2 ContinueAsNewWorkflowExecutionFailedEventAttributes => SimpleWorkflow_ContinueAsNewWorkflowExecutionFailedEventAttributes

  If the event is of type C<ContinueAsNewWorkflowExecutionFailed> then
this member is set and provides detailed information about the event.
It isn't set for other event types.


=head2 DecisionTaskCompletedEventAttributes => SimpleWorkflow_DecisionTaskCompletedEventAttributes

  If the event is of type C<DecisionTaskCompleted> then this member is
set and provides detailed information about the event. It isn't set for
other event types.


=head2 DecisionTaskScheduledEventAttributes => SimpleWorkflow_DecisionTaskScheduledEventAttributes

  If the event is of type C<DecisionTaskScheduled> then this member is
set and provides detailed information about the event. It isn't set for
other event types.


=head2 DecisionTaskStartedEventAttributes => SimpleWorkflow_DecisionTaskStartedEventAttributes

  If the event is of type C<DecisionTaskStarted> then this member is set
and provides detailed information about the event. It isn't set for
other event types.


=head2 DecisionTaskTimedOutEventAttributes => SimpleWorkflow_DecisionTaskTimedOutEventAttributes

  If the event is of type C<DecisionTaskTimedOut> then this member is set
and provides detailed information about the event. It isn't set for
other event types.


=head2 B<REQUIRED> EventId => Int

  The system generated ID of the event. This ID uniquely identifies the
event with in the workflow execution history.


=head2 B<REQUIRED> EventTimestamp => Str

  The date and time when the event occurred.


=head2 B<REQUIRED> EventType => Str

  The type of the history event.


=head2 ExternalWorkflowExecutionCancelRequestedEventAttributes => SimpleWorkflow_ExternalWorkflowExecutionCancelRequestedEventAttributes

  If the event is of type C<ExternalWorkflowExecutionCancelRequested>
then this member is set and provides detailed information about the
event. It isn't set for other event types.


=head2 ExternalWorkflowExecutionSignaledEventAttributes => SimpleWorkflow_ExternalWorkflowExecutionSignaledEventAttributes

  If the event is of type C<ExternalWorkflowExecutionSignaled> then this
member is set and provides detailed information about the event. It
isn't set for other event types.


=head2 FailWorkflowExecutionFailedEventAttributes => SimpleWorkflow_FailWorkflowExecutionFailedEventAttributes

  If the event is of type C<FailWorkflowExecutionFailed> then this member
is set and provides detailed information about the event. It isn't set
for other event types.


=head2 LambdaFunctionCompletedEventAttributes => SimpleWorkflow_LambdaFunctionCompletedEventAttributes

  Provides the details of the C<LambdaFunctionCompleted> event. It isn't
set for other event types.


=head2 LambdaFunctionFailedEventAttributes => SimpleWorkflow_LambdaFunctionFailedEventAttributes

  Provides the details of the C<LambdaFunctionFailed> event. It isn't set
for other event types.


=head2 LambdaFunctionScheduledEventAttributes => SimpleWorkflow_LambdaFunctionScheduledEventAttributes

  Provides the details of the C<LambdaFunctionScheduled> event. It isn't
set for other event types.


=head2 LambdaFunctionStartedEventAttributes => SimpleWorkflow_LambdaFunctionStartedEventAttributes

  Provides the details of the C<LambdaFunctionStarted> event. It isn't
set for other event types.


=head2 LambdaFunctionTimedOutEventAttributes => SimpleWorkflow_LambdaFunctionTimedOutEventAttributes

  Provides the details of the C<LambdaFunctionTimedOut> event. It isn't
set for other event types.


=head2 MarkerRecordedEventAttributes => SimpleWorkflow_MarkerRecordedEventAttributes

  If the event is of type C<MarkerRecorded> then this member is set and
provides detailed information about the event. It isn't set for other
event types.


=head2 RecordMarkerFailedEventAttributes => SimpleWorkflow_RecordMarkerFailedEventAttributes

  If the event is of type C<DecisionTaskFailed> then this member is set
and provides detailed information about the event. It isn't set for
other event types.


=head2 RequestCancelActivityTaskFailedEventAttributes => SimpleWorkflow_RequestCancelActivityTaskFailedEventAttributes

  If the event is of type C<RequestCancelActivityTaskFailed> then this
member is set and provides detailed information about the event. It
isn't set for other event types.


=head2 RequestCancelExternalWorkflowExecutionFailedEventAttributes => SimpleWorkflow_RequestCancelExternalWorkflowExecutionFailedEventAttributes

  If the event is of type C<RequestCancelExternalWorkflowExecutionFailed>
then this member is set and provides detailed information about the
event. It isn't set for other event types.


=head2 RequestCancelExternalWorkflowExecutionInitiatedEventAttributes => SimpleWorkflow_RequestCancelExternalWorkflowExecutionInitiatedEventAttributes

  If the event is of type
C<RequestCancelExternalWorkflowExecutionInitiated> then this member is
set and provides detailed information about the event. It isn't set for
other event types.


=head2 ScheduleActivityTaskFailedEventAttributes => SimpleWorkflow_ScheduleActivityTaskFailedEventAttributes

  If the event is of type C<ScheduleActivityTaskFailed> then this member
is set and provides detailed information about the event. It isn't set
for other event types.


=head2 ScheduleLambdaFunctionFailedEventAttributes => SimpleWorkflow_ScheduleLambdaFunctionFailedEventAttributes

  Provides the details of the C<ScheduleLambdaFunctionFailed> event. It
isn't set for other event types.


=head2 SignalExternalWorkflowExecutionFailedEventAttributes => SimpleWorkflow_SignalExternalWorkflowExecutionFailedEventAttributes

  If the event is of type C<SignalExternalWorkflowExecutionFailed> then
this member is set and provides detailed information about the event.
It isn't set for other event types.


=head2 SignalExternalWorkflowExecutionInitiatedEventAttributes => SimpleWorkflow_SignalExternalWorkflowExecutionInitiatedEventAttributes

  If the event is of type C<SignalExternalWorkflowExecutionInitiated>
then this member is set and provides detailed information about the
event. It isn't set for other event types.


=head2 StartChildWorkflowExecutionFailedEventAttributes => SimpleWorkflow_StartChildWorkflowExecutionFailedEventAttributes

  If the event is of type C<StartChildWorkflowExecutionFailed> then this
member is set and provides detailed information about the event. It
isn't set for other event types.


=head2 StartChildWorkflowExecutionInitiatedEventAttributes => SimpleWorkflow_StartChildWorkflowExecutionInitiatedEventAttributes

  If the event is of type C<StartChildWorkflowExecutionInitiated> then
this member is set and provides detailed information about the event.
It isn't set for other event types.


=head2 StartLambdaFunctionFailedEventAttributes => SimpleWorkflow_StartLambdaFunctionFailedEventAttributes

  Provides the details of the C<StartLambdaFunctionFailed> event. It
isn't set for other event types.


=head2 StartTimerFailedEventAttributes => SimpleWorkflow_StartTimerFailedEventAttributes

  If the event is of type C<StartTimerFailed> then this member is set and
provides detailed information about the event. It isn't set for other
event types.


=head2 TimerCanceledEventAttributes => SimpleWorkflow_TimerCanceledEventAttributes

  If the event is of type C<TimerCanceled> then this member is set and
provides detailed information about the event. It isn't set for other
event types.


=head2 TimerFiredEventAttributes => SimpleWorkflow_TimerFiredEventAttributes

  If the event is of type C<TimerFired> then this member is set and
provides detailed information about the event. It isn't set for other
event types.


=head2 TimerStartedEventAttributes => SimpleWorkflow_TimerStartedEventAttributes

  If the event is of type C<TimerStarted> then this member is set and
provides detailed information about the event. It isn't set for other
event types.


=head2 WorkflowExecutionCanceledEventAttributes => SimpleWorkflow_WorkflowExecutionCanceledEventAttributes

  If the event is of type C<WorkflowExecutionCanceled> then this member
is set and provides detailed information about the event. It isn't set
for other event types.


=head2 WorkflowExecutionCancelRequestedEventAttributes => SimpleWorkflow_WorkflowExecutionCancelRequestedEventAttributes

  If the event is of type C<WorkflowExecutionCancelRequested> then this
member is set and provides detailed information about the event. It
isn't set for other event types.


=head2 WorkflowExecutionCompletedEventAttributes => SimpleWorkflow_WorkflowExecutionCompletedEventAttributes

  If the event is of type C<WorkflowExecutionCompleted> then this member
is set and provides detailed information about the event. It isn't set
for other event types.


=head2 WorkflowExecutionContinuedAsNewEventAttributes => SimpleWorkflow_WorkflowExecutionContinuedAsNewEventAttributes

  If the event is of type C<WorkflowExecutionContinuedAsNew> then this
member is set and provides detailed information about the event. It
isn't set for other event types.


=head2 WorkflowExecutionFailedEventAttributes => SimpleWorkflow_WorkflowExecutionFailedEventAttributes

  If the event is of type C<WorkflowExecutionFailed> then this member is
set and provides detailed information about the event. It isn't set for
other event types.


=head2 WorkflowExecutionSignaledEventAttributes => SimpleWorkflow_WorkflowExecutionSignaledEventAttributes

  If the event is of type C<WorkflowExecutionSignaled> then this member
is set and provides detailed information about the event. It isn't set
for other event types.


=head2 WorkflowExecutionStartedEventAttributes => SimpleWorkflow_WorkflowExecutionStartedEventAttributes

  If the event is of type C<WorkflowExecutionStarted> then this member is
set and provides detailed information about the event. It isn't set for
other event types.


=head2 WorkflowExecutionTerminatedEventAttributes => SimpleWorkflow_WorkflowExecutionTerminatedEventAttributes

  If the event is of type C<WorkflowExecutionTerminated> then this member
is set and provides detailed information about the event. It isn't set
for other event types.


=head2 WorkflowExecutionTimedOutEventAttributes => SimpleWorkflow_WorkflowExecutionTimedOutEventAttributes

  If the event is of type C<WorkflowExecutionTimedOut> then this member
is set and provides detailed information about the event. It isn't set
for other event types.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

