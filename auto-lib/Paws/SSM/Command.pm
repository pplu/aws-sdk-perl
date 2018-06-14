package Paws::SSM::Command;
  use Moose;
  has CloudWatchOutputConfig => (is => 'ro', isa => 'Paws::SSM::CloudWatchOutputConfig');
  has CommandId => (is => 'ro', isa => 'Str');
  has Comment => (is => 'ro', isa => 'Str');
  has CompletedCount => (is => 'ro', isa => 'Int');
  has DeliveryTimedOutCount => (is => 'ro', isa => 'Int');
  has DocumentName => (is => 'ro', isa => 'Str');
  has DocumentVersion => (is => 'ro', isa => 'Str');
  has ErrorCount => (is => 'ro', isa => 'Int');
  has ExpiresAfter => (is => 'ro', isa => 'Str');
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MaxConcurrency => (is => 'ro', isa => 'Str');
  has MaxErrors => (is => 'ro', isa => 'Str');
  has NotificationConfig => (is => 'ro', isa => 'Paws::SSM::NotificationConfig');
  has OutputS3BucketName => (is => 'ro', isa => 'Str');
  has OutputS3KeyPrefix => (is => 'ro', isa => 'Str');
  has OutputS3Region => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'Paws::SSM::Parameters');
  has RequestedDateTime => (is => 'ro', isa => 'Str');
  has ServiceRole => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusDetails => (is => 'ro', isa => 'Str');
  has TargetCount => (is => 'ro', isa => 'Int');
  has Targets => (is => 'ro', isa => 'ArrayRef[Paws::SSM::Target]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::Command

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::Command object:

  $service_obj->Method(Att1 => { CloudWatchOutputConfig => $value, ..., Targets => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::Command object:

  $result = $service_obj->Method(...);
  $result->Att1->CloudWatchOutputConfig

=head1 DESCRIPTION

Describes a command request.

=head1 ATTRIBUTES


=head2 CloudWatchOutputConfig => L<Paws::SSM::CloudWatchOutputConfig>

  CloudWatch Logs information where you want Systems Manager to send the
command output.


=head2 CommandId => Str

  A unique identifier for this command.


=head2 Comment => Str

  User-specified information about the command, such as a brief
description of what the command should do.


=head2 CompletedCount => Int

  The number of targets for which the command invocation reached a
terminal state. Terminal states include the following: Success, Failed,
Execution Timed Out, Delivery Timed Out, Canceled, Terminated, or
Undeliverable.


=head2 DeliveryTimedOutCount => Int

  The number of targets for which the status is Delivery Timed Out.


=head2 DocumentName => Str

  The name of the document requested for execution.


=head2 DocumentVersion => Str

  The SSM document version.


=head2 ErrorCount => Int

  The number of targets for which the status is Failed or Execution Timed
Out.


=head2 ExpiresAfter => Str

  If this time is reached and the command has not already started
executing, it will not run. Calculated based on the ExpiresAfter user
input provided as part of the SendCommand API.


=head2 InstanceIds => ArrayRef[Str|Undef]

  The instance IDs against which this command was requested.


=head2 MaxConcurrency => Str

  The maximum number of instances that are allowed to execute the command
at the same time. You can specify a number of instances, such as 10, or
a percentage of instances, such as 10%. The default value is 50. For
more information about how to use MaxConcurrency, see Executing
Commands Using Systems Manager Run Command
(http://docs.aws.amazon.com/systems-manager/latest/userguide/run-command.html)
in the I<AWS Systems Manager User Guide>.


=head2 MaxErrors => Str

  The maximum number of errors allowed before the system stops sending
the command to additional targets. You can specify a number of errors,
such as 10, or a percentage or errors, such as 10%. The default value
is 0. For more information about how to use MaxErrors, see Executing
Commands Using Systems Manager Run Command
(http://docs.aws.amazon.com/systems-manager/latest/userguide/run-command.html)
in the I<AWS Systems Manager User Guide>.


=head2 NotificationConfig => L<Paws::SSM::NotificationConfig>

  Configurations for sending notifications about command status changes.


=head2 OutputS3BucketName => Str

  The S3 bucket where the responses to the command executions should be
stored. This was requested when issuing the command.


=head2 OutputS3KeyPrefix => Str

  The S3 directory path inside the bucket where the responses to the
command executions should be stored. This was requested when issuing
the command.


=head2 OutputS3Region => Str

  (Deprecated) You can no longer specify this parameter. The system
ignores it. Instead, Systems Manager automatically determines the
Amazon S3 bucket region.


=head2 Parameters => L<Paws::SSM::Parameters>

  The parameter values to be inserted in the document when executing the
command.


=head2 RequestedDateTime => Str

  The date and time the command was requested.


=head2 ServiceRole => Str

  The IAM service role that Run Command uses to act on your behalf when
sending notifications about command status changes.


=head2 Status => Str

  The status of the command.


=head2 StatusDetails => Str

  A detailed status of the command execution. StatusDetails includes more
information than Status because it includes states resulting from error
and concurrency control parameters. StatusDetails can show different
results than Status. For more information about these statuses, see
Understanding Command Statuses
(http://docs.aws.amazon.com/systems-manager/latest/userguide/monitor-commands.html)
in the I<AWS Systems Manager User Guide>. StatusDetails can be one of
the following values:

=over

=item *

Pending: The command has not been sent to any instances.

=item *

In Progress: The command has been sent to at least one instance but has
not reached a final state on all instances.

=item *

Success: The command successfully executed on all invocations. This is
a terminal state.

=item *

Delivery Timed Out: The value of MaxErrors or more command invocations
shows a status of Delivery Timed Out. This is a terminal state.

=item *

Execution Timed Out: The value of MaxErrors or more command invocations
shows a status of Execution Timed Out. This is a terminal state.

=item *

Failed: The value of MaxErrors or more command invocations shows a
status of Failed. This is a terminal state.

=item *

Incomplete: The command was attempted on all instances and one or more
invocations does not have a value of Success but not enough invocations
failed for the status to be Failed. This is a terminal state.

=item *

Canceled: The command was terminated before it was completed. This is a
terminal state.

=item *

Rate Exceeded: The number of instances targeted by the command exceeded
the account limit for pending invocations. The system has canceled the
command before executing it on any instance. This is a terminal state.

=back



=head2 TargetCount => Int

  The number of targets for the command.


=head2 Targets => ArrayRef[L<Paws::SSM::Target>]

  An array of search criteria that targets instances using a Key,Value
combination that you specify. Targets is required if you don't provide
one or more instance IDs in the call.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

