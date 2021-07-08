
package Paws::Appflow::DescribeFlowResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has CreatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdBy');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DestinationFlowConfigList => (is => 'ro', isa => 'ArrayRef[Paws::Appflow::DestinationFlowConfig]', traits => ['NameInRequest'], request_name => 'destinationFlowConfigList');
  has FlowArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'flowArn');
  has FlowName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'flowName');
  has FlowStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'flowStatus');
  has FlowStatusMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'flowStatusMessage');
  has KmsArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsArn');
  has LastRunExecutionDetails => (is => 'ro', isa => 'Paws::Appflow::ExecutionDetails', traits => ['NameInRequest'], request_name => 'lastRunExecutionDetails');
  has LastUpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedAt');
  has LastUpdatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedBy');
  has SourceFlowConfig => (is => 'ro', isa => 'Paws::Appflow::SourceFlowConfig', traits => ['NameInRequest'], request_name => 'sourceFlowConfig');
  has Tags => (is => 'ro', isa => 'Paws::Appflow::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has Tasks => (is => 'ro', isa => 'ArrayRef[Paws::Appflow::Task]', traits => ['NameInRequest'], request_name => 'tasks');
  has TriggerConfig => (is => 'ro', isa => 'Paws::Appflow::TriggerConfig', traits => ['NameInRequest'], request_name => 'triggerConfig');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Appflow::DescribeFlowResponse

=head1 ATTRIBUTES


=head2 CreatedAt => Str

Specifies when the flow was created.


=head2 CreatedBy => Str

The ARN of the user who created the flow.


=head2 Description => Str

A description of the flow.


=head2 DestinationFlowConfigList => ArrayRef[L<Paws::Appflow::DestinationFlowConfig>]

The configuration that controls how Amazon AppFlow transfers data to
the destination connector.


=head2 FlowArn => Str

The flow's Amazon Resource Name (ARN).


=head2 FlowName => Str

The specified name of the flow. Spaces are not allowed. Use underscores
(_) or hyphens (-) only.


=head2 FlowStatus => Str

Indicates the current status of the flow.

Valid values are: C<"Active">, C<"Deprecated">, C<"Deleted">, C<"Draft">, C<"Errored">, C<"Suspended">
=head2 FlowStatusMessage => Str

Contains an error message if the flow status is in a suspended or error
state. This applies only to scheduled or event-triggered flows.


=head2 KmsArn => Str

The ARN (Amazon Resource Name) of the Key Management Service (KMS) key
you provide for encryption. This is required if you do not want to use
the Amazon AppFlow-managed KMS key. If you don't provide anything here,
Amazon AppFlow uses the Amazon AppFlow-managed KMS key.


=head2 LastRunExecutionDetails => L<Paws::Appflow::ExecutionDetails>

Describes the details of the most recent flow run.


=head2 LastUpdatedAt => Str

Specifies when the flow was last updated.


=head2 LastUpdatedBy => Str

Specifies the user name of the account that performed the most recent
update.


=head2 SourceFlowConfig => L<Paws::Appflow::SourceFlowConfig>

The configuration that controls how Amazon AppFlow retrieves data from
the source connector.


=head2 Tags => L<Paws::Appflow::TagMap>

The tags used to organize, track, or control access for your flow.


=head2 Tasks => ArrayRef[L<Paws::Appflow::Task>]

A list of tasks that Amazon AppFlow performs while transferring the
data in the flow run.


=head2 TriggerConfig => L<Paws::Appflow::TriggerConfig>

The trigger settings that determine how and when the flow runs.


=head2 _request_id => Str


=cut

