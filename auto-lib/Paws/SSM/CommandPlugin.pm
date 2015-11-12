package Paws::SSM::CommandPlugin;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has Output => (is => 'ro', isa => 'Str');
  has OutputS3BucketName => (is => 'ro', isa => 'Str');
  has OutputS3KeyPrefix => (is => 'ro', isa => 'Str');
  has ResponseCode => (is => 'ro', isa => 'Int');
  has ResponseFinishDateTime => (is => 'ro', isa => 'Str');
  has ResponseStartDateTime => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
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

  $service_obj->Method(Att1 => { Name => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::CommandPlugin object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Describes plugin details.

=head1 ATTRIBUTES


=head2 Name => Str

  The name of the plugin. Must be one of the following:
AWS-JoinDirectoryServiceDomain, AWS-InstallApplication,
AWS-RunPowerShellScript, AWS-InstallPowerShellModule,
AWS-ConfigureCloudWatch.


=head2 Output => Str

  Output of the plugin execution.


=head2 OutputS3BucketName => Str

  The S3 bucket where the responses to the command executions should be
stored. This was requested when issuing the command.


=head2 OutputS3KeyPrefix => Str

  The S3 directory path inside the bucket where the responses to the
command executions should be stored. This was requested when issuing
the command.


=head2 ResponseCode => Int

  A numeric response code generated after executing the plugin.


=head2 ResponseFinishDateTime => Str

  The time the plugin stopped executing. Could stop prematurely if, for
example, a cancel command was sent.


=head2 ResponseStartDateTime => Str

  The time the plugin started executing.


=head2 Status => Str

  The status of this plugin. You can execute a document with multiple
plugins.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

