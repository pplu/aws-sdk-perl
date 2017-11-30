package Paws::Comprehend::InputDataConfig;
  use Moose;
  has InputFormat => (is => 'ro', isa => 'Str');
  has S3Uri => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::InputDataConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Comprehend::InputDataConfig object:

  $service_obj->Method(Att1 => { InputFormat => $value, ..., S3Uri => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Comprehend::InputDataConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->InputFormat

=head1 DESCRIPTION

The input properties for a topic detection job.

=head1 ATTRIBUTES


=head2 InputFormat => Str

  Specifies how the text in an input file should be processed:

=over

=item *

C<ONE_DOC_PER_FILE> - Each file is considered a separate document. Use
this option when you are processing large documents, such as newspaper
articles or scientific papers.

=item *

C<ONE_DOC_PER_LINE> - Each line in a file is considered a separate
document. Use this option when you are processing many short documents,
such as text messages.

=back



=head2 B<REQUIRED> S3Uri => Str

  The Amazon S3 URI for the input data. The URI must be in same region as
the API endpoint that you are calling. The URI can point to a single
input file or it can provide the prefix for a collection of data files.

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

