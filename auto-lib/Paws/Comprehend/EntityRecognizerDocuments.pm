package Paws::Comprehend::EntityRecognizerDocuments;
  use Moose;
  has S3Uri => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::EntityRecognizerDocuments

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Comprehend::EntityRecognizerDocuments object:

  $service_obj->Method(Att1 => { S3Uri => $value, ..., S3Uri => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Comprehend::EntityRecognizerDocuments object:

  $result = $service_obj->Method(...);
  $result->Att1->S3Uri

=head1 DESCRIPTION

Describes the training documents submitted with an entity recognizer.

=head1 ATTRIBUTES


=head2 B<REQUIRED> S3Uri => Str

  Specifies the Amazon S3 location where the training documents for an
entity recognizer are located. The URI must be in the same region as
the API endpoint that you are calling.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

