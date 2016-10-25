package Paws::SSM::Command;
  use Moose;
  has CommandId => (is => 'ro', isa => 'Str');
  has Comment => (is => 'ro', isa => 'Str');
  has DocumentName => (is => 'ro', isa => 'Str');
  has ExpiresAfter => (is => 'ro', isa => 'Str');
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NotificationConfig => (is => 'ro', isa => 'Paws::SSM::NotificationConfig');
  has OutputS3BucketName => (is => 'ro', isa => 'Str');
  has OutputS3KeyPrefix => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'Paws::SSM::Parameters');
  has RequestedDateTime => (is => 'ro', isa => 'Str');
  has ServiceRole => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
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

  $service_obj->Method(Att1 => { CommandId => $value, ..., Status => $value  });

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


=head2 DocumentName => Str

  The name of the SSM document requested for execution.


=head2 ExpiresAfter => Str

  If this time is reached and the command has not already started
executing, it will not execute. Calculated based on the ExpiresAfter
user input provided as part of the SendCommand API.


=head2 InstanceIds => ArrayRef[Str|Undef]

  The instance IDs against which this command was requested.


=head2 NotificationConfig => L<Paws::SSM::NotificationConfig>

  Configurations for sending notifications about command status changes.


=head2 OutputS3BucketName => Str

  The S3 bucket where the responses to the command executions should be
stored. This was requested when issuing the command.


=head2 OutputS3KeyPrefix => Str

  The S3 directory path inside the bucket where the responses to the
command executions should be stored. This was requested when issuing
the command.


=head2 Parameters => L<Paws::SSM::Parameters>

  The parameter values to be inserted in the SSM document when executing
the command.


=head2 RequestedDateTime => Str

  The date and time the command was requested.


=head2 ServiceRole => Str

  The IAM service role that SSM uses to act on your behalf when sending
notifications about command status changes.


=head2 Status => Str

  The status of the command.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

