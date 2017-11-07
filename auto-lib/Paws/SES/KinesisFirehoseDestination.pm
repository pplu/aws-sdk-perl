package Paws::SES::KinesisFirehoseDestination;
  use Moose;
  has DeliveryStreamARN => (is => 'ro', isa => 'Str', required => 1);
  has IAMRoleARN => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::KinesisFirehoseDestination

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SES::KinesisFirehoseDestination object:

  $service_obj->Method(Att1 => { DeliveryStreamARN => $value, ..., IAMRoleARN => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SES::KinesisFirehoseDestination object:

  $result = $service_obj->Method(...);
  $result->Att1->DeliveryStreamARN

=head1 DESCRIPTION

Contains the delivery stream ARN and the IAM role ARN associated with
an Amazon Kinesis Firehose event destination.

Event destinations, such as Amazon Kinesis Firehose, are associated
with configuration sets, which enable you to publish email sending
events. For information about using configuration sets, see the Amazon
SES Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html).

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeliveryStreamARN => Str

  The ARN of the Amazon Kinesis Firehose stream that email sending events
should be published to.


=head2 B<REQUIRED> IAMRoleARN => Str

  The ARN of the IAM role under which Amazon SES publishes email sending
events to the Amazon Kinesis Firehose stream.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

