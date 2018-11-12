package Paws::Rekognition::KinesisDataStream;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::KinesisDataStream

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::KinesisDataStream object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Arn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::KinesisDataStream object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

The Kinesis data stream Amazon Rekognition to which the analysis
results of a Amazon Rekognition stream processor are streamed. For more
information, see CreateStreamProcessor in the Amazon Rekognition
Developer Guide.

=head1 ATTRIBUTES


=head2 Arn => Str

  ARN of the output Amazon Kinesis Data Streams stream.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

