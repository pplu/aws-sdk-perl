# Generated from callresult_class.tt

package Paws::CloudFormation::DescribeChangeSetOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::CloudFormation::Types qw/CloudFormation_Change CloudFormation_Parameter CloudFormation_Tag CloudFormation_RollbackConfiguration/;
  has Capabilities => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Changes => (is => 'ro', isa => ArrayRef[CloudFormation_Change]);
  has ChangeSetId => (is => 'ro', isa => Str);
  has ChangeSetName => (is => 'ro', isa => Str);
  has CreationTime => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has ExecutionStatus => (is => 'ro', isa => Str);
  has NextToken => (is => 'ro', isa => Str);
  has NotificationARNs => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Parameters => (is => 'ro', isa => ArrayRef[CloudFormation_Parameter]);
  has RollbackConfiguration => (is => 'ro', isa => CloudFormation_RollbackConfiguration);
  has StackId => (is => 'ro', isa => Str);
  has StackName => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has StatusReason => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[CloudFormation_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RollbackConfiguration' => {
                                            'type' => 'CloudFormation_RollbackConfiguration',
                                            'class' => 'Paws::CloudFormation::RollbackConfiguration'
                                          },
               'Tags' => {
                           'type' => 'ArrayRef[CloudFormation_Tag]',
                           'class' => 'Paws::CloudFormation::Tag'
                         },
               'ExecutionStatus' => {
                                      'type' => 'Str'
                                    },
               'Capabilities' => {
                                   'type' => 'ArrayRef[Str|Undef]'
                                 },
               'StatusReason' => {
                                   'type' => 'Str'
                                 },
               'Description' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'StackId' => {
                              'type' => 'Str'
                            },
               'ChangeSetName' => {
                                    'type' => 'Str'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Status' => {
                             'type' => 'Str'
                           },
               'ChangeSetId' => {
                                  'type' => 'Str'
                                },
               'StackName' => {
                                'type' => 'Str'
                              },
               'NotificationARNs' => {
                                       'type' => 'ArrayRef[Str|Undef]'
                                     },
               'Changes' => {
                              'class' => 'Paws::CloudFormation::Change',
                              'type' => 'ArrayRef[CloudFormation_Change]'
                            },
               'Parameters' => {
                                 'class' => 'Paws::CloudFormation::Parameter',
                                 'type' => 'ArrayRef[CloudFormation_Parameter]'
                               },
               'CreationTime' => {
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

Paws::CloudFormation::DescribeChangeSetOutput

=head1 ATTRIBUTES


=head2 Capabilities => ArrayRef[Str|Undef]

If you execute the change set, the list of capabilities that were
explicitly acknowledged when the change set was created.


=head2 Changes => ArrayRef[CloudFormation_Change]

A list of C<Change> structures that describes the resources AWS
CloudFormation changes if you execute the change set.


=head2 ChangeSetId => Str

The ARN of the change set.


=head2 ChangeSetName => Str

The name of the change set.


=head2 CreationTime => Str

The start time when the change set was created, in UTC.


=head2 Description => Str

Information about the change set.


=head2 ExecutionStatus => Str

If the change set execution status is C<AVAILABLE>, you can execute the
change set. If you canE<rsquo>t execute the change set, the status
indicates why. For example, a change set might be in an C<UNAVAILABLE>
state because AWS CloudFormation is still creating it or in an
C<OBSOLETE> state because the stack was already updated.

Valid values are: C<"UNAVAILABLE">, C<"AVAILABLE">, C<"EXECUTE_IN_PROGRESS">, C<"EXECUTE_COMPLETE">, C<"EXECUTE_FAILED">, C<"OBSOLETE">
=head2 NextToken => Str

If the output exceeds 1 MB, a string that identifies the next page of
changes. If there is no additional page, this value is null.


=head2 NotificationARNs => ArrayRef[Str|Undef]

The ARNs of the Amazon Simple Notification Service (Amazon SNS) topics
that will be associated with the stack if you execute the change set.


=head2 Parameters => ArrayRef[CloudFormation_Parameter]

A list of C<Parameter> structures that describes the input parameters
and their values used to create the change set. For more information,
see the Parameter
(https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html)
data type.


=head2 RollbackConfiguration => CloudFormation_RollbackConfiguration

The rollback triggers for AWS CloudFormation to monitor during stack
creation and updating operations, and for the specified monitoring
period afterwards.


=head2 StackId => Str

The ARN of the stack that is associated with the change set.


=head2 StackName => Str

The name of the stack that is associated with the change set.


=head2 Status => Str

The current status of the change set, such as C<CREATE_IN_PROGRESS>,
C<CREATE_COMPLETE>, or C<FAILED>.

Valid values are: C<"CREATE_PENDING">, C<"CREATE_IN_PROGRESS">, C<"CREATE_COMPLETE">, C<"DELETE_COMPLETE">, C<"FAILED">
=head2 StatusReason => Str

A description of the change set's status. For example, if your attempt
to create a change set failed, AWS CloudFormation shows the error
message.


=head2 Tags => ArrayRef[CloudFormation_Tag]

If you execute the change set, the tags that will be associated with
the stack.


=head2 _request_id => Str


=cut

