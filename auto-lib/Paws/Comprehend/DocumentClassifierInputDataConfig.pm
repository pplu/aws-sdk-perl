package Paws::Comprehend::DocumentClassifierInputDataConfig;
  use Moose;
  has S3Uri => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::DocumentClassifierInputDataConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Comprehend::DocumentClassifierInputDataConfig object:

  $service_obj->Method(Att1 => { S3Uri => $value, ..., S3Uri => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Comprehend::DocumentClassifierInputDataConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->S3Uri

=head1 DESCRIPTION

The input properties for training a document classifier.

For more information on how the input file is formatted, see
how-document-classification-training-data.

=head1 ATTRIBUTES


=head2 B<REQUIRED> S3Uri => Str

  The Amazon S3 URI for the input data. The S3 bucket must be in the same
region as the API endpoint that you are calling. The URI can point to a
single input file or it can provide the prefix for a collection of
input files.

For example, if you use the URI C<S3://bucketName/prefix>, if the
prefix is a single file, Amazon Comprehend uses that file as input. If
more than one file begins with the prefix, Amazon Comprehend uses all
of them as input.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

