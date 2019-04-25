package Paws::SSM::CommandPlugin;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has Output => (is => 'ro', isa => 'Str');
  has OutputS3BucketName => (is => 'ro', isa => 'Str');
  has OutputS3KeyPrefix => (is => 'ro', isa => 'Str');
  has OutputS3Region => (is => 'ro', isa => 'Str');
  has ResponseCode => (is => 'ro', isa => 'Int');
  has ResponseFinishDateTime => (is => 'ro', isa => 'Str');
  has ResponseStartDateTime => (is => 'ro', isa => 'Str');
  has StandardErrorUrl => (is => 'ro', isa => 'Str');
  has StandardOutputUrl => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusDetails => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::CommandPlugin

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::CommandPlugin object:

  $service_obj->Method(Att1 => { Name => $value, ..., StatusDetails => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::CommandPlugin object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Describes plugin details.

=head1 ATTRIBUTES


=head2 Name => Str

  The name of the plugin. Must be one of the following: aws:updateAgent,
aws:domainjoin, aws:applications, aws:runPowerShellScript,
aws:psmodule, aws:cloudWatch, aws:runShellScript, or
aws:updateSSMAgent.


=head2 Output => Str

  Output of the plugin execution.


=head2 OutputS3BucketName => Str

  The S3 bucket where the responses to the command executions should be
stored. This was requested when issuing the command. For example, in
the following response:

test_folder/ab19cb99-a030-46dd-9dfc-8eSAMPLEPre-Fix/i-1234567876543/awsrunShellScript

test_folder is the name of the Amazon S3 bucket;

ab19cb99-a030-46dd-9dfc-8eSAMPLEPre-Fix is the name of the S3 prefix;

i-1234567876543 is the instance ID;

awsrunShellScript is the name of the plugin.


=head2 OutputS3KeyPrefix => Str

  The S3 directory path inside the bucket where the responses to the
command executions should be stored. This was requested when issuing
the command. For example, in the following response:

test_folder/ab19cb99-a030-46dd-9dfc-8eSAMPLEPre-Fix/i-1234567876543/awsrunShellScript

test_folder is the name of the Amazon S3 bucket;

ab19cb99-a030-46dd-9dfc-8eSAMPLEPre-Fix is the name of the S3 prefix;

i-1234567876543 is the instance ID;

awsrunShellScript is the name of the plugin.


=head2 OutputS3Region => Str

  (Deprecated) You can no longer specify this parameter. The system
ignores it. Instead, Systems Manager automatically determines the
Amazon S3 bucket region.


=head2 ResponseCode => Int

  A numeric response code generated after executing the plugin.


=head2 ResponseFinishDateTime => Str

  The time the plugin stopped executing. Could stop prematurely if, for
example, a cancel command was sent.


=head2 ResponseStartDateTime => Str

  The time the plugin started executing.


=head2 StandardErrorUrl => Str

  The URL for the complete text written by the plugin to stderr. If
execution is not yet complete, then this string is empty.


=head2 StandardOutputUrl => Str

  The URL for the complete text written by the plugin to stdout in Amazon
S3. If the Amazon S3 bucket for the command was not specified, then
this string is empty.


=head2 Status => Str

  The status of this plugin. You can execute a document with multiple
plugins.


=head2 StatusDetails => Str

  A detailed status of the plugin execution. StatusDetails includes more
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
instance might not exist, or it might not be responding. Undeliverable
invocations don't count against the parent command's MaxErrors limit,
and they don't contribute to whether the parent command status is
Success or Incomplete. This is a terminal state.

=item *

Terminated: The parent command exceeded its MaxErrors limit and
subsequent command invocations were canceled by the system. This is a
terminal state.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

