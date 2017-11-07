package Paws::Pinpoint::WriteEventStream;
  use Moose;
  has DestinationStreamArn => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::WriteEventStream

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::WriteEventStream object:

  $service_obj->Method(Att1 => { DestinationStreamArn => $value, ..., RoleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::WriteEventStream object:

  $result = $service_obj->Method(...);
  $result->Att1->DestinationStreamArn

=head1 DESCRIPTION

Request to save an EventStream.

=head1 ATTRIBUTES


=head2 DestinationStreamArn => Str

  The Amazon Resource Name (ARN) of the Amazon Kinesis stream or Firehose
delivery stream to which you want to publish events. Firehose ARN:
arn:aws:firehose:REGION:ACCOUNT_ID:deliverystream/STREAM_NAME Kinesis
ARN: arn:aws:kinesis:REGION:ACCOUNT_ID:stream/STREAM_NAME


=head2 RoleArn => Str

  The IAM role that authorizes Amazon Pinpoint to publish events to the
stream in your account.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

