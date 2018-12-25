package Paws::PinpointSMSVoice::CloudWatchLogsDestination;
  use Moose;
  has IamRoleArn => (is => 'ro', isa => 'Str');
  has LogGroupArn => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoice::CloudWatchLogsDestination

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PinpointSMSVoice::CloudWatchLogsDestination object:

  $service_obj->Method(Att1 => { IamRoleArn => $value, ..., LogGroupArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PinpointSMSVoice::CloudWatchLogsDestination object:

  $result = $service_obj->Method(...);
  $result->Att1->IamRoleArn

=head1 DESCRIPTION

An object that contains information about an event destination that
sends data to Amazon CloudWatch Logs.

=head1 ATTRIBUTES


=head2 IamRoleArn => Str

  The Amazon Resource Name (ARN) of an Amazon Identity and Access
Management (IAM) role that is able to write event data to an Amazon
CloudWatch destination.


=head2 LogGroupArn => Str

  The name of the Amazon CloudWatch Log Group that you want to record
events in.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PinpointSMSVoice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

