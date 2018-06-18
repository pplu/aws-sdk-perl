package Paws::SSM::CommandInvocation;
  use Moose;
  has CloudWatchOutputConfig => (is => 'ro', isa => 'Paws::SSM::CloudWatchOutputConfig');
  has CommandId => (is => 'ro', isa => 'Str');
  has CommandPlugins => (is => 'ro', isa => 'ArrayRef[Paws::SSM::CommandPlugin]');
  has Comment => (is => 'ro', isa => 'Str');
  has DocumentName => (is => 'ro', isa => 'Str');
  has DocumentVersion => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has InstanceName => (is => 'ro', isa => 'Str');
  has NotificationConfig => (is => 'ro', isa => 'Paws::SSM::NotificationConfig');
  has RequestedDateTime => (is => 'ro', isa => 'Str');
  has ServiceRole => (is => 'ro', isa => 'Str');
  has StandardErrorUrl => (is => 'ro', isa => 'Str');
  has StandardOutputUrl => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusDetails => (is => 'ro', isa => 'Str');
  has TraceOutput => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::CommandInvocation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::CommandInvocation object:

  $service_obj->Method(Att1 => { CloudWatchOutputConfig => $value, ..., TraceOutput => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::CommandInvocation object:

  $result = $service_obj->Method(...);
  $result->Att1->CloudWatchOutputConfig

=head1 DESCRIPTION

An invocation is copy of a command sent to a specific instance. A
command can apply to one or more instances. A command invocation
applies to one instance. For example, if a user executes SendCommand
against three instances, then a command invocation is created for each
requested instance ID. A command invocation returns status and detail
information about a command you executed.

=head1 ATTRIBUTES


=head2 CloudWatchOutputConfig => L<Paws::SSM::CloudWatchOutputConfig>

  CloudWatch Logs information where you want Systems Manager to send the
command output.


=head2 CommandId => Str

  The command against which this invocation was requested.


=head2 CommandPlugins => ArrayRef[L<Paws::SSM::CommandPlugin>]

  


=head2 Comment => Str

  User-specified information about the command, such as a brief
description of what the command should do.


=head2 DocumentName => Str

  The document name that was requested for execution.


=head2 DocumentVersion => Str

  The SSM document version.


=head2 InstanceId => Str

  The instance ID in which this invocation was requested.


=head2 InstanceName => Str

  The name of the invocation target. For Amazon EC2 instances this is the
value for the aws:Name tag. For on-premises instances, this is the name
of the instance.


=head2 NotificationConfig => L<Paws::SSM::NotificationConfig>

  Configurations for sending notifications about command status changes
on a per instance basis.


=head2 RequestedDateTime => Str

  The time and date the request was sent to this instance.


=head2 ServiceRole => Str

  The IAM service role that Run Command uses to act on your behalf when
sending notifications about command status changes on a per instance
basis.


=head2 StandardErrorUrl => Str

  The URL to the plugin's StdErr file in Amazon S3, if the Amazon S3
bucket was defined for the parent command. For an invocation,
StandardErrorUrl is populated if there is just one plugin defined for
the command, and the Amazon S3 bucket was defined for the command.


=head2 StandardOutputUrl => Str

  The URL to the plugin's StdOut file in Amazon S3, if the Amazon S3
bucket was defined for the parent command. For an invocation,
StandardOutputUrl is populated if there is just one plugin defined for
the command, and the Amazon S3 bucket was defined for the command.


=head2 Status => Str

  Whether or not the invocation succeeded, failed, or is pending.


=head2 StatusDetails => Str

  A detailed status of the command execution for each invocation (each
instance targeted by the command). StatusDetails includes more
information than Status because it includes states resulting from error
and concurrency control parameters. StatusDetails can show different
results than Status. For more information about these statuses, see
Understanding Command Statuses
(http://docs.aws.amazon.com/systems-manager/latest/userguide/monitor-commands.html)
in the I<AWS Systems Manager User Guide>. StatusDetails can be one of
the following values:

=over

=item *

Pending: The command has not been sent to the instance.

=item *

In Progress: The command has been sent to the instance but has not
reached a terminal state.

=item *

Success: The execution of the command or plugin was successfully
completed. This is a terminal state.

=item *

Delivery Timed Out: The command was not delivered to the instance
before the delivery timeout expired. Delivery timeouts do not count
against the parent command's MaxErrors limit, but they do contribute to
whether the parent command status is Success or Incomplete. This is a
terminal state.

=item *

Execution Timed Out: Command execution started on the instance, but the
execution was not complete before the execution timeout expired.
Execution timeouts count against the MaxErrors limit of the parent
command. This is a terminal state.

=item *

Failed: The command was not successful on the instance. For a plugin,
this indicates that the result code was not zero. For a command
invocation, this indicates that the result code for one or more plugins
was not zero. Invocation failures count against the MaxErrors limit of
the parent command. This is a terminal state.

=item *

Canceled: The command was terminated before it was completed. This is a
terminal state.

=item *

Undeliverable: The command can't be delivered to the instance. The
instance might not exist or might not be responding. Undeliverable
invocations don't count against the parent command's MaxErrors limit
and don't contribute to whether the parent command status is Success or
Incomplete. This is a terminal state.

=item *

Terminated: The parent command exceeded its MaxErrors limit and
subsequent command invocations were canceled by the system. This is a
terminal state.

=back



=head2 TraceOutput => Str

  Gets the trace output sent by the agent.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

