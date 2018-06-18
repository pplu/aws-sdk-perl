package Paws::SSM::CloudWatchOutputConfig;
  use Moose;
  has CloudWatchLogGroupName => (is => 'ro', isa => 'Str');
  has CloudWatchOutputEnabled => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::CloudWatchOutputConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::CloudWatchOutputConfig object:

  $service_obj->Method(Att1 => { CloudWatchLogGroupName => $value, ..., CloudWatchOutputEnabled => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::CloudWatchOutputConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->CloudWatchLogGroupName

=head1 DESCRIPTION

Configuration options for sending command output to CloudWatch Logs.

=head1 ATTRIBUTES


=head2 CloudWatchLogGroupName => Str

  The name of the CloudWatch log group where you want to send command
output. If you don't specify a group name, Systems Manager
automatically creates a log group for you. The log group uses the
following naming format: aws/ssm/I<SystemsManagerDocumentName>.


=head2 CloudWatchOutputEnabled => Bool

  Enables Systems Manager to send command output to CloudWatch Logs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

