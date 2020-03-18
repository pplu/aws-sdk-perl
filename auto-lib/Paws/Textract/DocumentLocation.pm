package Paws::Textract::DocumentLocation;
  use Moose;
  has S3Object => (is => 'ro', isa => 'Paws::Textract::S3Object');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Textract::DocumentLocation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Textract::DocumentLocation object:

  $service_obj->Method(Att1 => { S3Object => $value, ..., S3Object => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Textract::DocumentLocation object:

  $result = $service_obj->Method(...);
  $result->Att1->S3Object

=head1 DESCRIPTION

The Amazon S3 bucket that contains the document to be processed. It's
used by asynchronous operations such as StartDocumentTextDetection.

The input document can be an image file in JPEG or PNG format. It can
also be a file in PDF format.

=head1 ATTRIBUTES


=head2 S3Object => L<Paws::Textract::S3Object>

  The Amazon S3 bucket that contains the input document.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Textract>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

