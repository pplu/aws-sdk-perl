
package Paws::SSM::SendCommand;
  use Moose;
  has Comment => (is => 'ro', isa => 'Str');
  has DocumentHash => (is => 'ro', isa => 'Str');
  has DocumentHashType => (is => 'ro', isa => 'Str');
  has DocumentName => (is => 'ro', isa => 'Str', required => 1);
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MaxConcurrency => (is => 'ro', isa => 'Str');
  has MaxErrors => (is => 'ro', isa => 'Str');
  has NotificationConfig => (is => 'ro', isa => 'Paws::SSM::NotificationConfig');
  has OutputS3BucketName => (is => 'ro', isa => 'Str');
  has OutputS3KeyPrefix => (is => 'ro', isa => 'Str');
  has OutputS3Region => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'Paws::SSM::Parameters');
  has ServiceRoleArn => (is => 'ro', isa => 'Str');
  has Targets => (is => 'ro', isa => 'ArrayRef[Paws::SSM::Target]');
  has TimeoutSeconds => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendCommand');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::SendCommandResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::SendCommand - Arguments for method SendCommand on Paws::SSM

=head1 DESCRIPTION

This class represents the parameters used for calling the method SendCommand on the 
Amazon Simple Systems Manager (SSM) service. Use the attributes of this class
as arguments to method SendCommand.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SendCommand.

As an example:

  $service_obj->SendCommand(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Comment => Str

User-specified information about the command, such as a brief
description of what the command should do.



=head2 DocumentHash => Str

The Sha256 or Sha1 hash created by the system when the document was
created.

Sha1 hashes have been deprecated.



=head2 DocumentHashType => Str

Sha256 or Sha1.

Sha1 hashes have been deprecated.

Valid values are: C<"Sha256">, C<"Sha1">

=head2 B<REQUIRED> DocumentName => Str

Required. The name of the SSM document to execute. This can be an SSM
public document or a custom document.



=head2 InstanceIds => ArrayRef[Str|Undef]

Required. The instance IDs where the command should execute. You can
specify a maximum of 50 IDs.



=head2 MaxConcurrency => Str

(Optional) The maximum number of instances that are allowed to execute
the command at the same time. You can specify a number such as
E<ldquo>10E<rdquo> or a percentage such as E<ldquo>10%E<rdquo>. The
default value is 50. For more information about how to use
C<MaxConcurrency>, see Executing a Command Using Amazon EC2 Run Command
(Linux) or Executing a Command Using Amazon EC2 Run Command (Windows).



=head2 MaxErrors => Str

The maximum number of errors allowed without the command failing. When
the command fails one more time beyond the value of C<MaxErrors>, the
systems stops sending the command to additional targets. You can
specify a number like E<ldquo>10E<rdquo> or a percentage like
E<ldquo>10%E<rdquo>. The default value is 50. For more information
about how to use C<MaxErrors>, see Executing a Command Using Amazon EC2
Run Command (Linux) or Executing a Command Using Amazon EC2 Run Command
(Windows).



=head2 NotificationConfig => L<Paws::SSM::NotificationConfig>

Configurations for sending notifications.



=head2 OutputS3BucketName => Str

The name of the S3 bucket where command execution responses should be
stored.



=head2 OutputS3KeyPrefix => Str

The directory structure within the S3 bucket where the responses should
be stored.



=head2 OutputS3Region => Str

(Optional) The region where the Amazon Simple Storage Service (Amazon
S3) output bucket is located. The default value is the region where Run
Command is being called.



=head2 Parameters => L<Paws::SSM::Parameters>

The required and optional parameters specified in the SSM document
being executed.



=head2 ServiceRoleArn => Str

The IAM role that Systems Manager uses to send notifications.



=head2 Targets => ArrayRef[L<Paws::SSM::Target>]

(Optional) An array of search criteria that targets instances using a
C<Key>;C<Value> combination that you specify. C<Targets> is required if
you don't provide one or more instance IDs in the call. For more
information about how to use C<Targets>, see Executing a Command Using
Amazon EC2 Run Command (Linux) or Executing a Command Using Amazon EC2
Run Command (Windows).



=head2 TimeoutSeconds => Int

If this time is reached and the command has not already started
executing, it will not execute.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SendCommand in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

