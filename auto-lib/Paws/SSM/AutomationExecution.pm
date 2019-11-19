# Generated from default/object.tt
package Paws::SSM::AutomationExecution;
  use Moo;
  use Types::Standard qw/Str ArrayRef Bool/;
  use Paws::SSM::Types qw/SSM_TargetMap SSM_StepExecution SSM_AutomationParameterMap SSM_ProgressCounters SSM_ResolvedTargets SSM_TargetLocation SSM_Target/;
  has AutomationExecutionId => (is => 'ro', isa => Str);
  has AutomationExecutionStatus => (is => 'ro', isa => Str);
  has CurrentAction => (is => 'ro', isa => Str);
  has CurrentStepName => (is => 'ro', isa => Str);
  has DocumentName => (is => 'ro', isa => Str);
  has DocumentVersion => (is => 'ro', isa => Str);
  has ExecutedBy => (is => 'ro', isa => Str);
  has ExecutionEndTime => (is => 'ro', isa => Str);
  has ExecutionStartTime => (is => 'ro', isa => Str);
  has FailureMessage => (is => 'ro', isa => Str);
  has MaxConcurrency => (is => 'ro', isa => Str);
  has MaxErrors => (is => 'ro', isa => Str);
  has Mode => (is => 'ro', isa => Str);
  has Outputs => (is => 'ro', isa => SSM_AutomationParameterMap);
  has Parameters => (is => 'ro', isa => SSM_AutomationParameterMap);
  has ParentAutomationExecutionId => (is => 'ro', isa => Str);
  has ProgressCounters => (is => 'ro', isa => SSM_ProgressCounters);
  has ResolvedTargets => (is => 'ro', isa => SSM_ResolvedTargets);
  has StepExecutions => (is => 'ro', isa => ArrayRef[SSM_StepExecution]);
  has StepExecutionsTruncated => (is => 'ro', isa => Bool);
  has Target => (is => 'ro', isa => Str);
  has TargetLocations => (is => 'ro', isa => ArrayRef[SSM_TargetLocation]);
  has TargetMaps => (is => 'ro', isa => ArrayRef[SSM_TargetMap]);
  has TargetParameterName => (is => 'ro', isa => Str);
  has Targets => (is => 'ro', isa => ArrayRef[SSM_Target]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResolvedTargets' => {
                                      'class' => 'Paws::SSM::ResolvedTargets',
                                      'type' => 'SSM_ResolvedTargets'
                                    },
               'AutomationExecutionId' => {
                                            'type' => 'Str'
                                          },
               'Outputs' => {
                              'class' => 'Paws::SSM::AutomationParameterMap',
                              'type' => 'SSM_AutomationParameterMap'
                            },
               'AutomationExecutionStatus' => {
                                                'type' => 'Str'
                                              },
               'TargetParameterName' => {
                                          'type' => 'Str'
                                        },
               'ExecutionEndTime' => {
                                       'type' => 'Str'
                                     },
               'MaxConcurrency' => {
                                     'type' => 'Str'
                                   },
               'Parameters' => {
                                 'class' => 'Paws::SSM::AutomationParameterMap',
                                 'type' => 'SSM_AutomationParameterMap'
                               },
               'TargetLocations' => {
                                      'type' => 'ArrayRef[SSM_TargetLocation]',
                                      'class' => 'Paws::SSM::TargetLocation'
                                    },
               'ParentAutomationExecutionId' => {
                                                  'type' => 'Str'
                                                },
               'TargetMaps' => {
                                 'type' => 'ArrayRef[SSM_TargetMap]',
                                 'class' => 'Paws::SSM::TargetMap'
                               },
               'ExecutionStartTime' => {
                                         'type' => 'Str'
                                       },
               'Target' => {
                             'type' => 'Str'
                           },
               'StepExecutionsTruncated' => {
                                              'type' => 'Bool'
                                            },
               'CurrentStepName' => {
                                      'type' => 'Str'
                                    },
               'ProgressCounters' => {
                                       'class' => 'Paws::SSM::ProgressCounters',
                                       'type' => 'SSM_ProgressCounters'
                                     },
               'Mode' => {
                           'type' => 'Str'
                         },
               'StepExecutions' => {
                                     'type' => 'ArrayRef[SSM_StepExecution]',
                                     'class' => 'Paws::SSM::StepExecution'
                                   },
               'FailureMessage' => {
                                     'type' => 'Str'
                                   },
               'DocumentName' => {
                                   'type' => 'Str'
                                 },
               'CurrentAction' => {
                                    'type' => 'Str'
                                  },
               'Targets' => {
                              'class' => 'Paws::SSM::Target',
                              'type' => 'ArrayRef[SSM_Target]'
                            },
               'MaxErrors' => {
                                'type' => 'Str'
                              },
               'DocumentVersion' => {
                                      'type' => 'Str'
                                    },
               'ExecutedBy' => {
                                 'type' => 'Str'
                               }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::AutomationExecution

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::AutomationExecution object:

  $service_obj->Method(Att1 => { AutomationExecutionId => $value, ..., Targets => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::AutomationExecution object:

  $result = $service_obj->Method(...);
  $result->Att1->AutomationExecutionId

=head1 DESCRIPTION

Detailed information about the current state of an individual
Automation execution.

=head1 ATTRIBUTES


=head2 AutomationExecutionId => Str

  The execution ID.


=head2 AutomationExecutionStatus => Str

  The execution status of the Automation.


=head2 CurrentAction => Str

  The action of the step that is currently running.


=head2 CurrentStepName => Str

  The name of the step that is currently running.


=head2 DocumentName => Str

  The name of the Automation document used during the execution.


=head2 DocumentVersion => Str

  The version of the document to use during execution.


=head2 ExecutedBy => Str

  The Amazon Resource Name (ARN) of the user who ran the automation.


=head2 ExecutionEndTime => Str

  The time the execution finished.


=head2 ExecutionStartTime => Str

  The time the execution started.


=head2 FailureMessage => Str

  A message describing why an execution has failed, if the status is set
to Failed.


=head2 MaxConcurrency => Str

  The MaxConcurrency value specified by the user when the execution
started.


=head2 MaxErrors => Str

  The MaxErrors value specified by the user when the execution started.


=head2 Mode => Str

  The automation execution mode.


=head2 Outputs => SSM_AutomationParameterMap

  The list of execution outputs as defined in the automation document.


=head2 Parameters => SSM_AutomationParameterMap

  The key-value map of execution parameters, which were supplied when
calling StartAutomationExecution.


=head2 ParentAutomationExecutionId => Str

  The AutomationExecutionId of the parent automation.


=head2 ProgressCounters => SSM_ProgressCounters

  An aggregate of step execution statuses displayed in the AWS Console
for a multi-Region and multi-account Automation execution.


=head2 ResolvedTargets => SSM_ResolvedTargets

  A list of resolved targets in the rate control execution.


=head2 StepExecutions => ArrayRef[SSM_StepExecution]

  A list of details about the current state of all steps that comprise an
execution. An Automation document contains a list of steps that are run
in order.


=head2 StepExecutionsTruncated => Bool

  A boolean value that indicates if the response contains the full list
of the Automation step executions. If true, use the
DescribeAutomationStepExecutions API action to get the full list of
step executions.


=head2 Target => Str

  The target of the execution.


=head2 TargetLocations => ArrayRef[SSM_TargetLocation]

  The combination of AWS Regions and/or AWS accounts where you want to
run the Automation.


=head2 TargetMaps => ArrayRef[SSM_TargetMap]

  The specified key-value mapping of document parameters to target
resources.


=head2 TargetParameterName => Str

  The parameter name.


=head2 Targets => ArrayRef[SSM_Target]

  The specified targets.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

