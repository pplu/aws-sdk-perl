package Paws::Rekognition::StreamProcessorOutput;
  use Moose;
  has KinesisDataStream => (is => 'ro', isa => 'Paws::Rekognition::KinesisDataStream');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::StreamProcessorOutput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::StreamProcessorOutput object:

  $service_obj->Method(Att1 => { KinesisDataStream => $value, ..., KinesisDataStream => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::StreamProcessorOutput object:

  $result = $service_obj->Method(...);
  $result->Att1->KinesisDataStream

=head1 DESCRIPTION

Information about the Amazon Kinesis Data Streams stream to which a
Amazon Rekognition Video stream processor streams the results of a
video analysis. For more information, see CreateStreamProcessor in the
Amazon Rekognition Developer Guide.

=head1 ATTRIBUTES


=head2 KinesisDataStream => L<Paws::Rekognition::KinesisDataStream>

  The Amazon Kinesis Data Streams stream to which the Amazon Rekognition
stream processor streams the analysis results.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

