package Paws::SSM::Command;
  use Moose;
  has CommandId => (is => 'ro', isa => 'Str');
  has Comment => (is => 'ro', isa => 'Str');
  has CompletedCount => (is => 'ro', isa => 'Int');
  has DocumentName => (is => 'ro', isa => 'Str');
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

  $service_obj->Method(Att1 => { CommandId => $value, ..., Targets => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::Command object:

  $result = $service_obj->Method(...);
  $result->Att1->CommandId

=head1 DESCRIPTION

Describes a command request.

=head1 ATTRIBUTES


=head2 CommandId => Str

  A unique identifier for this command.


=head2 Comment => Str

  User-specified information about the command, such as a brief
description of what the command should do.


=head2 CompletedCount => Int

  The number of targets for which the command invocation reached a
terminal state. Terminal states include the following: C<Success>,
C<Failed>, C<Execution Timed Out>, C<Delivery Timed Out>, C<Canceled>,
C<Terminated>, or C<Undeliverable>.


=head2 DocumentName => Str

  The name of the document requested for execution.


=head2 ErrorCount => Int

  The number of targets for which the status is C<Failed> or C<Execution
Timed Out>.


=head2 ExpiresAfter => Str

  If this time is reached and the command has not already started
executing, it will not execute. Calculated based on the ExpiresAfter
user input provided as part of the SendCommand API.


=head2 InstanceIds => ArrayRef[Str|Undef]

  The instance IDs against which this command was requested.


=head2 MaxConcurrency => Str

  The maximum number of instances that are allowed to execute the command
at the same time. You can specify a number of instances, such as 10, or
a percentage of instances, such as 10%. The default value is 50. For
more information about how to use C<MaxConcurrency>, see Executing a
Command Using Systems Manager Run Command.


=head2 MaxErrors => Str

  The maximum number of errors allowed before the system stops sending
the command to additional targets. You can specify a number of errors,
such as 10, or a percentage or errors, such as 10%. The default value
is 50. For more information about how to use C<MaxErrors>, see
Executing a Command Using Systems Manager Run Command.


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

  The region where the Amazon Simple Storage Service (Amazon S3) output
bucket is located. The default value is the region where Run Command is
being called.


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

  A detailed status of the command execution. C<StatusDetails> includes
more information than C<Status> because it includes states resulting
from error and concurrency control parameters. C<StatusDetails> can
show different results than C<Status>. For more information about these
statuses, see Run Command Status. C<StatusDetails> can be one of the
following values:

=over

=item *

Pending E<ndash> The command has not been sent to any instances.

=item *

In Progress E<ndash> The command has been sent to at least one instance
but has not reached a final state on all instances.

=item *

Success E<ndash> The command successfully executed on all invocations.
This is a terminal state.

=item *

Delivery Timed Out E<ndash> The value of C<MaxErrors> or more command
invocations shows a status of C<Delivery Timed Out>. This is a terminal
state.

=item *

Execution Timed Out E<ndash> The value of C<MaxErrors> or more command
invocations shows a status of C<Execution Timed Out>. This is a
terminal state.

=item *

Failed E<ndash> The value of C<MaxErrors> or more command invocations
shows a status of C<Failed>. This is a terminal state.

=item *

Incomplete E<ndash> The command was attempted on all instances and one
or more invocations does not have a value of C<Success> but not enough
invocations failed for the status to be C<Failed>. This is a terminal
state.

=item *

Canceled E<ndash> The command was terminated before it was completed.
This is a terminal state.

=item *

Rate Exceeded E<ndash> The number of instances targeted by the command
exceeded the account limit for pending invocations. The system has
canceled the command before executing it on any instance. This is a
terminal state.

=back



=head2 TargetCount => Int

  The number of targets for the command.


=head2 Targets => ArrayRef[L<Paws::SSM::Target>]

  An array of search criteria that targets instances using a
C<Key>,C<Value> combination that you specify. C<Targets> is required if
you don't provide one or more instance IDs in the call.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

