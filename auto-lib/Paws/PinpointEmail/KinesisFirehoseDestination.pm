package Paws::PinpointEmail::KinesisFirehoseDestination;
  use Moose;
  has DeliveryStreamArn => (is => 'ro', isa => 'Str', required => 1);
  has IamRoleArn => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::KinesisFirehoseDestination

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PinpointEmail::KinesisFirehoseDestination object:

  $service_obj->Method(Att1 => { DeliveryStreamArn => $value, ..., IamRoleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PinpointEmail::KinesisFirehoseDestination object:

  $result = $service_obj->Method(...);
  $result->Att1->DeliveryStreamArn

=head1 DESCRIPTION

An object that defines an Amazon Kinesis Data Firehose destination for
email events. You can use Amazon Kinesis Data Firehose to stream data
to other services, such as Amazon S3 and Amazon Redshift.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeliveryStreamArn => Str

  The Amazon Resource Name (ARN) of the Amazon Kinesis Data Firehose
stream that Amazon Pinpoint sends email events to.


=head2 B<REQUIRED> IamRoleArn => Str

  The Amazon Resource Name (ARN) of the IAM role that Amazon Pinpoint
uses when sending email events to the Amazon Kinesis Data Firehose
stream.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PinpointEmail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

