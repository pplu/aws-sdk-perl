package Paws::FraudDetector::ModelEndpointDataBlob;
  use Moose;
  has ByteBuffer => (is => 'ro', isa => 'Str', request_name => 'byteBuffer', traits => ['NameInRequest']);
  has ContentType => (is => 'ro', isa => 'Str', request_name => 'contentType', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::ModelEndpointDataBlob

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FraudDetector::ModelEndpointDataBlob object:

  $service_obj->Method(Att1 => { ByteBuffer => $value, ..., ContentType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FraudDetector::ModelEndpointDataBlob object:

  $result = $service_obj->Method(...);
  $result->Att1->ByteBuffer

=head1 DESCRIPTION

A pre-formed Amazon SageMaker model input you can include if your
detector version includes an imported Amazon SageMaker model endpoint
with pass-through input configuration.

=head1 ATTRIBUTES


=head2 ByteBuffer => Str

  The byte buffer of the Amazon SageMaker model endpoint input data blob.


=head2 ContentType => Str

  The content type of the Amazon SageMaker model endpoint input data
blob.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

