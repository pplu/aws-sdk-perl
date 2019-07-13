package Paws::PinpointSMSVoice::KinesisFirehoseDestination;
  use Moose;
  has DeliveryStreamArn => (is => 'ro', isa => 'Str');
  has IamRoleArn => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoice::KinesisFirehoseDestination

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PinpointSMSVoice::KinesisFirehoseDestination object:

  $service_obj->Method(Att1 => { DeliveryStreamArn => $value, ..., IamRoleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PinpointSMSVoice::KinesisFirehoseDestination object:

  $result = $service_obj->Method(...);
  $result->Att1->DeliveryStreamArn

=head1 DESCRIPTION

An object that contains information about an event destination that
sends data to Amazon Kinesis Data Firehose.

=head1 ATTRIBUTES


=head2 DeliveryStreamArn => Str

  The Amazon Resource Name (ARN) of an IAM role that can write data to an
Amazon Kinesis Data Firehose stream.


=head2 IamRoleArn => Str

  The Amazon Resource Name (ARN) of the Amazon Kinesis Data Firehose
destination that you want to use in the event destination.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PinpointSMSVoice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

